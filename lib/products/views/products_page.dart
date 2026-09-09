import 'package:flutter/material.dart';
import 'package:maash_online_shopping_app/theme/app_colors.dart';
import 'package:maash_online_shopping_app/theme/app_spacing.dart';
import 'package:maash_online_shopping_app/theme/app_text_styles.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ['New In', 'Men', 'Women', 'Accessories', 'Electronics'];
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // AppBar
            SliverAppBar(
              backgroundColor: AppColors.white,
              surfaceTintColor: AppColors.white,
              elevation: 0,
              floating: true,
              snap: true,
              pinned: false,
              expandedHeight: 140,

              flexibleSpace: FlexibleSpaceBar(
                background: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                      AppSpacing.md,
                      AppSpacing.md,
                      AppSpacing.md,
                      AppSpacing.sm,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'MAASH',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 3,
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.search),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.shopping_bag_outlined),
                                ),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(height: AppSpacing.sm),

                        Container(
                          height: 48,
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppSpacing.md,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.background,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Row(
                            children: [
                              Icon(Icons.search, size: 20),
                              SizedBox(width: AppSpacing.sm),
                              Expanded(
                                child: Text(
                                  'Search brands, products and more',
                                  style: AppTextStyles.body,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Category List
            SliverToBoxAdapter(
              child: SizedBox(
                height: 64,
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.md,
                    vertical: AppSpacing.md,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  separatorBuilder: (_, _) =>
                      const SizedBox(width: AppSpacing.sm),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.md,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: index == 0 ? AppColors.black : AppColors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.border),
                      ),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: index == 0 ? AppColors.white : AppColors.black,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsetsGeometry.fromLTRB(
                  AppSpacing.md,
                  AppSpacing.md,
                  AppSpacing.md,
                  AppSpacing.sm,
                ),
                child: Text('New arrivals', style: AppTextStyles.headingMedium),
              ),
            ),

            SliverPadding(
              padding: const EdgeInsets.all(AppSpacing.md),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return const _ProductPlaceholderCard();
                }, childCount: 6),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: AppSpacing.sm,
                  mainAxisSpacing: AppSpacing.lg,
                  childAspectRatio: 0.62,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductPlaceholderCard extends StatelessWidget {
  const _ProductPlaceholderCard();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(
                  Icons.image_outlined,
                  size: 48,
                  color: AppColors.textSecondary,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.favorite_border, size: 18),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        const Text('MAASH SELECT', style: AppTextStyles.label),
        const SizedBox(height: 3),
        const Text(
          'Essential everyday product',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.productTitle,
        ),
        const SizedBox(height: 4),
        const Text('R 699', style: AppTextStyles.price),
      ],
    );
  }
}
