import UIKit

public class LordInterface {
    let viewController: AnimationsViewController!
    public var showWalkHint: Bool = true
    
    public init(vc: AnimationsViewController) {
        self.viewController = vc
        viewController.addLordToView()
    }
    
    public func move(steps: CGFloat, duration: Double) {
        guard let _ = viewController.walkingLord.animationImages, viewController.walkingLord.animationDuration > 0.0, duration > 0 else { return }
        viewController.move(steps: steps, duration: duration)
    }
    
    public func walk(duration: Double) {
        self.showWalkHint = false
        guard let _ = viewController.walkingLord.animationImages, viewController.walkingLord.animationDuration > 0.0, duration > 0 else { return }
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
