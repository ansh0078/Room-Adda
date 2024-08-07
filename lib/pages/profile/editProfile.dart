
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roomadda/widgets/primaryBtn.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isEdit = false.obs;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 0.5),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(
                              () => isEdit.value
                                  ? InkWell(
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        // imagePath.value = await imagePickerController.pickImage(ImageSource.gallery);
                                      },
                                      child: Container(
                                          height: 200,
                                          width: 200,
                                          decoration: BoxDecoration(
                                            color: Theme.of(context).colorScheme.primary,
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          // child: imagePath.value == ""
                                          //     ?
                                          child: const Icon(
                                            Icons.add,
                                          )
                                          // : ClipRRect(
                                          //     borderRadius: BorderRadius.circular(100),
                                          //     child: Image.file(
                                          //       File(imagePath.value),
                                          //       fit: BoxFit.cover,
                                          //     ),
                                          //   ),
                                          ),
                                    )
                                  : Container(
                                      height: 200,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).colorScheme.primary,
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                      child:
                                          // profileController.currentUser.value.profileImage == null || profileController.currentUser.value.profileImage == ""
                                          //     ?
                                          const Icon(
                                        Icons.image,
                                      )
                                      // : ClipRRect(
                                      //     borderRadius: BorderRadius.circular(100),
                                      //     child: CachedNetworkImage(
                                      //       imageUrl: profileController.currentUser.value.profileImage!,
                                      //       fit: BoxFit.cover,
                                      //       placeholder: (context, url) => CircularProgressIndicator(),
                                      //       errorWidget: (context, url, error) => Icon(Icons.error),
                                      //     ),
                                      //   ),
                                      ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Obx(
                          () => TextField(
                            // controller: name,
                            enabled: isEdit.value,
                            decoration: InputDecoration(
                              filled: isEdit.value,
                              labelText: "User Name",
                              prefixIcon: const Icon(
                                Icons.person,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Obx(
                          () => TextField(
                            // controller: about,
                            enabled: isEdit.value,
                            decoration: InputDecoration(
                              filled: isEdit.value,
                              labelText: "Phone No",
                              prefixIcon: const Icon(
                                Icons.phone_rounded,
                              ),
                            ),
                          ),
                        ),
                        Obx(
                          () => TextField(
                            // controller: email,
                            enabled: isEdit.value,
                            decoration: InputDecoration(
                              filled: isEdit.value,
                              labelText: "Email",
                              prefixIcon: const Icon(
                                Icons.alternate_email_rounded,
                              ),
                            ),
                          ),
                        ),
                        Obx(
                          () => TextField(
                            // controller: phone,
                            enabled: isEdit.value,
                            decoration: InputDecoration(
                              filled: isEdit.value,
                              labelText: "Date Of Birth",
                              prefixIcon: const Icon(
                                Icons.calendar_month_outlined,
                              ),
                            ),
                          ),
                        ),
                        Obx(
                          () => TextField(
                            // controller: phone,
                            enabled: isEdit.value,
                            decoration: InputDecoration(
                              filled: isEdit.value,
                              labelText: "College Name",
                              prefixIcon: const Icon(
                                Icons.add_home_outlined,
                              ),
                            ),
                          ),
                        ),
                        Obx(
                          () => TextField(
                            // controller: phone,
                            enabled: isEdit.value,
                            decoration: InputDecoration(
                              filled: isEdit.value,
                              labelText: "Address ",
                              prefixIcon: const Icon(
                                Icons.location_on_outlined,
                              ),
                            ),
                            maxLines: 2,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(
                              () => isEdit.value
                                  ? PrimaryBtn(
                                      btnName: "Save",
                                      icon: Icons.save,
                          
                                      ontap: () async {
                                        // await profileController.updateProfile(imagePath.value, name.text, about.text, phone.text);
                                        isEdit.value = false;
                                      },
                                    )
                                  : PrimaryBtn(
                                      btnName: "Edit",
                                      icon: Icons.edit,
                                      ontap: () {
                                        isEdit.value = true;
                                      },
                                    ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}