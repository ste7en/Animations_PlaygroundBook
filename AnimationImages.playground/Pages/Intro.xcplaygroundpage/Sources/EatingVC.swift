import UIKit

public class EatingViewController: ViewController {
    
    var eatingFrames: [UIImage] = []
    let eatingAnimation: UIImageView = UIImageView.imageViewForConstraints(image: UIImage(named: "Eating/Eating0.png"), contentMode: .scaleAspectFit)
    public let backgroundColor = UIColor(fromHex: 0xE6505D)
    
    override public func loadView() {
        super.loadView()
        self.view.backgroundColor = nil
        eatingAnimation.constrainToCenter(of: self.view)
        eatingAnimation.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor, constant: 16).isActive = true
        eatingAnimation.trailingAnchor.constraint(lessThanOrEqualTo: self.view.trailingAnchor, constant: -16).isActive = true
        
        
    }
    
    override public func viewDidLoad() {
        for i in 0...7 {
            if let image = UIImage(named: "Eating/Eating\(i).png") {
                eatingFrames.append(image)
            }
        }
        self.eatingAnimation.transform  = CGAffineTransform(scaleX: 0.5, y: 0.5)
        self.eatingAnimation.setAnimation(sequence: eatingFrames, time: 1.1)
        self.eatingAnimation.startAnimating()
    }
    
}
