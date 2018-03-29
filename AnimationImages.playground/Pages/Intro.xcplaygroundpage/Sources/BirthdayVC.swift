import UIKit

public class BirthdayViewController: ViewController {
    
    var birthdayFrames: [UIImage] = []
    let birthdayAnimation: UIImageView = UIImageView.imageViewForConstraints(image: UIImage(named: "Cake/Cake0.png"), contentMode: .scaleAspectFit)
    public let backgroundColor = UIColor(fromHex: 0xADDAFF)
    
    override public func loadView() {
        super.loadView()
        self.view.backgroundColor = nil

        birthdayAnimation.constrainToCenter(of: self.view)
        birthdayAnimation.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor, constant: 16).isActive = true
        birthdayAnimation.trailingAnchor.constraint(lessThanOrEqualTo: self.view.trailingAnchor, constant: -16).isActive = true
        birthdayAnimation.heightAnchor.constraint(equalTo: birthdayAnimation.widthAnchor, multiplier: birthdayAnimation.imageAspectRatio).isActive = true
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...3 {
            if let image = UIImage(named: "Cake/Cake\(i).png") {
                birthdayFrames.append(image)
            }
        }
        self.birthdayAnimation.setAnimation(sequence: birthdayFrames, time: 0.9)
        let animateTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(animate(tapGestureRecognizer:)))
        self.birthdayAnimation.isUserInteractionEnabled = true
        self.birthdayAnimation.addGestureRecognizer(animateTapGestureRecognizer)
        self.birthdayAnimation.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        
        self.birthdayAnimation.layer.borderWidth = 1
    }
    
}

