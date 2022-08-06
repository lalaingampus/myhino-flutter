import 'package:flutter/material.dart';

class BeritaItem {
  final String urlImage;
  final String title;
  final String subTitle;

  const BeritaItem({
    required this.urlImage,
    required this.title,
    required this.subTitle,
  });
}

class BeritaPromosiSection extends StatelessWidget {
  BeritaPromosiSection({Key? key}) : super(key: key);
  List<BeritaItem> berita = [
    BeritaItem(
      urlImage: 'assets/mobile/images/avatar.png',
      subTitle: '28 April 2021',
      title: 'Hino Sistem Common Rail Efisien',
    ),
    BeritaItem(
      urlImage: 'assets/mobile/images/avatar.png',
      subTitle: '28 April 2021',
      title: 'Hino Sistem Common Rail Efisien',
    ),
    BeritaItem(
      urlImage: 'assets/mobile/images/avatar.png',
      subTitle: '28 April 2021',
      title: 'Hino Sistem Common Rail Efisien',
    ),
    BeritaItem(
      urlImage: 'assets/mobile/images/avatar.png',
      subTitle: '28 April 2021',
      title: 'Hino Sistem Common Rail Efisien',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 230,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Berita & Promosi",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Lihat Semua",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 180,
                  child: ListView.separated(
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    separatorBuilder: (context, _) => SizedBox(width: 12),
                    itemBuilder: (context, index) =>
                        beritaCard(itemBerita: berita[index]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget beritaCard({
    required BeritaItem itemBerita,
  }) =>
      Container(
        width: 140,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 3.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    itemBerita.urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              itemBerita.subTitle,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 10),
            ),
            const SizedBox(height: 5),
            Text(
              itemBerita.title,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
}
