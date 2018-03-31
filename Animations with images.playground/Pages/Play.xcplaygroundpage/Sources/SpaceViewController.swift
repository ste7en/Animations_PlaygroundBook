import Foundation
import UIKit
import PlaygroundSupport

public class SpaceViewController: ViewController {
    
    private let spaceBackgroundView = UIImageView.imageViewForConstraints(image: #imageLiteral(resourceName: "Background.png"), contentMode: .scaleAspectFill)
    private let sun = UIImageView.imageViewForConstraints(image: #imageLiteral(resourceName: "Sun.png"))
    private let saturn = UIImageView.imageViewForConstraints(image: #imageLiteral(resourceName: "Saturn.png"))

    public let earth = UIImageView.imageViewForConstraints(image: #imageLiteral(resourceName: "EarthMoon.png"))
    public let spaceLord = UIImageView.imageViewForConstraints(image: UIImage(named: "SpaceLord.png"), contentMode: .scaleAspectFit)
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(spaceBackgroundView)
        spaceBackgroundView.constrainToView()
        
        spaceBackgroundView.addSubview(sun)
        spaceBackgroundView.addSubview(saturn)
        
        sun.leadingAnchor.constraint(equalTo: spaceBackgroundView.leadingAnchor, constant: 50).isActive = true
        sun.topAnchor.constraint(equalTo: spaceBackgroundView.topAnchor, constant: 200).isActive = true
        sun.heightAnchor.constraint(equalTo: sun.widthAnchor, multiplier: sun.imageAspectRatio).isActive = true
        
        saturn.bottomAnchor.constraint(equalTo: spaceBackgroundView.bottomAnchor, constant: -175).isActive = true
        saturn.leadingAnchor.constraint(equalTo: spaceBackgroundView.leadingAnchor, constant: 15).isActive = true

        self.view.addSubview(earth)
        earth.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        earth.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -300).isActive = true
        earth.heightAnchor.constraint(equalTo: earth.widthAnchor, multiplier: earth.imageAspectRatio).isActive = true
    
        self.view.addSubview(spaceLord)
        self.spaceLord.heightAnchor.constraint(equalTo: spaceLord.widthAnchor, multiplier: spaceLord.imageAspectRatio).isActive = true
        self.spaceLord.bottomAnchor.constraint(equalTo: self.earth.bottomAnchor).isActive = true
        spaceLord.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        
        earth.layer.borderWidth = 1
        spaceLord.layer.borderWidth = 1

    }
    
    override public func viewDidLayoutSubviews() {
        self.spaceBackgroundView.updateConstraints()
        self.earth.updateConstraints()
        self.spaceLord.updateConstraints()
    }
    
        
}
