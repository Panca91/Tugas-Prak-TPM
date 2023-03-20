import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuis_123200099/rental_car.dart';

class HalamanDetail extends StatefulWidget {

  final RentalCar rental;

  const HalamanDetail({Key? key, required this.rental}) : super(key: key);

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  bool isTersedia = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.rental.brand + widget.rental.model),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Image.network(widget.rental.images[index]),
                    ),
                  itemCount: 3,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  widget.rental.brand + ' ' + widget.rental.model,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 75,
                          child: Text('Brand'),
                        ),
                        Text(': ' + widget.rental.brand)
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 75,
                          child: Text('Model'),
                        ),
                        Text(': ' + widget.rental.model)
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 75,
                          child: Text('Tahun'),
                        ),
                        Text(': ' + widget.rental.year.toString())
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 75,
                          child: Text('Biaya Sewa'),
                        ),
                        Text(': ' + widget.rental.rentalPricePerDay + ' per Hari')
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 75,
                          child: Text('Status'),
                        ),
                        Text(': ' + widget.rental.available.toString()),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: (){
                    if(widget.rental.available == false){
                      setState(() {
                        null;
                      });
                    }else{
                      String text = 'Berhasil Memesan';
                      SnackBar snackBar = SnackBar(
                        content: Text(text),
                        backgroundColor: Colors.green,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }

                },
                  child: Text('Pesan'),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deskripsi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(widget.rental.description),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}