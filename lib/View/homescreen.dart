import 'package:flutter/material.dart';

class HomeScreenChatPage extends StatefulWidget {
  const HomeScreenChatPage({super.key});

  @override
  State<HomeScreenChatPage> createState() => _HomeScreenChatPageState();
}

class _HomeScreenChatPageState extends State<HomeScreenChatPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt_rounded),
              ),
              Tab(
                child: Text(
                  "CHATS",
                ),
              ),
              Tab(
                child: Text(
                  "STATUS",
                ),
              ),
              Tab(
                child: Text(
                  "CALLS",
                ),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text(
                    "New Group",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text(
                    "Linked Devices",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: TabBarView(children: [
          const Center(
            child: InkWell(
              child: Icon(
                Icons.camera_alt_rounded,
                size: 40,
              ),
            ),
          ),
          ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: index / 2 == 1
                      ? const AssetImage("images/girl.jpg")
                      : const AssetImage("images/men.jpg"),
                ),
                title: Text(
                  index / 2 == 1 ? "Queen II" : "King II",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: const Text(
                  "what are u doing",
                ),
                trailing: const Text(
                  "3: 26 PM",
                ),
              );
            },
          ),
          ListView.builder(itemBuilder: (context, index) {
            if (index == 0) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Recent Updates"),
              );
            } else if (index == 1) {
              return const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("images/girl.jpg"),
                ),
                title: Text(
                  "Queen II",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  "Just now",
                ),
              );
            } else if (index == 2) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("veiw Updates"),
              );
            } else {
              return ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.green,
                      width: 4,
                    ),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("images/girl.jpg"),
                  ),
                ),
                title: const Text(
                  "King II",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: const Text(
                  "6: 30 PM",
                ),
              );
            }
          }),
          ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: index / 2 == 1
                      ? const AssetImage("images/girl.jpg")
                      : const AssetImage("images/men.jpg"),
                ),
                title: Text(
                  index / 2 == 1 ? "Queen II" : "King II",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  index / 2 == 1 ? "Missed Call" : "video call",
                ),
                trailing: Icon(index / 2 == 1 ? Icons.phone : Icons.video_call),
              );
            },
          ),
        ]),
      ),
    );
  }
}
