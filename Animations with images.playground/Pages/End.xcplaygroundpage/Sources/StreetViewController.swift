import UIKit

public class StreetViewController: ViewController {
    
    let streetView = UIImageView.imageViewForConstraints(image: UIImage(named: "Background/Street.png"), contentMode: .scaleAspectFill)
    let skyDetails = UIImageView.imageViewForConstraints(image: UIImage(named: "Background/skyDetails.png"), contentMode: .scaleAspectFit)
    let buildings = UIImageView.imageViewForConstraints(image: UIImage(named: "Background/buildings.png"), contentMode : .scaleAspectFit)
    let drivingLord = UIImageView.imageViewForConstraints(image: UIImage(named: "Car/Car1.png"), contentMode : .scaleAspectFit)
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(fromHex: 0xA0D7F0)
        // Street settings
        self.view.addSubview(streetView)
        // Autolayout and aspect ratio
        streetView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        streetView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        streetView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        streetView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.25).isActive = true

        // Sky details setting
        self.view.addSubview(skyDetails)
        // Autolayout and aspect ratio
        skyDetails.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        skyDetails.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        skyDetails.heightAnchor.constraint(equalTo: skyDetails.widthAnchor, multiplier: skyDetails.imageAspectRatio).isActive = true
        skyDetails.widthAnchor.constraint(lessThanOrEqualTo: self.view.widthAnchor).isActive = true

        // Buildings setting
        self.view.addSubview(buildings)
        // Autolayout and aspect ratio
        buildings.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        buildings.bottomAnchor.constraint(equalTo: streetView.topAnchor).isActive = true
        buildings.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        buildings.heightAnchor.constraint(equalTo: buildings.widthAnchor, multiplier: buildings.imageAspectRatio).isActive = true
    }
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.layoutIfNeeded()
    }
    
    public func addLordToView() {
        // Lord image setting
        self.view.addSubview(drivingLord)
        // Autolayout and aspect ratio
        drivingLord.bottomAnchor.constraint(equalTo: self.streetView.bottomAnchor, constant: -20).isActive = true
        drivingLord.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        drivingLord.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25).isActive = true
        drivingLord.heightAnchor.constraint(equalTo: drivingLord.widthAnchor, multiplier: drivingLord.imageAspectRatio).isActive = true
        setAnimationFrames()
    }
    
    private func setAnimationFrames() {
        var frames: [UIImage] = []
        for i in 1...4 {
            if let image = UIImage(named:"Car/Car\(i).png") {
                frames.append(image)
            }
        }
        drivingLord.setAnimation(sequence: frames, time: 1.0)
    }
    
    func drive(speed: Double) {
        UIView.animate(withDuration: speed, delay: 1.0, options: [.curveLinear], animations: {
            
            // Starts the animation frames
            self.drivingLord.startAnimating()
            
            let translationTransform = CGAffineTransform(translationX: self.view.frame.size.width, y: 0)
            self.drivingLord.transform = translationTransform
            
        }, completion: { _ in
            // Stops the animation
            self.drivingLord.stopAnimating()
        })
    }

    
}

