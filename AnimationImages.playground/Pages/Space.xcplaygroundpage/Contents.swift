//: [Previous](@previous)
//#-hidden-code
import UIKit
import Foundation
import PlaygroundSupport

//#-end-hidden-code

//: [Next](@next)

let spaceViewController = SpaceViewController()
PlaygroundPage.current.liveView = spaceViewController

let lord = UIImage(named: "SpaceLord.png")
let spaceLord = UIImageView(image: lord)
spaceLord.contentMode = .scaleAspectFit
let scaling = CGAffineTransform(scaleX: 0.5, y: 0.5)
let rotation = scaling.rotated(by: -0.2)

//spaceViewController.spaceBackgroundView
spaceViewController.spaceBackgroundView.addSubview(spaceLord)
spaceLord.transform = rotation
spaceLord.frame = CGRect(x: 0, y: spaceViewController.view.frame.height - spaceLord.bounds.height, width: spaceLord.frame.width, height: spaceLord.frame.height)




//#-hidden-code

func moveToEarth() {
    
    let distanceX = spaceViewController.earth.center.x - spaceLord.center.x
    let distanceY = spaceLord.center.y - spaceViewController.earth.center.y

    UIView.animateKeyframes(withDuration: 6.0, delay: 0, options: .calculationModeCubic, animations: {
        
        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.2, animations: {
            spaceLord.center.x += distanceX/8
            spaceLord.center.y -= distanceY/4
        })
        UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.2, animations: {
            spaceLord.center.x += distanceX/8
            spaceLord.center.y += distanceY/2
        })
        UIView.addKeyframe(withRelativeStartTime: 0.4, relativeDuration: 0.2, animations: {
            spaceLord.center.x += distanceX/8
            spaceLord.center.y -= distanceY
        })
        UIView.addKeyframe(withRelativeStartTime: 0.6, relativeDuration: 0.2, animations: {
            spaceLord.center.x += distanceX/4
            spaceLord.center.y += 5/4*distanceY
        })
        UIView.addKeyframe(withRelativeStartTime: 0.8, relativeDuration: 0.2, animations: {
            spaceLord.center.x += distanceX/4
            spaceLord.center.y -= 3/2*distanceY
        })
        
        
        
        UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: {
            spaceLord.transform = spaceLord.transform.scaledBy(x: 0.1, y: 0.1)
        })

        UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.2, animations: {
            spaceLord.alpha = 0.0
        })
        
        
        
        
    }, completion: nil)
    
    
}

//#-end-hidden-code


moveToEarth()
