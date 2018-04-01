//#-hidden-code
import UIKit
import PlaygroundSupport
let animationsViewController = AnimationsViewController()
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = animationsViewController

private var frames: [UIImage] = []
let lord: LordInterface = LordInterface(vc: animationsViewController)
//#-end-hidden-code
/*:
 ## **On your own**
 **Goal:** Animate a character.
 
 Did you like the animations? Animating a character is really simple, even if it’s a bulldog! Animations like the ones you saw before are composed of lots of [frames](glossary://frame) that change quickly to give you the impression of the movement.
 Then, [`startAnimating()`](glossary://startAnimating()) is called on a character.
 
 Now try to create your first animation. In the code above there’s an [array](glossary://array) of frames that you’ve to set to Lord, who’s already waiting for it in the screen.
 
 * callout(How):
 You can call Lord by writing `lord` followed by a dot, and then [pass](glossary://assignment) him the frames array he needs for an animation. Example: `lord.animationFrames`
 
 Next, why don’t you ask him to move or, maybe, just walk ?
 
 * callout(Tip):
 Lord needs to know the speed of his steps for his walking. Try to find how to give him that value.
 
 Are you ready to make your first animation? Here's the recipe:
 
 1) Set the animation frames .
 2) Set the animation duration in seconds.
 3) Start animating the bulldog with [`move()`](glossary://move()) or [`walk()`](glossary://walk()) methods.
 
 Go to next page to enjoy Lord's adventures.
 */
//#-code-completion(everything, hide)
//#-code-completion(literal, show, image)
// Animation frames array, already ordered
frames = [#imageLiteral(resourceName: "Walking/bulldog1.png"), #imageLiteral(resourceName: "Walking/bulldog2.png"), #imageLiteral(resourceName: "Walking/bulldog3.png"), #imageLiteral(resourceName: "Walking/bulldog4.png"), #imageLiteral(resourceName: "Walking/bulldog5.png"), #imageLiteral(resourceName: "Walking/bulldog6.png")]
//#-code-completion(everything, hide)

// Write your code
//#-code-completion(currentmodule, show)
//#-code-completion(identifier, hide, animationsViewController)
//#-code-completion(identifier, hide, frame)
//#-code-completion(identifier, show, lord, animationFrames, walkingSpeed, startAnimating(), stopAnimating())
//#-code-completion(identifier, show, move(steps:duration:), walk(duration:), .)
//#-code-completion(identifier, show, =)
//#-code-completion(identifier, show, frame)

//: [Next page](@next)

//#-hidden-code
// Hint checking
var hints = [String]()
let page = PlaygroundPage.current

if lord.animationFrames.isEmpty {
    hints.append(Hints.emptyAnimationArray)
}

if lord.walkingSpeed == 0.0 {
    hints.append(Hints.animationDurationIsZero)
}

if lord.walkingSpeed <= 0.0 {
    hints.append(Hints.timeGreaterThanZero)
}

if hints.isEmpty {
    if let currentStatus = PlaygroundPage.current.assessmentStatus, case .pass = currentStatus {
        //Avoid setting assessment status if it's already marked as pass.
    } else {
        if lord.showWalkHint {
            page.assessmentStatus = .pass(message: Hints.tryWithWalk)
        } else {
            page.assessmentStatus = .pass(message: Hints.success)
        }
    }
} else {
    // Show hints
    page.assessmentStatus = .fail(hints: hints, solution: nil)
}
//#-end-hidden-code
