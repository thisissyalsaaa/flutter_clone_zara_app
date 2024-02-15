import 'package:flutter/material.dart';
import 'package:flutter_clone_zara_app/app/config/routers/app_routes.dart';
import 'package:go_router/go_router.dart';

class MenuWomanWidget extends StatelessWidget {
  const MenuWomanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Wrap(
            spacing: 14,
            runSpacing: 12,
            children: MenuWomanTop.values
                .map((e) => InkWell(
                      onTap: () {
                        context.goNamed(AppRoutes.womanProducts.name);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.5)),
                        child: Text(e.name),
                      ),
                    ))
                .toList(),
          ),
          const SizedBox(
            height: 32,
          ),
          Wrap(
            spacing: 14,
            runSpacing: 12,
            alignment: WrapAlignment.end,
            children: MenuWoman.values
                .map((e) => InkWell(
                      onTap: () {
                        context.goNamed(AppRoutes.womanProducts.name);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.5)),
                        child: Text(e.name),
                      ),
                    ))
                .toList(),
          ),
          const SizedBox(
            height: 32,
          ),
          Wrap(
            spacing: 14,
            runSpacing: 12,
            alignment: WrapAlignment.end,
            children: MenuWoman.values
                .map((e) => Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(border: Border.all(width: 0.5)),
                      child: Text(e.name),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

enum MenuWomanTop {
  news,
  studio,
}

enum MenuWoman {
  party,
  puffers,
  coats,
  jackets,
  blazers,
  vests,
  dresses,
  cardigans,
  tops,
  knitwear,
  shirt,
  tshirt,
  sweatshirts,
  pants,
  jeans,
  skirts,
  shoes,
  bags,
  accessories,
  fragrance,
}

extension MenuWomenTopExtension on MenuWomanTop {
  String get name {
    switch (this) {
      case MenuWomanTop.news:
        return 'NEW';
      case MenuWomanTop.studio:
        return 'STUDIO COLLECTION';
      default:
        return '';
    }
  }
}

extension MenuWomenExtension on MenuWoman {
  String get name {
    switch (this) {
      case MenuWoman.party:
        return 'PARTY';
      case MenuWoman.puffers:
        return 'PUFFERS';
      case MenuWoman.coats:
        return 'COATS';
      case MenuWoman.jackets:
        return 'JACKETS | BOMBER JACKETS';
      case MenuWoman.blazers:
        return 'BLAZERS';
      case MenuWoman.vests:
        return 'VESTS';
      case MenuWoman.dresses:
        return 'DRESSES | JUMPSUITS';
      case MenuWoman.cardigans:
        return 'CARDIGANS | SWEATERS';
      case MenuWoman.tops:
        return 'TOPS | BODYSUITS';
      case MenuWoman.knitwear:
        return 'KNITWEAR';
      case MenuWoman.shirt:
        return 'SHIRTS | BLOUSE';
      case MenuWoman.tshirt:
        return 'T-SHIRTS';
      case MenuWoman.sweatshirts:
        return 'SWEATSHIRTS';
      case MenuWoman.pants:
        return 'PANTS';
      case MenuWoman.jeans:
        return 'JEANS';
      case MenuWoman.skirts:
        return 'SKIRTS | SHORTS';
      case MenuWoman.shoes:
        return 'SHOES';
      case MenuWoman.bags:
        return 'BAGS';
      case MenuWoman.accessories:
        return 'ACCESSORIES | JEWELRY';
      case MenuWoman.fragrance:
        return 'FRAGRANCE';
      default:
        return '';
    }
  }
}
