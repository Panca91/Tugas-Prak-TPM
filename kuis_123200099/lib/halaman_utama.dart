import 'package:flutter/material.dart';
import 'package:kuis_123200099/halaman_detail.dart';
import 'package:kuis_123200099/rental_car.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Rental Mobil'),
        )
      ),
      body: ListView.builder(
        itemCount: rentalCar.length,
        itemBuilder: (context, index){
          final RentalCar rental = rentalCar[index];
          return Container(
            child: ListTile(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HalamanDetail(rental: rental)
                    )
                );
              },
              leading: Image.network(
                rental.images[0],
                width: 150,
                fit: BoxFit.cover,
                height: 200,
              ),
              minVerticalPadding: 25,
              title: Text(rental.brand + rental.model),
              subtitle: Text(rental.rentalPricePerDay + ' / hari'),
            ),
          );
        }
      ),
    );
  }
}
