import 'package:rentalsveiculos/model/branch.dart';
import 'package:rentalsveiculos/model/car.dart';

List<Car> CARS_DATA = const [
  Car(
    name: 'Pulse',
    manufacturer: 'Fiat',
    year: 2022,
    location: Branch(city: 'Belém', state: 'PA'),
    distanceTravelled: 1540,
    rate: 3,
    fuelType: Fuel.FLEX,
    transmissionType: Transmission.MANUAL,
    dayPrice: 89.99,
    type: CarType.SUV,
    imagePath: 'https://s2.glbimg.com/gxfVGdHo'
        'fD4IYapGJ5a3VBSlOCk=/0x0:845x475/924x0/smart/'
        'filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_'
        'cf9d035bf26b4646b105bd958f32089d/internal_photos'
        '/bs/2023/3/h/6TQiDrRZARQFhcTsASrA/fiat-tipo.jpg',
  ),
  Car(
    name: 'Tracker',
    manufacturer: 'Chevrolet',
    year: 2021,
    location: Branch(city: 'Fortaleza', state: 'CE'),
    distanceTravelled: 3500,
    rate: 5,
    fuelType: Fuel.FLEX,
    transmissionType: Transmission.AUTOMATIC,
    dayPrice: 109.99,
    type: CarType.SUV,
    imagePath: 'https://cdn.motor1.com/images/'
        'mgl/7nBOJ/s1/chevrolet-tracker-2022.jpg',
  ),
  Car(
    name: 'Creta',
    manufacturer: 'Hyundai',
    year: 2022,
    location: Branch(city: 'Belém', state: 'PA'),
    distanceTravelled: 587,
    rate:4,
    fuelType: Fuel.ELETRIC,
    transmissionType: Transmission.MANUAL,
    dayPrice: 99.99,
    type: CarType.SUV,
    imagePath: 'https://www.automaistv.com.br/wp-content/'
        'uploads/2022/03/hyundai_grand_creta_7_edited-990x594.jpg',
  ),
];
