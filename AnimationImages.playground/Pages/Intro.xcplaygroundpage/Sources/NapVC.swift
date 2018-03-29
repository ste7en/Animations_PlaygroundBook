import UIKit

public class NapViewController: ViewController {
    
    var napFrames: [UIImage] = []
    let napAnimation: UIImageView = UIImageView.imageViewForConstraints(image: UIImage(named: "Nap/Nap0.png"), contentMode: .scaleAspectFit)
    public let backgroundColor = UIColor(fromHex: 0xFFF68F)
    
    override public func loadView() {
        super.loadView()
        self.view.backgroundColor = nil
        napAnimation.constrainToCenter(of: self.view)
        napAnimation.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor, constant: 16).isActive = true
        napAnimation.trailingAnchor.constraint(lessThanOrEqualTo: self.view.trailingAnchor, constant: -16).isActive = true
        
        
    }
    
    override public func viewDidLoad() {
        for i in 0...17 {
            if let image = UIImage(named: "Nap/Nap\(i).png") {
                napFrames.append(image)
            }
        }
        self.napAnimation.transform  = CGAffineTransform(scaleX: 0.5, y: 0.5)
        self.napAnimation.setAnimation(sequence: napFrames, time: 1)
        self.napAnimation.startAnimating()
    }
    
}
