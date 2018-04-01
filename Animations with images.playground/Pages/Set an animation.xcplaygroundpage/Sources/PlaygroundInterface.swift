import UIKit

public class LordInterface {
    let viewController: AnimationsViewController!
    
    public init(vc: AnimationsViewController) {
        self.viewController = vc
        viewController.addLordToView()
    }
    
    public func move(steps: CGFloat, duration: Double) {
        viewController.move(steps: steps, duration: duration)
    }
    
    public func walk(duration: Double) {
        viewController.walk(duration: duration)
    }
    
    public var animationFrames: [UIImage] {
        get {
            return viewController.walkingLord.animationImages ?? []
        }
        set {
            viewController.walkingLord.animationImages = newValue
        }
    }
    
    public var walkingSpeed: Double {
        get {
            return viewController.walkingLord.animationDuration
        }
        set {
            viewController.walkingLord.animationDuration = newValue
        }
    }
    
    public func startAnimating() {
        self.viewController.walkingLord.startAnimating()
    }
    
    public func stopAnimating() {
        self.viewController.walkingLord.stopAnimating()
    }
    
}
