import UIKit

public class NightViewController: ViewController {
    
    var nightFrames: [UIImage] = []
    let nightAnimation: UIImageView = UIImageView.imageViewForConstraints(image: UIImage(named: "Night/Night0.png"), contentMode: .scaleAspectFit)
    public let backgroundColor = UIColor(fromHex: 0x100F54)

    override public func loadView() {
        super.loadView()
        self.view.backgroundColor = nil
        nightAnimation.constrainToCenter(of: self.view)
        nightAnimation.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor, constant: 16).isActive = true
        nightAnimation.trailingAnchor.constraint(lessThanOrEqualTo: self.view.trailingAnchor, constant: -16).isActive = true
        
        
    }
    
    override public func viewDidLoad() {
        for i in 0...3 {
            if let image = UIImage(named: "Night/Night\(i).png") {
                nightFrames.append(image)
            }
        }
        self.nightAnimation.transform  = CGAffineTransform(scaleX: 0.5, y: 0.5)
        self.nightAnimation.setAnimation(sequence: nightFrames, time: 0.8)
        self.nightAnimation.startAnimating()
    }
    
}
