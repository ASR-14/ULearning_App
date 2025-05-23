import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/common/entities/entities.dart';
import 'package:ulearning_app/common/routes/routes.dart';
import 'package:ulearning_app/common/values/colors.dart';
import 'package:ulearning_app/pages/home/bloc/home_page_blocs.dart';
import 'package:ulearning_app/pages/home/bloc/home_page_states.dart';
import 'package:ulearning_app/pages/home/home_controller.dart';
import 'package:ulearning_app/pages/home/widgets/home_page_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late UserItem userProfile;
  // late HomeController _homeController;
  @override
  void initState() {
    // _homeController = HomeController(context: context);
    // _homeController.init();

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    userProfile = HomeController(context: context).userProfile;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(userProfile.avatar.toString()),
      body:
          BlocBuilder<HomePageBlocs, HomePageStates>(builder: (context, state) {
        // print(state.courseItem[0].name);

        if (state.courseItem.isEmpty) {
          HomeController(context: context).init();
        }

        return Container(
          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25.w),
          child: CustomScrollView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            slivers: [
              SliverToBoxAdapter(
                child: homePageText("Hello",
                    color: AppColors.primaryThirdElementText, top: 20),
              ),
              SliverToBoxAdapter(
                  child: homePageText(userProfile.name ?? "dbestech",
                      color: AppColors.primaryText, top: 5)),
              SliverPadding(padding: EdgeInsets.only(top: 20.h)),
              SliverToBoxAdapter(child: searchView()),
              SliverToBoxAdapter(
                  child: slidersView(context: context, state: state)),
              SliverToBoxAdapter(child: menuView()),
              SliverPadding(
                padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 0.w),
                sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      childCount: state.courseItem.length,
                      (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.COURSE_DETAIL, arguments: {
                              "id": state.courseItem.elementAt(index).id
                            });
                          },
                          child: courseGrid(state.courseItem[index]),
                        );
                      },
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                            childAspectRatio: 1.6)),
              )
            ],
          ),
        );
      }),
    );
  }
}
