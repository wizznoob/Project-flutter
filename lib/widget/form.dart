import 'package:flutter/material.dart';
import 'package:jajankopi_user/widget/button.dart';
import 'package:jajankopi_user/widget/menu.dart';
import 'package:jajankopi_user/model.dart';

class FormBundle extends StatefulWidget {
  const FormBundle({super.key});

  @override
  FormBundleState createState() {
    return FormBundleState();
  }
}

class FormBundleState extends State<FormBundle> {
  final _formKey = GlobalKey<FormState>();
  // Color(0x80E03932)
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        color: Color(0xFFE03932),
        child: Column(
          children: [
            // !DIBUAT JADI REUSABLE JADI NDA NGODING BERKALI KALI OMAN!!!!!!
            // ^Identitas
            Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
              child: Row(
                children: [
                  Expanded(
                    flex: 50,
                    child: Image.asset('assets/party.png', fit: BoxFit.cover),
                  ),

                  Expanded(
                    flex: 50,
                    child: Text(
                      'Party dulu Bersama JaJan Kopi!',
                      style: TextStyle(fontSize: 30),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x40D3D3D3),
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        LayoutForm(form: formIdentification[0]),
                        LayoutForm(form: formIdentification[1]),
                        LayoutForm(form: formIdentification[2]),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ^Alamat
            Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
              child: Row(
                children: [
                  Expanded(
                    flex: 50,
                    child: Image.asset('assets/map.png', fit: BoxFit.cover),
                  ),

                  Expanded(
                    flex: 50,
                    child: Text(
                      'Jangan Lupa isi Alamat biar tidak tersesat.',
                      style: TextStyle(fontSize: 20),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x40D3D3D3),
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        LayoutForm(form: formOcassion[0]),
                        LayoutForm(form: formOcassion[1]),
                        LayoutForm(form: formOcassion[2]),
                        LayoutForm(form: formOcassion[3]),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ^Card Method
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
              child: Column(
                children: [
                  LayoutCardFrom(card: operatorOnly[0]),
                  LayoutCardFrom(card: chariot[0]),
                  LayoutCardFrom(card: privacyParty[0]),
                ],
              ),
            ),

            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 12,
                        right: 220,
                        top: 2,
                        bottom: 8,
                      ),
                    ),
                    ...List.generate(layoutListMenu.length, (index) {
                      return ListMenu(
                        title: layoutListMenu[index].title,
                        img: layoutListMenu[index].img,
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LayoutForm extends StatelessWidget {
  final ModelForm form;
  const LayoutForm({super.key, required this.form});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return TextFormField(
          style: TextStyle(
            color: Color(0xFF000000),
            fontSize: 18,
            letterSpacing: 2,
          ),
          decoration: InputDecoration(
            labelText: form.label,
            floatingLabelStyle: TextStyle(
              color: Color(0xB3000000),
              fontSize: 16,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,

            // ^Styling
            isDense: true,
            contentPadding: EdgeInsets.only(top: 20, bottom: 4),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0x80000000)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF000000)),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFE03932)),
            ),
          ),
          cursorColor: Color(0xFF000000),
        );
      },
    );
  }
}

class LayoutCardFrom extends StatelessWidget {
  final ModelCardForm card;
  const LayoutCardFrom({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
          child: Column(
            children: [
              Container(
                height: 200,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 2),
                ),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 10,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: AddButton(),
                        ),
                      ),
                      Expanded(
                        flex: 75,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 70,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    card.title,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),

                                  SizedBox(height: 12),

                                  Text(
                                    card.subtitle,
                                    softWrap: true,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),

                                  SizedBox(height: 8),

                                  Row(
                                    children: [
                                      Text(
                                        card.info1,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w100,
                                        ),
                                      ),

                                      SizedBox(width: 8),

                                      Text(
                                        card.info2,
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w100,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Image.asset('assets/party.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
