import UIKit

public class TennisBallViewController: ViewController {
    
    var tennisBallFrames: [UIImage] = []
    let tennisBallAnimation: UIImageView = UIImageView.imageViewForConstraints(image: UIImage(named: "TennisBall/ball0.png"), contentMode: .scaleAspectFit)
    public let backgroundColor = UIColor(fromHex: 0x75E6B5)
    let detailsText: String = "Since he was a puppy he loves playing with his tennis ball, which chases all day."
    
    override public func loadView() {
        super.loadView()
        self.view.backgroundColor = nil
        tennisBallAnimation.constrainToCenter(of: self.view)
        tennisBallAnimation.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor, constant: 16).isActive = true
        tennisBallAnimation.trailingAnchor.constraint(lessThanOrEqualTo: self.view.trailingAnchor, constant: -16).isActive = true
        tennisBallAnimation.heightAnchor.constraint(equalTo: tennisBallAnimation.widthAnchor, multiplier: tennisBallAnimation.imageAspectRatio).isActive = true
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...5 {
            if let image = UIImage(named: "TennisBall/ball\(i).png") {
                tennisBallFrames.append(image)
            }
        }

        self.tennisBallAnimation.setAnimation(sequence: tennisBallFrames, time: 0.8)
        let animateTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(animate(tapGestureRecognizer:)))
        self.tennisBallAnimation.isUserInteractionEnabled = true
        self.tennisBallAnimation.addGestureRecognizer(animateTapGestureRecognizer)

        self.detailsLabel.text = self.detailsText
    }
    
    override public func showDetails(underImage imageView: UIImageView) {
        super.showDetails(underImage: imageView)
        detailsLabel.backgroundColor = UIColor(fromHex: 0x62BF97)
    }
    
}

