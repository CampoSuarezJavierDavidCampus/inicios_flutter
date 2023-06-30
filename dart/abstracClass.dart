void main() {
  final EnergyPlant windPlant = new WindPlant(initialEnergy: 1000);
  final EnergyPlant nuclear = new NuclearPlant(energyLeft: 5000);
  windPlant.consumeEnergy(200);
  nuclear.consumeEnergy(5400);
  /* print(windPlant.energyLeft); */
  print("wind ${chargePhone(windPlant)}");
  print("nuclear ${chargePhone(nuclear)}");
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception("Not Enough Energy");
  }
  return plant.energyLeft;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;
  EnergyPlant({required this.energyLeft, required this.type});
  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements WindPlant {
  @override
  double energyLeft;
  @override
  PlantType type = PlantType.nuclear;
  NuclearPlant({required this.energyLeft});
  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
