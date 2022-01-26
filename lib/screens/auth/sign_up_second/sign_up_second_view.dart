import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class SignUpSecond extends StatelessWidget {
  SignUpSecond({Key? key}) : super(key: key);

  final GlobalKey<FormFieldState> _formKey = GlobalKey<FormFieldState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: const SignUpAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: MyEdgeInsets.symmetric(h: 20.0),
            // child: Column(
            //   children: [
            //     MyTextBold(
            //       text: 'Ro\'yxatdan o\'tish',
            //       color: MyColors.black,
            //       size: 24.0,
            //     ),
            //     MySizedBox(height: 15.0),
            //     MyTextRegular(
            //       text:
            //           "Contrary to popular belief, Lorem \nIpsum is not simply",
            //       textAlign: TextAlign.center,
            //       size: 12.0,
            //     ),
            //     MySizedBox(height: 50.0),
            //     MyTextFormField(
            //       controller: _nameController,
            //       inputType: TextInputType.name,
            //       action: TextInputAction.next,
            //       hint: 'Ism',
            //     ),
            //     MySizedBox(height: 20.0),
            //     MyTextFormField(
            //       controller: _lastnameController,
            //       inputType: TextInputType.name,
            //       action: TextInputAction.next,
            //       hint: 'Familiya',
            //     ),
            //     MySizedBox(height: 20.0),
            //     MyTextFormField(
            //       controller: _phoneController,
            //       inputType: TextInputType.phone,
            //       action: TextInputAction.done,
            //       hint: 'Telefon Raqam',
            //       prefix: _buildContainer(),
            //     ),
            //     MySizedBox(height: 60.0),
            //     MyButton(onPressed: () {
            //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePageView()));
            //     }, label: 'Ro’yxatdan o’tish'),
            //   ],
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  MyTextBold(
                    text: 'Ro\'yxatdan o\'tish',
                    color: MyColors.black,
                    size: 24.0,
                  ),
                  MySizedBox(height: 15.0),
                  MyTextRegular(
                    text:
                        "Contrary to popular belief, Lorem \nIpsum is not simply",
                    textAlign: TextAlign.center,
                    size: 12.0,
                  ),
                  MySizedBox(height: 50.0),
                  MyTextFormField(
                    controller: _nameController,
                    inputType: TextInputType.name,
                    action: TextInputAction.next,
                    hint: 'Ism',
                  ),
                  MySizedBox(height: 20.0),
                  MyTextFormField(
                    controller: _lastnameController,
                    inputType: TextInputType.name,
                    action: TextInputAction.next,
                    hint: 'Familiya',
                  ),
                  MySizedBox(height: 20.0),
                  MyTextFormField(
                    controller: _phoneController,
                    inputType: TextInputType.phone,
                    action: TextInputAction.done,
                    hint: 'Telefon Raqam',
                    prefix: _buildContainer(),
                  ),
                  MySizedBox(height: 60.0),
                  MyButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => HomePageView()));
                      },
                      label: 'Ro’yxatdan o’tish'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _buildContainer() {
    return Container(
      alignment: Alignment.center,
      margin: MyEdgeInsets.symmetric(h: 8.0),
      height: getUniqueH(39.0),
      width: getUniqueW(60.0),
      decoration: MyDecoration.circular(color: MyColors.lightGrey),
      child: MyTextRegular(
        text: '+998',
        color: MyColors.black,
      ),
    );
  }
}
