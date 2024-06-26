import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../manager/home_cubit/home_cubit.dart';

class LoadingAndNoMoreWidget extends StatelessWidget {
  const LoadingAndNoMoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (_, isLoading, hasReachedMax) => SliverToBoxAdapter(
            child: Column(
              children: [
                if (isLoading)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(),
                    ),
                  ),
                if (hasReachedMax)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('No more characters to load'),
                    ),
                  ),
              ],
            ),
          ),
          orElse: () => const SliverToBoxAdapter(child: SizedBox.shrink()),
        );
      },
    );
  }
}
