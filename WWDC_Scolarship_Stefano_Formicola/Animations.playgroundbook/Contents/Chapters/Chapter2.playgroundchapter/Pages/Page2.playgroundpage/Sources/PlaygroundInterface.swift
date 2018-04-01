import UIKit

public class SpaceLordInterface {
    
    let viewController: SpaceViewController!
    let spaceLord: UIImageView!
    public var didMove: Bool = false
    
    public init(vc: SpaceViewController) {
        self.viewController = vc
        self.spaceLord = vc.spaceLord
    }
    
    public func moveToEarth() {
        self.didMove = true
        let distanceX = viewController.earth.center.x - self.spaceLord.center.x
        let distanceY = self.spaceLord.center.y - viewController.earth.center.y
  
        print(distanceX)
        NSLog("\(distanceX)")
        print(distanceY)
        NSLog("\(distanceY)")
        
        UIView.animateKeyframes(withDuration: 6.0, delay: 1.0, options: .calculationModeCubic, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.1, animations: {
                self.spaceLord.center.x += 30
                self.spaceLord.center.y -= 80
            })
            UIView.addKeyframe(withRelativeStartTime: 0.15, relativeDuration: 0.1, animations: {
                self.spaceLord.center.x += 30
                self.spaceLord.center.y += 40
            })
            UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.1, animations: {
                self.spaceLord.center.x += 30
                self.spaceLord.center.y -= 20
            })
            UIView.addKeyframe(withRelativeStartTime: 0.45, relativeDuration: 0.1, animations: {
                self.spaceLord.center.x += 30
                self.spaceLord.center.y += 40
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.15, relativeDuration: 0.6, animations: {
                self.spaceLord.transform = self.spaceLord.transform.scaledBy(x: 0.15, y: 0.15)
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.33, animations: {
                self.spaceLord.alpha = 0.15
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.4, animations: {
                self.spaceLord.center.x += distanceX / 2
                self.spaceLord.center.y -= distanceY / 2
            })
         
        }, completion: {_ in self.spaceLord.removeFromSuperview()})
        
        
    }
    
}
