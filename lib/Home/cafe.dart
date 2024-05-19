import 'package:cafeteria/Home/Home_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../cafe/widget/items.widget.dart';

class Menuscreen extends StatefulWidget {
  const Menuscreen({super.key});
  @override
  State<Menuscreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<Menuscreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handletabSelection);
    super.initState();
  }

  _handletabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.only(top: 15),
              child: ListView(children: [
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.sort_rounded,
                          color: Colors.white.withOpacity(0.5),
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text("Hoje é um lindo dia para tomar café",
                      style: TextStyle(
                        color: Color.fromARGB(255, 34, 34, 34),
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 65, 65, 65)),
                  alignment: Alignment.center,
                  child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "encontre seu café aqui",
                          hintStyle: TextStyle(
                              color: const Color.fromARGB(255, 15, 15, 15)
                                  .withOpacity(0.5)))),
                ),
                TabBar(
                  controller: _tabController,
                  labelColor: Color(0xffe57734),
                  unselectedLabelColor: Colors.white.withOpacity(0),
                  isScrollable: true,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Color(0xffe55734),
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  labelStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  labelPadding: EdgeInsetsDirectional.symmetric(horizontal: 15),
                  tabs: [
                    Tab(text: "café frio"),
                    Tab(text: "café expresso"),
                    Tab(text: "capuccino"),
                    Tab(text: "café quente"),
                  ],
                ),
                SizedBox(height: 15),
                Center(
                  child: [
                    ItemsWidget(),
                    ItemsWidget(),
                    ItemsWidget(),
                    ItemsWidget(),
                  ][_tabController.index],
                ),
              ]))),
      bottomNavigationBar: HomebottomBar(),
    );
  }
}
