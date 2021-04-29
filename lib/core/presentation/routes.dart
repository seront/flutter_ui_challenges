import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/data/models/menu.dart';
import 'package:flutter_ui_challenges/src/furniture_app/furniture_app.dart';
import 'package:flutter_ui_challenges/src/khalti_clone/main.dart';
import 'package:flutter_ui_challenges/src/nic_asia_clone/nic_asia_app.dart';



import 'package:flutter_ui_challenges/src/pages/misc/bottomsheet.dart';
import 'package:flutter_ui_challenges/src/pages/misc/crop.dart';

import 'package:flutter_ui_challenges/src/pages/misc/image_popup.dart';
import 'package:flutter_ui_challenges/src/pages/misc/musicplayer.dart';
import 'package:flutter_ui_challenges/src/pages/misc/musicplayer2.dart';


import 'package:flutter_ui_challenges/src/pages/misc/chat2.dart';

import 'package:flutter_ui_challenges/src/pages/misc/chatui.dart';


import 'package:flutter_ui_challenges/src/pages/misc/sliders.dart';


import 'package:flutter_ui_challenges/src/pages/misc/loaders.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/ghome.dart';


import 'package:flutter_ui_challenges/src/pages/dialogs/dialogs.dart';




import 'package:flutter_ui_challenges/src/pages/misc/sliver_appbar.dart';
import 'package:flutter_ui_challenges/src/pages/misc/form_elements.dart';


import 'package:flutter_ui_challenges/src/pages/misc/springy_slider_page.dart';


final List<dynamic> pages = [

  MenuItem(
      title: "UI Kits (Clones)",
      items: [
        SubMenuItem('Khalti App', KhaltiApp(), path: KhaltiApp.path),
        SubMenuItem("Grocery UI Kit", GroceryHomePage(),
            path: GroceryHomePage.path),
        SubMenuItem("Bank App Clone", NicAsiaApp(), path: NicAsiaApp.path),
        SubMenuItem("Furniture App", FurnitureApp(), path: FurnitureApp.path),
      ],
      icon: Icons.account_balance_wallet),
  MenuItem(title: "Miscellaneous", items: [
    SubMenuItem('Image/Widget Crop', CropPage(),
        path: CropPage.path, icon: Icons.crop),
    SubMenuItem("Music Player Two", MusicPlayerTwoPage(),
        path: MusicPlayerTwoPage.path),
    SubMenuItem("Image Popup", ImagePopupPage(), path: ImagePopupPage.path),
    SubMenuItem("Chat Messaages", ChatTwoPage(), path: ChatTwoPage.path),
    SubMenuItem("Form Elements", FormElementPage(), path: FormElementPage.path),
    SubMenuItem("Sliders", SlidersPage(), path: SlidersPage.path),
    SubMenuItem("Alert Dialogs", DialogsPage(), path: DialogsPage.path),
    SubMenuItem("Springy Slider", SpringySliderPage(),
        path: SpringySliderPage.path),
    SubMenuItem("Sliver App Bar", SliverAppbarPage(),
        path: SliverAppbarPage.path),
    SubMenuItem("Loaders", LoadersPage(), path: LoadersPage.path),
    SubMenuItem("ChatUi", ChatUi(), path: ChatUi.path),
    SubMenuItem('Bottomsheet', BottomSheetAwesome(),
        path: BottomSheetAwesome.path),
    SubMenuItem('Music player', MusicPlayer(), path: MusicPlayer.path),
  ]),
];

SubMenuItem getItemForKey(String key) {
  SubMenuItem item;
  List<dynamic> pag = List<dynamic>.from(pages);
  pag.forEach((page) {
    if (page is SubMenuItem && page.title == key) {
      item = page;
    } else if (page is MenuItem) {
      page.items.forEach((sub) {
        if (sub.title == key) item = sub;
      });
    }
  });
  return item;
}
