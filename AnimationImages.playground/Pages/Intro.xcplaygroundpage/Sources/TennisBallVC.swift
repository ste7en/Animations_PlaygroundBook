import UIKit

public class TennisBallViewController: ViewController {
    
    var tennisBallFrames: [UIImage] = []
    let tennisBallAnimation: UIImageView = UIImageView.imageViewForConstraints(image: UIImage(named: "TennisBall/ball0.png"), contentMode: .scaleAspectFit)
    public let backgroundColor = UIColor(fromHex: 0x75E6B5)
    
    override public func loadView() {
        super.loadView()
        self.view.backgroundColor = nil
        tennisBallAnimation.constrainToCenter(of: self.view)
        tennisBallAnimation.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor, constant: 16).isActive = true
        tennisBallAnimation.trailingAnchor.constraint(lessThanOrEqualTo: self.view.trailingAnchor, constant: -16).isActive = true
    }
    
    override public func viewDidLoad() {
        for i in 0...5 {
            if let image = UIImage(named: "TennisBall/ball\(i).png") {
                tennisBallFrames.append(image)
            }
        }
        self.tennisBallAnimation.transform  = CGAffineTransform(scaleX: 0.5, y: 0.5)
        self.tennisBallAnimation.setAnimation(sequence: tennisBallFrames, time: 0.8)
        self.tennisBallAnimation.startAnimating()

    }
    
}

