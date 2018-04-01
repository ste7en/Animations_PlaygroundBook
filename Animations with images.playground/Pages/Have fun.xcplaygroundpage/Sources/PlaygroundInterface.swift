import UIKit

public class DrivingLordInterface {
    private let viewController: StreetViewController!
    public var didMove: Bool = false
    public init(vc: StreetViewController) {
        self.viewController = vc
        vc.addLordToView()
    }
    
    public var drivingSpeed: Double = 1.0
    
    public func drive() {
        guard self.drivingSpeed > 0 else { return }
        self.didMove = true
        self.viewController.drive(speed: drivingSpeed)
    }
    
    
}
