import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hero_hub/core/utility/spacing.dart';
import '../../../data/models/character.dart';
import '../../manager/home_cubit/home_cubit.dart';
import '../character_detail_screen.dart';
import 'home_app_bar.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
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
              const SliverToBoxAdapter(child: HomeAppBar()),
              SliverToBoxAdapter(child: verticalSpace(10)),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SliverToBoxAdapter(
                      child: Center(child: Text('Press button to load characters')),
                    ),
                    loading: () => const SliverToBoxAdapter(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    loaded: (characters) => SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      sliver: _buildCharacterGrid(characters),
                    ),
                    failure: (errorMsg) => SliverToBoxAdapter(
                      child: Center(child: Text('Error: $errorMsg')),
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
          return _buildCharacterCard(context, character);
        },
        childCount: characters.length,
      ),
    );
  }

  Widget _buildCharacterCard(BuildContext context, Character character) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterDetailScreen(character: character),
          ),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                child: Image.network(
                  '${character.thumbnail.path}.${character.thumbnail.extension}',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Center(child: Icon(Icons.error)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                character.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
