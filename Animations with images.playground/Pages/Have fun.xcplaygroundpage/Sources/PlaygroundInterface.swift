import UIKit

public class DrivingLordInterface {
    private let viewController: StreetViewController!
    
    public init(vc: StreetViewController) {
        self.viewController = vc
        vc.addLordToView()
    }
    
    public var drivingSpeed: Double = 1.0
    
    public func drive() {
        self.viewController.drive(speed: drivingSpeed)
    }
    
    
}
