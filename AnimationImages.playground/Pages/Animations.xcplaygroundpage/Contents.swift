//#-hidden-code

import UIKit
import PlaygroundSupport

let animationsViewController = AnimationsViewController()
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = animationsViewController

private var frames: [UIImage] = []

let lord = LordInterface(vc: animationsViewController)

//#-end-hidden-code

/*:
 **Goal:** Animate a character.
 
 Did you like the animations? Animating a character is really simple, even if it’s a bulldog! Animations like the ones you saw before are composed of lots of [frames](glossary://frame) that change quickly to give you the impression of the movement.
 
 Now try to create your first animation. In the code above there’s an [array](glossary://array) of frames that you’ve to set to Lord, who’s already waiting for it in the screen.
 
 * callout(How):
 You can call Lord by writing `lord` followed by a dot, and then [pass](glossary://assignment) him what he needs for an animation. Example: `lord.animationFrames`
 
 Next, why don’t you ask him to move or, maybe, just walk ?
 
 * callout(Tip):
 Lord needs to know the speed of his steps for his walking. Try to find how to give him that value.
 
 */

frames = [#imageLiteral(resourceName: "bulldog1.png"), #imageLiteral(resourceName: "bulldog2.png"), #imageLiteral(resourceName: "bulldog3.png"), #imageLiteral(resourceName: "bulldog4.png"), #imageLiteral(resourceName: "bulldog5.png"), #imageLiteral(resourceName: "bulldog6.png")]


//: [Next page](@next)
