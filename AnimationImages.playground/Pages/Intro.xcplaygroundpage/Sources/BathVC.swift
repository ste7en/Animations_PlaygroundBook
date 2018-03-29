import UIKit

public class BathViewController: ViewController {
    
    var washingBulldogFrames: [UIImage] = []
    let washingBulldogAnimation: UIImageView = UIImageView.imageViewForConstraints(image: UIImage(named: "WashingBulldog/Washing0.png"), contentMode: .scaleAspectFit)
    public let backgroundColor = UIColor(fromHex: 0xD8F56E)
    
    override public func loadView() {
        super.loadView()
        self.view.backgroundColor = nil
        washingBulldogAnimation.constrainToCenter(of: self.view)
        washingBulldogAnimation.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor, constant: 16).isActive = true
        washingBulldogAnimation.trailingAnchor.constraint(lessThanOrEqualTo: self.view.trailingAnchor, constant: -16).isActive = true
    }

    
    override public func viewDidLoad() {
        for i in 0...6 {
            if let image = UIImage(named: "WashingBulldog/Washing\(i).png") {
                washingBulldogFrames.append(image)
            }
        }
        self.washingBulldogAnimation.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        self.washingBulldogAnimation.isUserInteractionEnabled = true
        
        //self.washingBulldogAnimation.setAnimation(sequence: washingBulldogFrames, time: 1)
        //self.washingBulldogAnimation.startAnimating()
    }
    
}

