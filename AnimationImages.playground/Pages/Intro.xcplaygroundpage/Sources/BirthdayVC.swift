import UIKit

public class BirthdayViewController: ViewController {
    
    var birthdayFrames: [UIImage] = []
    let birthdayAnimation: UIImageView = UIImageView.imageViewForConstraints(image: UIImage(named: "Cake/Cake0.png"), contentMode: .scaleAspectFit)
    public let backgroundColor = UIColor(fromHex: 0xADDAFF)
    
    override public func loadView() {
        super.loadView()
        self.view.backgroundColor = nil
        //self.backgroundColor = UIColor(red: 173, green: 218, blue: 255, alpha: 1.0)
        birthdayAnimation.constrainToCenter(of: self.view)
        birthdayAnimation.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor, constant: 16).isActive = true
        birthdayAnimation.trailingAnchor.constraint(lessThanOrEqualTo: self.view.trailingAnchor, constant: -16).isActive = true
    }
    
    override public func viewDidLoad() {
        for i in 0...3 {
            if let image = UIImage(named: "Cake/Cake\(i).png") {
                birthdayFrames.append(image)
            }
        }
        self.birthdayAnimation.setAnimation(sequence: birthdayFrames, time: 0.9)
        self.birthdayAnimation.startAnimating()
        self.birthdayAnimation.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
    }
    
}

