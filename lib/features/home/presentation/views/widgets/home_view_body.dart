import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hero_hub/core/extensions/context_extension.dart';
import 'package:hero_hub/core/utility/spacing.dart';
import '../../../../../core/assets_constants.dart';
import '../../../../../core/config/app_information.dart';
import '../../../../../core/theme/app_pallete.dart';
import '../../../../../core/widgets/filtred_image_widget.dart';
import '../../../data/models/character.dart';
import '../../manager/home_cubit/home_cubit.dart';
import 'character_card.dart';

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
    // _scrollController.addListener(_onScroll);
    _homeCubit = context.read<HomeCubit>();
    _homeCubit.fetchCharacters();
  }

  @override
  void dispose() {
    _homeCubit.close();
    _scrollController.dispose();
    super.dispose();
  }

  // void _onScroll() {
  //   if (_isBottom) context.read<HomeCubit>().fetchCharacters();
  // }

  // bool get _isBottom {
  //   if (!_scrollController.hasClients) return false;
  //   final maxScroll = _scrollController.position.maxScrollExtent;
  //   final currentScroll = _scrollController.offset;
  //   return currentScroll >= (maxScroll * 0.9);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppInformation.title, style: context.big22TitlesW600),
        centerTitle: true,
        backgroundColor: AppPallete.scaffold,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<HomeCubit>().fetchCharacters(),
        child: const Icon(Icons.refresh, color: Colors.red),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              // const SliverToBoxAdapter(child: HomeAppBar()),
              SliverToBoxAdapter(child: verticalSpace(10)),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SliverToBoxAdapter(child: Center(child: Text('Press button to load characters'))),
                    loading: () => const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())),
                    loaded: (characters) => SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      sliver: _buildCharacterGrid(characters),
                    ),
                    failure: (errorMsg) => SliverToBoxAdapter(
                      child: FiltredImageWidget(imagePath: AssetsConstants.noContentImage, msg: 'Error: $errorMsg'),
                    ),
                  );
                },
              ),
              SliverToBoxAdapter(child: verticalSpace(100)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCharacterGrid(List<Character> characters) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final character = characters[index];
          return CharacterCard(character: character);
        },
        childCount: characters.length,
      ),
    );
  }
}
