void main() {
  
  /*Car myNormalCar = Car();
  myNormalCar.drive();
  
  ElectricCar myTesla = ElectricCar();
  myTesla.drive();
  
  LevitatingCar magLev = LevitatingCar();
  magLev.drive();
  */
  SelfDrivingCar myWemo = SelfDrivingCar('221 B Bakers Street');
  myWemo.drive();
}

class Car{
  int numberSeats = 5;
  void drive(){
    print('Wheels turn');
  }
}

class ElectricCar extends Car{
  int batteryLevel = 100;
  void recharge(){
    batteryLevel = 100;
  }
  
}

class LevitatingCar extends Car{
  
  @override
  void drive(){
    print('glide forward');
   }
}

class SelfDrivingCar extends Car {
  String destination;
  SelfDrivingCar(String userSetDest){
    destination = userSetDest;
  }
  @override
  void drive(){
    super.drive();
    print('sterring towards $destination');
  } 
}
