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
        //        washingBulldogAnimation.widthAnchor.constraint(lessThanOrEqualTo: self.view.widthAnchor).isActive = true
        washingBulldogAnimation.heightAnchor.constraint(equalTo: washingBulldogAnimation.widthAnchor, multiplier: washingBulldogAnimation.imageAspectRatio).isActive = true
    }
    
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...6 {
            if let image = UIImage(named: "WashingBulldog/Washing\(i).png") {
                washingBulldogFrames.append(image)
            }
        }
        
        self.washingBulldogAnimation.transform = CGAffineTransform(scaleX: 0.75, y: 0.75)
        
        self.washingBulldogAnimation.layer.borderWidth = 1
        
        self.washingBulldogAnimation.setAnimation(sequence: washingBulldogFrames, time: 1)
        let animateTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(animate(tapGestureRecognizer:)))
        self.washingBulldogAnimation.isUserInteractionEnabled = true
        self.washingBulldogAnimation.addGestureRecognizer(animateTapGestureRecognizer)
    }
    
}

