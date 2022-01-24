import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/widgets/buttons/my_button_with_icon.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);

  final GlobalKey<FormFieldState> _formKey = GlobalKey<FormFieldState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context = context;
    SizeConfig().init(context);
    return Scaffold(
      appBar: const SignUpAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: MyEdgeInsets.symmetric(h: 20.0),
            child: _showFirstStep(),
          ),
        ),
      ),
    );
  }

  Form _showFirstStep() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyTextBold(
            text: "Ro'yxatdan o'tish",
            size: 24.0,
            color: Colors.black,
          ),
          MySizedBox(height: 50),
          MyTextFormField(
            hint: 'Email',
            controller: _emailController,
            inputType: TextInputType.emailAddress,
            action: TextInputAction.next,
          ),
          MySizedBox(height: 20),
          MyTextFormField(
            hint: 'Password',
            controller: _passwordController,
            inputType: TextInputType.visiblePassword,
            action: TextInputAction.done,
            obscureText: true,
          ),
          MySizedBox(height: 30.0),
          _showDivider(),
          MySizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyElevatedIconButton(
                onPressed: () {},
                label: 'Facebook',
                assetIcon: MyAssetIcons.facebook,
              ),
              MyElevatedIconButton(
                onPressed: () {},
                label: 'Google',
                assetIcon: MyAssetIcons.google,
              ),
            ],
          ),
          MySizedBox(height: 60.0),
          MyButton(onPressed: () {
            Navigator.push(_context, MaterialPageRoute(builder: (_)=> SignUpSecond()));
          }, label: 'Keyingi')
        ],
      ),
    );
  }

  _showDivider() => Row(
        children: [
          _divider(true),
          MyTextRegular(text: 'yoki'),
          _divider(false),
        ],
      );

  Expanded _divider(bool isStart) => Expanded(
        child: Divider(
          thickness: getUniqueH(1.0),
          endIndent: isStart ? getUniqueW(10.0) : 0.0,
          indent: !isStart ? getUniqueW(10.0) : 0.0,
        ),
      );
}
