import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/utility/spacing.dart';
import 'loading_and_no_more_widget.dart';
import '../../../../../core/assets_constants.dart';
import '../../../../../core/config/app_information.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/widgets/filtred_image_widget.dart';
import '../../manager/home_cubit/home_cubit.dart';
import 'character_sliver_grid.dart';
import 'custom_fab_location.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  late HomeCubit _homeCubit;

  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _homeCubit = context.read<HomeCubit>();
    _homeCubit.fetchCharacters();
  }

  @override
  void dispose() {
    _homeCubit.close();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<HomeCubit>().fetchCharacters();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppInformation.title, style: context.big22TitlesW600),
        centerTitle: true,
        backgroundColor: AppPallete.scaffold,
      ),
      floatingActionButtonLocation: CustomFabLocation(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _homeCubit.resetState();
          _homeCubit.fetchCharacters();
        },
        backgroundColor: AppPallete.primary,
        child: const Icon(Icons.refresh, color: AppPallete.white), // Add this line
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomScrollView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            slivers: [
              // const SliverToBoxAdapter(child: HomeAppBar()),
              SliverToBoxAdapter(child: verticalSpace(10)),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SliverToBoxAdapter(child: Center(child: Text('Press button to load characters'))),
                    loading: () => const SliverToBoxAdapter(
                      child: SizedBox(height: 650, width: 200, child: Center(child: CircularProgressIndicator())),
                    ),
                    loaded: (characters, isLoading, hasReachedMax) => SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      sliver: CharacterSliverGrid(characters: characters),
                    ),
                    failure: (errorMsg) => SliverToBoxAdapter(
                      child: FiltredImageWidget(imagePath: AssetsConstants.noContentImage, msg: 'Error: $errorMsg'),
                    ),
                  );
                },
              ),
              const LoadingAndNoMoreWidget(),
              SliverToBoxAdapter(child: verticalSpace(100)),
            ],
          ),
        ),
      ),
    );
  }
}
