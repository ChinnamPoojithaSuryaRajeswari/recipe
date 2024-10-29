import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:recipe/data/data.dart";
import "package:recipe/providers/chnages.dart";
import "package:recipe/screens/favourites.dart";
import "package:recipe/screens/reciepeDisplayScreen.dart";
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Reciepe App"),actions: [IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>FavScreen()));
      }, icon: Icon(Icons.favorite,color: Colors.red,))],),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder:(context,index){
        return Consumer<changesProvider>(builder: (context,value,child){
          return GestureDetector(
          onTap: (){
            value.setIndex(index);
            Navigator.push(context, MaterialPageRoute(builder: (comtext)=>recpirDsply()));
            },
          child: Container(
            margin: EdgeInsets.all(10),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Color(categories[index].color),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(child: Text(categories[index].name),),
          ),
        );
        });
      },itemCount: categories.length,)
    );
  }
}