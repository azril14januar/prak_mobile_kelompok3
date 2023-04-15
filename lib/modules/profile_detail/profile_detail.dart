import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan_v/models/user.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({super.key, required this.user});
  final User user;

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isVisiblePassword = false;

@override
  void initState() {
    if (widget.user.name != "") {
      _nameController.text = widget.user.name;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 56, 158, 242),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.chevron_left_rounded),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                const Text(
                  "Profile Detail",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        label: Text("Nama"),
                        hintText: "ex - Azril Januar Rahman",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      validator: (value) {
                        if (value == "" || value == null) {
                          return "Nama Wajib Diisi";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: !isVisiblePassword,
                      decoration: InputDecoration(
                        isDense: true,
                        label: Text("Password"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            isVisiblePassword = !isVisiblePassword;
                          });
                        }, 
                        icon: Icon(
                          isVisiblePassword == false
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == "" || value == null) {
                          return "Password Wajib Diisi";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Column(
                    children: [
                      Text("Sukses"),
                      Text(
                        "Anda Telah Berhasil Mengubah data diri anda",
                      ),
                    ],
                  ),
                ));
              }
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 56, 158, 242),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                child: Text("Simpan"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
