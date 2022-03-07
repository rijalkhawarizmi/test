import 'package:flutter/material.dart';
import 'package:mobile_test/models.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 70),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Rijal',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        Text(
                          'What are you learning today ?',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.white, width: 3),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://img.icons8.com/external-victoruler-linear-colour-victoruler/344/external-boy-people-victoruler-linear-colour-victoruler.png'))),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.grey.shade800],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade900,
                ),
                width: double.infinity,
                child: TextFormField(
                  
                  decoration: InputDecoration(
                    border: InputBorder.none,
                      hintText: 'Search Courses ,Educators...',
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade600,
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.grey.shade900],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    DefaultTabController(
                      length: 2, // length of tabs
                      initialIndex: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 80),
                            child: TabBar(
                              labelPadding: EdgeInsets.only(right: 24),
                              indicator: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      color: Colors.white, width: 3.0),
                                ),
                              ),
                              
                              indicatorColor: Colors.white,
                              labelColor: Colors.white,
                              labelStyle: TextStyle(
                                
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                              unselectedLabelColor: Colors.grey.shade700,
                              tabs: [
                                Tab(
                                  text: 'My Courses',
                                ),
                                Tab(text: 'Trending'),
                              ],
                            ),
                          ),
                          Container(
                            height: 220, //height of TabBarView
                            child: TabBarView(
                              children: <Widget>[
                                Container(
                                    child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: listModels.length,
                                  itemBuilder: (c, i) {
                                    final item = listModels[i];
                                    return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.grey.shade900,
                                      ),
                                      margin: EdgeInsets.only(left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 10),
                                            height: 120,
                                            width: 200,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: NetworkImage(
                                                        '${item.image}'))),
                                          ),
                                          Text(
                                            '${item.title}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            '${item.author}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                )),
                                Container(
                                    child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: listModels.length,
                                  itemBuilder: (c, i) {
                                    final item = listTrendingModels[i];
                                    return Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(bottom: 10),
                                            height: 120,
                                            width: 200,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: NetworkImage(
                                                        '${item.image}'))),
                                          ),
                                          Text(
                                            '${item.title}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25),
                                          ),
                                          SizedBox(
                                            height: 6,
                                          ),
                                          Text(
                                            '${item.author}',
                                            style: TextStyle(
                                                color: Colors.grey.shade400,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Top Educators',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 220,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listAuthors.length,
                        itemBuilder: (c, i) {
                          final item = listAuthors[i];
                          return Container(
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade900,
                            ),
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(50),
                                      image: DecorationImage(
                                          image:
                                              NetworkImage('${item.image}'))),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '${item.author}',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                Text(
                                  'Courses',
                                  style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 10),
                                ),
                                Icon(Icons.keyboard_arrow_down_rounded,
                                    color: Colors.grey.shade600)
                              ],
                            ),
                          );
                        },
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
