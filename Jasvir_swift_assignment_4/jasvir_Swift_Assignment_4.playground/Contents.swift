/*  Instructions: You are tasked with creating a Swift program that models a camping trailer and its different systems using protocols and a class. The program should define protocols for managing the trailer's water system, electricity system, climate control, and entertainment system, each with specific properties and methods. Additionally, implement a class representing a camping trailer that conforms to these protocols.
 
 Requirements: Define any 2 of the 5 protocols, each protocol has:

 1 property related to the specific system.

 2 methods for managing or interacting with the system.

 Implement a class named Camper that conforms to any 2 of the 5 protocols.

 Ensure the class includes appropriate properties and methods to fulfill the requirements of each protocol.

 Protocols: (Define any 2 the following protocols)

 Trailer Property: brand (String) Methods: startEngine(), stopEngine()
 WaterSystem Property: waterCapacity (Double) Methods: fillWaterTank(), drainWaterTank()
 ElectricitySystem Property: batteryLevel (Double) Methods: chargeBattery(), checkBatteryLevel()
 ClimateControl Property: temperature (Double) Methods: setTemperature(_ temperature: Double), adjustFanSpeed()
 EntertainmentSystem Property: hasTV (Bool) Methods: turnOnTV(), turnOffTV()
 Just like we did in class the Camper class must conform to the protocols you have adopted.

 write test code to demonstrate the functionality of the Camper class

*/


protocol Trailer {
    var brand: String { get set }
    func startEngine()->Void
    func stopEngine()->Void
}


protocol ClimateControl {
    var temperature: Double { get set }
    func setTemperature(_ temperature: Double)
    func adjustFanSpeed()
}


class Camper: Trailer, ClimateControl {
    var brand: String
    var temperature: Double = 50.0
    
    init(brand: String) {
        self.brand = brand
    }
    
    func startEngine() {
        print("Engine started.")
    }
    
    func stopEngine() {
        print("Engine stopped.")
    }
    
    func setTemperature(_ temperature: Double) {
        self.temperature = temperature
        print("Temperature set to \(temperature)°C.")
    }
    
    func adjustFanSpeed() {
        print("Fan speed adjusted.")
    }
}

let myCamper = Camper(brand: "camper1")
print("Camper Brand:", myCamper.brand)
myCamper.startEngine()
myCamper.setTemperature(20.0)
myCamper.adjustFanSpeed()
