import 'package:bioappputyournamehere/widdget/card.dart';
import 'package:flutter/material.dart';

void main()=>runApp(BioSecreen());
class BioSecreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        leading: Icon(
          Icons.arrow_back_ios,
          size:24,
          color: Colors.amber,
        ),
        actions: [
          Icon(Icons.more_vert,color: Colors.amber,
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/hh.jpg'),
              ),
              SizedBox(height: 5),

              Text('HadeelSh',
                style: TextStyle(
                    fontSize: 20 ,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: 'SourceSerifPro'
                ),
              ),
              SizedBox(height: 10),
              Text('hadeelsh4@gmail.com',
                style:TextStyle(
                    color: Colors.blueGrey,
                    letterSpacing: 1,
                    fontSize: 16
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.amber,
                indent: 40,
                endIndent: 40,
                height: 30,



              ),
              BioCarde(leadingIcon: Icons.person,
                title: 'Full Name',
                subTitle: 'Hadeel Essam Subeih',
                TreainingIcon: Icons.edit,
                marginBo: 10,
                onPressed: (){},

              ),
              BioCarde(leadingIcon: Icons.book_online,
                title: 'Course Name',
                subTitle: 'Flutter',
                TreainingIcon: Icons.library_books,
                marginBo: 10,

                onPressed: (){},

              ),
              BioCarde(leadingIcon: Icons.email,
                title: 'Email',
                subTitle: 'HadeelSubeih4@gmail.com',
                TreainingIcon: Icons.send,
                marginBo: 10,
                onPressed: (){},

              ),
              BioCarde(leadingIcon: Icons.phone_android,
                title: 'Mobile',
                subTitle: '0598063768',
                TreainingIcon: Icons.phone,
                onPressed: (){},

              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text('HADEELSH@2000' ,style: TextStyle(color: Colors.blueGrey),),
              ),
           

            ],

          )

        ],


      ),

    );
  }
}

