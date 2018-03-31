import UIKit

public class EatingViewController: ViewController {
    
    var eatingFrames: [UIImage] = []
    let eatingAnimation: UIImageView = UIImageView.imageViewForConstraints(image: UIImage(named: "Eating/Eating0.png"), contentMode: .scaleAspectFit)
    public let backgroundColor = UIColor(fromHex: 0xC9ACF6)
    let detailsText: String = "He’s so greedy and can’t resist biscuits and dry food."
    
    override public func loadView() {
        super.loadView()
        self.view.backgroundColor = nil
        eatingAnimation.constrainToCenter(of: self.view)
        eatingAnimation.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor, constant: 16).isActive = true
        eatingAnimation.trailingAnchor.constraint(lessThanOrEqualTo: self.view.trailingAnchor, constant: -16).isActive = true
        eatingAnimation.heightAnchor.constraint(equalTo: eatingAnimation.widthAnchor, multiplier: eatingAnimation.imageAspectRatio).isActive = true
        
        
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...7 {
            if let image = UIImage(named: "Eating/Eating\(i).png") {
                eatingFrames.append(image)
            }
        }
        self.eatingAnimation.setAnimation(sequence: eatingFrames, time: 1.1)
        let animateTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(animate(tapGestureRecognizer:)))
        self.eatingAnimation.isUserInteractionEnabled = true
        self.eatingAnimation.addGestureRecognizer(animateTapGestureRecognizer)
        
        self.detailsLabel.text = self.detailsText
    }
    
    override public func showDetails(underImage imageView: UIImageView) {
        super.showDetails(underImage: imageView)
        detailsLabel.backgroundColor = UIColor(fromHex: 0xA991CF)
    }
    
}
