
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomadda/config/images.dart';
import 'package:roomadda/controller/authController.dart';
import 'package:roomadda/controller/profileController.dart';
import 'package:roomadda/pages/profile/editProfile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  AuthController authController = Get.put(AuthController());
  ProfileController profileController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 310,
            // color: Colors.black,
            child: Center(
              child: Stack(
                children: [
                  Container(
                      height: 150,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.elliptical(50, 50),
                            bottomLeft: Radius.elliptical(50, 50),
                          )),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Profile",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                          )
                        ],
                      )),
                  Center(
                    child: Stack(children: [
                      Container(
                        height: 120,
                        width: MediaQuery.sizeOf(context).width / 1.6,
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(AssetsImage.room),
                            )),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 55,
                          child: ClipOval(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: InkWell(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.edit_outlined,
                                    size: 20,
                                  )),
                            ),
                          ))
                    ]),
                  ),
                  Positioned(
                      // top: 10,
                      bottom: 40,
                      left: MediaQuery.sizeOf(context).width / 8,
                      right: MediaQuery.sizeOf(context).width / 8,
                      child: Center(
                          child: Text(
                        profileController.currentUser.value.name.toString(),
                        style: const TextStyle(fontSize: 30, color: Colors.green),
                      )))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Container(
              padding: const EdgeInsets.only(top: 5, left: 25),
              width: MediaQuery.sizeOf(context).width,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.black),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      const Icon(Icons.person_outline),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {
                            Get.to(const EditProfile());
                          },
                          child: const Text(
                            "Edit Profile",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      const Icon(Icons.notifications_none_outlined),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Notification",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      const Icon(Icons.analytics),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Recent View",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      const Icon(Icons.help_outline),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Get Help",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    direction: Axis.horizontal,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      const Icon(Icons.logout_outlined),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {
                            authController.logoutUser();
                          },
                          child: const Text(
                            "Logout",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}