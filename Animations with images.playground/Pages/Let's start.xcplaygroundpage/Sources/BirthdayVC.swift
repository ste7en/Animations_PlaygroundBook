import UIKit

public class BirthdayViewController: ViewController {
    
    var birthdayFrames: [UIImage] = []
    let birthdayAnimation: UIImageView = UIImageView.imageViewForConstraints(image: UIImage(named: "Cake/Cake0.png"), contentMode: .scaleAspectFit)
    public let backgroundColor = UIColor(fromHex: 0xADDAFF)
    let detailsText: String = "Lord is a 6 years old bulldog and his birthday is October 17th."
    
    override public func loadView() {
        super.loadView()
        self.view.backgroundColor = nil
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...3 {
            if let image = UIImage(named: "Cake/Cake\(i).png") {
                birthdayFrames.append(image)
            }
        }
        
        birthdayAnimation.constrainToCenter(of: self.view)
        birthdayAnimation.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor, constant: 32).isActive = true
        birthdayAnimation.trailingAnchor.constraint(lessThanOrEqualTo: self.view.trailingAnchor, constant: -32).isActive = true
        birthdayAnimation.heightAnchor.constraint(equalTo: birthdayAnimation.widthAnchor, multiplier: birthdayAnimation.imageAspectRatio).isActive = true
        
        self.birthdayAnimation.setAnimation(sequence: birthdayFrames, time: 0.85)
        let animateTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(animate(tapGestureRecognizer:)))
        self.birthdayAnimation.isUserInteractionEnabled = true
        self.birthdayAnimation.addGestureRecognizer(animateTapGestureRecognizer)
        
        self.detailsLabel.text = self.detailsText
        
    }
    
    override public func showDetails(underImage imageView: UIImageView) {
        super.showDetails(underImage: imageView)
        detailsLabel.backgroundColor = UIColor(fromHex: 0x93BAD9)
    }
    
    
    
}

