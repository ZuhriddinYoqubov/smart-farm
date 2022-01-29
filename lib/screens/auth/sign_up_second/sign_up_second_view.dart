import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class SignUpSecondView extends StatelessWidget {
  SignUpSecondView({Key? key}) : super(key: key);

  final GlobalKey<FormFieldState> _formKey = GlobalKey<FormFieldState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _verifyController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _phoneVerifyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: const MySignUpAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: MyEdgeInsets.symmetric(h: 20.0),
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
                    controller: _passwordController,
                    inputType: TextInputType.visiblePassword,
                    action: TextInputAction.next,
                    hint: 'Parolingizni kiriting',
                    obscureText: true,
                    suffix: IconButton(
                        padding: EdgeInsets.only(right: getUniqueW(10)),
                        onPressed: () {},
                        icon: const Icon(Icons.remove_red_eye)),
                  ),
                  MySizedBox(height: 20.0),
                  MyTextFormField(
                    controller: _verifyController,
                    inputType: TextInputType.visiblePassword,
                    action: TextInputAction.next,
                    hint: 'Parolingizni qayta kiriting',
                    obscureText: true,
                    suffix: IconButton(
                        padding: EdgeInsets.only(right: getUniqueW(10)),
                        onPressed: () {},
                        icon: const Icon(Icons.remove_red_eye)),
                  ),
                  MySizedBox(height: 20.0),
                  MyTextFormField(
                    controller: _phoneController,
                    inputType: TextInputType.phone,
                    action: TextInputAction.next,
                    hint: 'Telefon Raqam',
                    prefix: _buildContainer(),
                    suffix: _buildSuffix(),
                  ),
                  MySizedBox(height: 20.0),
                  MyTextFormField(
                    controller: _phoneVerifyController,
                    inputType: TextInputType.visiblePassword,
                    action: TextInputAction.done,
                    hint: 'Tasdiqlash kodini kiriting',
                  ),
                  MySizedBox(height: 40.0),
                  MyButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => BodyPageView()));
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

  Widget _buildSuffix() {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        margin: MyEdgeInsets.symmetric(h: 8.0),
        height: getUniqueH(39.0),
        width: getUniqueW(80.0),
        decoration: MyDecoration.circular(color: MyColors.lightGrey),
        child: MyTextRegular(
          text: 'Kod\nyuborish',
          color: MyColors.black,
          textAlign: TextAlign.center,
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
