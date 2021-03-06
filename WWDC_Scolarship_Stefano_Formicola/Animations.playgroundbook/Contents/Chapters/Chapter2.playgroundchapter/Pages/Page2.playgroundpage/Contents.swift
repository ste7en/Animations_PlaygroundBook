//#-hidden-code
import UIKit
import Foundation
import PlaygroundSupport

public let spaceViewController = SpaceViewController()
PlaygroundPage.current.liveView = spaceViewController
PlaygroundPage.current.needsIndefiniteExecution = true

public let spaceLord: SpaceLordInterface = SpaceLordInterface(vc: spaceViewController)
//#-end-hidden-code
/*:
 ## **The way home**
 **Challenge:** Help Lord to get back on Earth.
 
 Oh no, what happened? Lord's so curious he always gets into troubles!
 
 He's late for the WWDC, the World Wide Dog Competition, but he doesn't know how to come back.
 Luckily you know how to do it. Do you remember the [move()](glossary://move()) method? If not, give a look at the [previous page](@previous). Lord already has a path to his home that can help him reaching the WWDC.
 
 After you've finished go to the [next page](@next) to complete this adventure.
 */
//#-code-completion(everything, hide)
//#-code-completion(identifier, show, spaceLord, moveToEarth(), .)
//#-hidden-code
// Hint checking
let page = PlaygroundPage.current

if spaceLord.didMove {
    if let currentStatus = PlaygroundPage.current.assessmentStatus, case .pass = currentStatus {
        //Avoid setting assessment status if it's already marked as pass.
    } else {
        page.assessmentStatus = .pass(message: Hints.spaceSuccess)
    }
}
//#-end-hidden-code
