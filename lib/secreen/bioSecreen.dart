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
        ),
        actions: [
          Icon(Icons.more_vert),
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
              Text('HadeelSh',
                style: TextStyle(
                    fontSize: 20 ,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontFamily: 'SourceSerifPro'
                ),
              ),
              SizedBox(height: 5),
              Text('hadeelsh4@gmail.com',
                style:TextStyle(
                    color: Colors.blueGrey,
                    letterSpacing: 1,
                    fontSize: 16
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.white,
                indent: 40,
                endIndent: 40,
                height: 30,

              ),
              BioCarde(leadingIcon: Icons.person,
                title: 'Full Name',
                subTitle: 'Hadeel Essam Subeih',
                TreainingIcon: Icons.edit,
                onPressed: (){},

              ),
              BioCarde(leadingIcon: Icons.book_online,
                title: 'Course Name',
                subTitle: 'Flutter',
                TreainingIcon: Icons.library_books,
                onPressed: (){},

              ),
              BioCarde(leadingIcon: Icons.email,
                title: 'Email',
                subTitle: 'HadeelSubeih4@gmail.com',
                TreainingIcon: Icons.send,
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
                child: Text('hADEELSH@'),
              ),
           

            ],

          )

        ],


      ),

    );
  }
}
