import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/screens/add_task.dart';
import 'package:flutter_golang_yt/widgets/button_widget.dart';
import 'package:get/get.dart';
import 'all_tasks.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(text: TextSpan(
              text: "Hello",
              style: TextStyle(
                 color: AppColors.mainColor,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                    text: "\n Start your beautiful day!",
                    style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,

                    ))]
            )),
            SizedBox(height: MediaQuery.of(context).size.height/2.5,),
            InkWell(
              onTap: (){
                Get.to(()=>AddTask(), transition: Transition.fade, duration: const Duration(milliseconds: 500));
              },
                child: ButtonWidget(backgroundcolor: AppColors.mainColor, text: "Add Task", textColor: Colors.white)),
            const SizedBox(height: 18,),
            InkWell(
              onTap: (){
                Get.to(()=>const AllTasks(), transition: Transition.fade, duration: const Duration(milliseconds: 500));
              },
                child: ButtonWidget(backgroundcolor: Colors.white, text: "View All", textColor: AppColors.mainColor))
            
          ],
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/welcome.jpg"
            )
          )
        ),

      ),
    );
  }
}
