import 'package:flutter/material.dart';

class TasksAppbar extends StatelessWidget {
  const TasksAppbar({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: theme.colorScheme.primaryContainer,
      toolbarHeight: 50,
      floating: true,
      pinned: true,
      snap: false,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 48,
          ),
          Text(
            "Tasks",
            style: theme.textTheme.titleLarge!
                .copyWith(color: theme.colorScheme.onPrimaryContainer),
          ),
          const Spacer(),
          SizedBox(
            width: 48,
            height: 48,
            child: IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: theme.colorScheme.onPrimaryContainer,
                )),
          ),
        ],
      ),
      bottom: AppBar(
        backgroundColor: theme.colorScheme.primaryContainer,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 20, top: 10),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  // filled: true,
                  // fillColor: Colors.white,
                  hintText: 'Search for something',
                  hintStyle: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(.7),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  suffixIcon: const Icon(Icons.clear),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
