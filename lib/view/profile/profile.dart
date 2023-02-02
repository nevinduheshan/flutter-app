import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title:
            Text('Profile', style: Theme.of(context).textTheme.headlineSmall),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 50),
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(
                      image: AssetImage(
                    'lib/images/Profile.png',
                  )),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Nevindu Heshan',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'nevindu4@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 36, 99, 235),
                    side: BorderSide.none,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),
              //Menu
              ProfileMenus(
                  title: "Change Email", icon: Icons.email, onPress: () {}),
              ProfileMenus(
                  title: "Change Password",
                  icon: Icons.password,
                  onPress: () {}),
              const Divider(),
              ProfileMenus(
                  title: "Book Ticket History",
                  icon: Icons.airplane_ticket,
                  onPress: () {}),
              const Divider(),
              ProfileMenus(
                  title: 'About Magiya', icon: Icons.bus_alert, onPress: () {}),
              ProfileMenus(
                  title: 'Terms of Service',
                  icon: Icons.privacy_tip,
                  onPress: () {}),
              ProfileMenus(
                  title: 'Privacy Policy',
                  icon: Icons.privacy_tip,
                  onPress: () {}),
              ProfileMenus(
                  title: 'Ticket Policy',
                  icon: Icons.airplane_ticket_sharp,
                  onPress: () {}),
              ProfileMenus(
                  title: 'Contact US',
                  icon: Icons.contact_phone,
                  onPress: () {}),
              const Divider(),
              ProfileMenus(
                  title: 'Delete Account', icon: Icons.delete, onPress: () {}),
              ProfileMenus(
                  title: "Logout",
                  textColor: Colors.red,
                  endIcon: false,
                  icon: Icons.logout,
                  onPress: () {}),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenus extends StatelessWidget {
  const ProfileMenus({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white10.withOpacity(0.1),
        ),
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
      title: Text(title,
          style:
              Theme.of(context).textTheme.bodyLarge?.apply(color: textColor)),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: const Icon(
                LineAwesomeIcons.angle_right,
                size: 18.0,
                color: Colors.black,
              ),
            )
          : null,
    );
  }
}
