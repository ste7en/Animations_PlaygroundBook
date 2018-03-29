//: [Previous](@previous)

import UIKit
import PlaygroundSupport

let animationsViewController = AnimationsViewController()
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = animationsViewController

var walkingFrames: [UIImage] = []

var lord: UIImageView {
    return animationsViewController.walkingLord
}

for i in 1...6 {
    guard let image = UIImage(named: "Walking/bulldog\(i).png") else { continue }
    walkingFrames.append(image)
}

lord.animationImages = walkingFrames
lord.animationDuration = 0.5

//animationsViewController.walk(duration: 20)

//animationsViewController.walk(duration: 2)
//animationsViewController.move(steps: 10, duration: 2)


func walk() {
    animationsViewController.move(steps: 1000, duration: 7)

}

// Struct lord



//: [Next](@next)
