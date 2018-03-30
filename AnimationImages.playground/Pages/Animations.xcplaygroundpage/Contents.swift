//#-hidden-code

import UIKit
import PlaygroundSupport

let animationsViewController = AnimationsViewController()
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = animationsViewController

let frames: [UIImage] = {
    var walkingFrames: [UIImage] = []
    
    for i in 1...6 {
        guard let image = UIImage(named: "Walking/bulldog\(i).png") else { continue }
        walkingFrames.append(image)
    }
    
    return walkingFrames
}()

let lord = LordInterface(vc: animationsViewController)

//#-end-hidden-code




//: [Next page](@next)
