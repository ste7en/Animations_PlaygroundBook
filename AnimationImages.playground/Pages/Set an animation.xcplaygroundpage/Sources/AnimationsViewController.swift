import UIKit

public class AnimationsViewController: ViewController {
    
    public var walkingLord: UIImageView = UIImageView.imageViewForConstraints(image: UIImage(named: "Walking/bulldog1.png"), contentMode: .scaleAspectFit)
    let grassView = UIImageView.imageViewForConstraints(image: UIImage(named: "Background/Grass.png"), contentMode: .scaleAspectFill)
    let clouds = UIImageView.imageViewForConstraints(image: UIImage(named: "Background/Clouds.png"), contentMode: .scaleAspectFit)
    let bush = UIImageView.imageViewForConstraints(image: UIImage(named: "Background/Bush.png"), contentMode : .scaleAspectFit)
    let leftTrees = UIImageView.imageViewForConstraints(image: UIImage(named: "Background/Trees.png"), contentMode: .scaleAspectFit)
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(fromHex: 0xBBE1E5)
        
        // Grass settings
        self.view.addSubview(grassView)
        // Autolayout and aspect ratio
        grassView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        grassView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        grassView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        grassView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1/3).isActive = true
        
        // Clouds setting
        self.view.addSubview(clouds)
        // Autolayout and aspect ratio
        clouds.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        clouds.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        clouds.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        clouds.heightAnchor.constraint(equalTo: clouds.widthAnchor, multiplier: clouds.imageAspectRatio).isActive = true
        
        // Bush setting
        self.view.addSubview(bush)
        // Autolayout and aspect ratio
        bush.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        bush.bottomAnchor.constraint(equalTo: grassView.topAnchor).isActive = true
        bush.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25).isActive = true
        bush.heightAnchor.constraint(equalTo: bush.widthAnchor, multiplier: bush.imageAspectRatio).isActive = true
        
        // Trees on the left setting
        self.view.addSubview(leftTrees)
        // Autolayout and aspect ratio
        leftTrees.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: self.view.frame.width * 0.11).isActive = true
        leftTrees.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.3).isActive = true
        leftTrees.heightAnchor.constraint(equalTo: leftTrees.widthAnchor, multiplier: leftTrees.imageAspectRatio).isActive = true
        leftTrees.bottomAnchor.constraint(equalTo: grassView.topAnchor).isActive = true
        
        
        // Tree on the right setting
        let rightTree = UIImageView.imageViewForConstraints(image: UIImage(named: "Background/RightTree.png"), contentMode: .scaleAspectFit)
        self.view.addSubview(rightTree)
        // Autolayout and aspect ratio
        rightTree.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        rightTree.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.28).isActive = true
        rightTree.heightAnchor.constraint(equalTo: rightTree.widthAnchor, multiplier: rightTree.imageAspectRatio).isActive = true
        rightTree.bottomAnchor.constraint(equalTo: grassView.topAnchor).isActive = true
    
    }
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.layoutIfNeeded()
    }
    
    public func move(steps: CGFloat, duration: Double) {
        UIView.animate(withDuration: duration, delay: 0.5, options: [.curveLinear], animations: {

            // Starts the animation frames
            self.walkingLord.startAnimating()
            
            let translationTransform = CGAffineTransform(translationX: steps, y: 0)
            self.walkingLord.transform = translationTransform
            
        }, completion: { _ in
            // Stops the animation
            self.walkingLord.stopAnimating()
        })
    }
    
    public func walk(duration: TimeInterval) {
        move(steps: self.view.bounds.width/10, duration: duration)
    }
    
    public func addLordToView() {
        // Lord image setting
        self.view.addSubview(walkingLord)
        // Autolayout and aspect ratio
        walkingLord.centerYAnchor.constraint(equalTo: grassView.centerYAnchor).isActive = true
        walkingLord.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        walkingLord.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        walkingLord.heightAnchor.constraint(equalTo: walkingLord.widthAnchor, multiplier: walkingLord.imageAspectRatio).isActive = true
    }
    
}

