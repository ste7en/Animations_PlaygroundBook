import Foundation
import UIKit
import PlaygroundSupport

public class SpaceViewController: ViewController {
    
    public let earth = UIImageView.imageViewForConstraints(image: #imageLiteral(resourceName: "EarthMoon.png"))
    public let spaceBackgroundView = UIImageView.imageViewForConstraints(image: #imageLiteral(resourceName: "Background.png"), contentMode: .scaleAspectFill)
    override public func loadView() {
        super.loadView()

        self.view.addSubview(spaceBackgroundView)
        spaceBackgroundView.constrainToView()
        
        let sun = UIImageView.imageViewForConstraints(image: #imageLiteral(resourceName: "Sun.png"))
        spaceBackgroundView.addSubview(sun)
        let sunAspectRatio = sun.image!.size.width / sun.image!.size.height
        
        spaceBackgroundView.addSubview(earth)
        
        let saturn = UIImageView.imageViewForConstraints(image: #imageLiteral(resourceName: "Saturn.png"))
        spaceBackgroundView.addSubview(saturn)
        
        
        sun.leadingAnchor.constraint(equalTo: spaceBackgroundView.leadingAnchor, constant: 50).isActive = true
        sun.topAnchor.constraint(equalTo: spaceBackgroundView.topAnchor, constant: 200).isActive = true
        sun.widthAnchor.constraint(equalTo: sun.heightAnchor, multiplier: sunAspectRatio).isActive = true
        
        earth.trailingAnchor.constraint(equalTo: spaceBackgroundView.trailingAnchor, constant: -20).isActive = true
        earth.bottomAnchor.constraint(equalTo: spaceBackgroundView.bottomAnchor, constant: -400).isActive = true
        
        saturn.bottomAnchor.constraint(equalTo: spaceBackgroundView.bottomAnchor, constant: -175).isActive = true
        saturn.leadingAnchor.constraint(equalTo: spaceBackgroundView.leadingAnchor, constant: 15).isActive = true
        
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override public func viewDidLayoutSubviews() {
        self.spaceBackgroundView.updateConstraints()
        self.earth.updateConstraints()
    }
    
        
}
