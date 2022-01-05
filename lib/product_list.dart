import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Product(),
    ));

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  height: 120,
                  // width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20, top: 7),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 7),
                      child: Text("Products",
                          style: GoogleFonts.lato(
                              fontSize: 19, color: Colors.white)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15, top: 50),
                      width: 400,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          contentPadding: EdgeInsets.zero,
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                    padding: EdgeInsets.only(left: 20, top: 47),
                      child: FloatingActionButton(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.green,
                        onPressed: () {
                          // Respond to button press
                        },
                        child: Icon(Icons.add,color: Colors.white,size: 27,),
                      ),
                    ),

                  ],
                ),
              ],
            ),

          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Card(
              child: ListTile(
                title: Text("Product Name",style: GoogleFonts.lato(color:Colors.black,fontWeight: FontWeight.w600),),
                subtitle: Text("description"),
                leading: Image.network(
                "data:image/jpeg;base64,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"),
                  trailing: Text("Rs. 0.00",style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.w600),)
              ),
          ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 5),
            child: Card(
              child: ListTile(
                  title: Text("Product Name",style: GoogleFonts.lato(color:Colors.black,fontWeight: FontWeight.w600),),
                  subtitle: Text("description"),
                  leading: Image.network(
                      "data:image/jpeg;base64,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"),
                  trailing: Text("Rs. 0.00",style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.w600),)
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 5),
            child: Card(
              child: ListTile(
                  title: Text("Product Name",style: GoogleFonts.lato(color:Colors.black,fontWeight: FontWeight.w600),),
                  subtitle: Text("description"),
                  leading: Image.network(
                      "data:image/jpeg;base64,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"),
                  trailing: Text("Rs. 0.00",style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.w600),)
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 5),
            child: Card(
              child: ListTile(
                  title: Text("Product Name",style: GoogleFonts.lato(color:Colors.black,fontWeight: FontWeight.w600),),
                  subtitle: Text("description"),
                  leading: Image.network(
                      "data:image/jpeg;base64,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"),
                  trailing: Text("Rs. 0.00",style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.w600),)
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 5),
            child: Card(
              child: ListTile(
                  title: Text("Product Name",style: GoogleFonts.lato(color:Colors.black,fontWeight: FontWeight.w600),),
                  subtitle: Text("description"),
                  leading: Image.network(
                      "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw8PDxAODw0QEA0PDxAQDQ0ODw8PDQ0NFREWFhURFRMYHSggGBolGxMVITEhJSkrLi4uGB82ODQsNygtLisBCgoKDQ0OEg0NDzcZFRkrLS0rKzcrKzcrKys3NysrKysrKysrKysrKysrLSsrKysrKysrKysrKysrKysrKysrK//AABEIALgBEgMBIgACEQEDEQH/xAAbAAEBAAMBAQEAAAAAAAAAAAAABAECAwUHBv/EADUQAAIBAgMGBAQFBAMAAAAAAAABAgMRBCExEjJBUXGBBRNhsSJykaEUQlLB8AYz0eEWI/H/xAAWAQEBAQAAAAAAAAAAAAAAAAAAAQL/xAAWEQEBAQAAAAAAAAAAAAAAAAAAARH/2gAMAwEAAhEDEQA/APuIAAAAAAAAAAAAAAaVpWjJ8k39gMykau74/Q1uZuXBhp8Gzz/CfHqWInVorahXoT2KtKpHYqR5Stxi+DWTPSueXi/A6VTE08YnOniKcXBum0o1qbW5UTWa0fB5ID2AaUpXWeqyZuQTeI46nh6cq1WahTgnKUm7JJHDwvHfiqMK8Y1IQqJuEakdibjfKWzqk9VfmTeMeC08a6fnym6VOoqnkxaVOs1uqpldpPO11meosslotEUEnzZsp8/qa3MNgdgcqUs2uCt97/4OpAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADnX3JfK/Y6GJK6a5gQYi7jOMZbEpRkozSu4SaaUkvTU8n+lMBicJhvKxWLeKq+ZOXmva+GDtaCcm29G8+bPSrpxdn2fBnCUzSLo1jrKR4lXGKFm3kerGSlBSTumk0+aCqaT+/ub1NOpHhHLab2lsWSUdn4lO7u9q+lmsrcDvi9rZexJRlwlKO0lmr5XXC5BhSzNalWxzou7Z5+LxsfMcE81r6Mo9B1L8bevI8T+kfDMVhKM6eLxzxlSVVzjVkpLZg0svibebTdtFfIsjUOsZ8OPBcWB6OG1k/SP7nc5Yem4rPV/Y6mQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABrOCkrNXXJkFfwu+5UcfRraR6IA8P8A48pP/sqtr9MVa/dnoeVGFPYirRjlFckiwmrbr6ssE+Clm+q9ynFuyfQkwW8+3uU47dfT9wOWBJsT4FCpLzYycKks5fmjJ87FHh5bS3UKPMoeESW9Vy9I5/dnoUMNGGiz/U82zsCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOFSvnaKu/Y0tN6yS9Fn9wKiWtuy6v3MShbWpJd4ow9x53zefPMonwW8+3uU4/dfRe5JhN6XudsTG0ZZt6a2AYAtpbqIsAbwV9Kj6JrIC0EvlyWk33VzKrSjvLL9S0/wBDBSDEZJq6MkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAJ8VUeUVqyg8/GTs5PlF2+yEEtfxWnS+CKcmtXwv14ksvFZy429I5fcmqYfic9i3A0ivzL6u79cz1qH9lfzieHRR7lH+0u4Vxwm9L+cTti38L6I4Ybel0Old/BLsBtgDzsQ7Sl1Z6OAPMxa+J9WEYjj5Q0k+jzX3O1LxxaTj3j/g83Zz5m0MPdgfocPVWTi7wlp6ehceHgMouPKSa75HtQeS6IlVsACAAAAAAAAAAAAAAAAAAAAAAAAAAABDi4fFnpJNfX/wuOOKp7S9fcDxKkHB59nwZNVV3dZX1PWcW1Zxb7ZMkrYJ/lTXpZ2NInoZNHr02vK+vueOqFVfkl2TM4bCypyqTpxqU5VmpVdjJTmoqKk001eySv6LkBdQec/lMyneEux49bweM6sa04Vak6ctunttuEZpO0tlWTau7X0M+IeExrypzqUp+ZS2vLqQ2oTgpW2o3WqezG6eWS5Ae7gWQYp55c2c3h6jpultV3TlFxlG9nZ5NXSTX1OccNKEYwhRcYQiowjGNoxilZJLlYDTZ9SiLvZJdEKWDm95NdncupUtnSD+juBihS2Ul+aTu1yS/3Y9aKskvQjwtPPalry/YtJVAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAJo8b5/E9epSTQ1fzP3LBvUStoiWRXU0JJAabXojG0uRhmCo22lyMbS5IwANtpcjKn6I0CA6RZTRRNAqohW016G1B/Cu/uazNsPur+cSDoACAAAAAAAAAAAAAAAAAAAAAAAAAAABNDWXzP3KSaOsvmfuWDpU0JJFdTQkmByZgyzBUADAGQgEB0gU0SaBTRCt5m1DdRrM2w+6iDoACAAAAAAAAAAAAAAAAAAAAAAAAAAABNHWXzP3KSWOsvmfuWDrU07EkyuenYkmBxYDMFQAAGQjBkDpAqoEsCqhxCtqhtQ3Ua1OJth91dCUdAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAJY6y+Z+5USrWXzMsHWenYkmVVNOxJMDkzBlmtyoyDFxcDJk1uZQHSBVQJYFVAK2qG+H3V0NKnE3obseiJR0ABAAAAAAAAAAAAAAAAAAAAAAAAAAAAlllOS6P7FRPi4vKa4a9BBmTy7Ec2dPNyJ6kzQw2a3NHMw5BHS4uctsbYHW5lM5bYUwKYMroM8+EimnUCu9WWrKKaskuSRHSW3K3BZy/ZFxKAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAACDE4J602vWD07PgebX8yO9Sn1UXJfVAFEssUuTXVNGv4yPMAqMfjI8x+MjzAAysWv4jKxS9fowAO9OpJ7tOo+kJW+tj0MPhKst74I9U5P6aAEV6VOmoqyWRuAQAAAAAAAAAAAAAAAAf/Z"),
                  trailing: Text("Rs. 0.00",style: GoogleFonts.lato(color: Colors.black,fontWeight: FontWeight.w600),)
              ),
            ),
          ),

        ],
      ),
    );
  }
}

