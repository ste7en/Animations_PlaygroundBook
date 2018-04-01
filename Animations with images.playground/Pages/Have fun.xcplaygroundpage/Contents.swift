//#-hidden-code
import UIKit
import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true
let streetViewController: StreetViewController = StreetViewController()
PlaygroundPage.current.liveView = streetViewController

let drivingLord = DrivingLordInterface(vc: streetViewController)
//#-end-hidden-code
/*:
 ## **You did it!**

 Congratulations! Lord is back on Earth and he's driving to the WWDC.
 To let him drive set the driving speed and then call the [drive()](glossary://drive()) method.

 I hope you had fun playing with Lord and these simple animations. As you can see these aren't so difficult, all you need to have is a collection of different images to change continuously.

 [Previous page](@previous)
 */
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, drivingLord, .)
//#-code-completion(identifier, show, drivingSpeed, drive(), =)
//#-hidden-code
// Hint checking
let page = PlaygroundPage.current

if drivingLord.drivingSpeed == 1.0 {
    page.assessmentStatus = .pass(message: Hints.speedGreaterThanZero)
} else if drivingLord.didMove {
    page.assessmentStatus = .pass(message: Hints.driveSuccess)
}
//#-end-hidden-code
