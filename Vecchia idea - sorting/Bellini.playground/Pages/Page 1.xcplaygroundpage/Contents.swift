//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController: UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .yellow

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black

        view.addSubview(label)
        self.view = view
    }

    func unsortedImageViews() -> [UIImageView] {
        let firstImageView = UIImageView(image: #imageLiteral(resourceName: "character1.png"))
        firstImageView.isUserInteractionEnabled = true
        firstImageView.tag = 1

        let secondImageView = UIImageView(image: #imageLiteral(resourceName: "character2.png"))
        secondImageView.isUserInteractionEnabled = true
        secondImageView.tag = 2

        let thirdImageView = UIImageView(image: #imageLiteral(resourceName: "character3.png"))
        thirdImageView.isUserInteractionEnabled = true
        thirdImageView.tag = 3

        let fourthImageView = UIImageView(image: #imageLiteral(resourceName: "character4.png"))
        fourthImageView.isUserInteractionEnabled = true
        fourthImageView.tag = 4

        let fifthImageView = UIImageView(image: #imageLiteral(resourceName: "character5.png"))
        fifthImageView.isUserInteractionEnabled = true
        fifthImageView.tag = 5

        return [firstImageView, secondImageView, thirdImageView, fourthImageView, fifthImageView]
    }
}
var vc = MyViewController()
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = vc

let images = vc.unsortedImageViews()
let stackView = UIStackView(arrangedSubviews: images)
stackView.axis = .horizontal
stackView.alignment = .bottom
stackView.distribution = .fill
stackView.spacing = 5

//stackView.autoresizingMask = .flexibleRightMargin
//stackView.autoresizingMask = .flexibleBottomMargin

vc.view.addSubview(stackView)

stackView.translatesAutoresizingMaskIntoConstraints = false
//stackView.autoresizingMask = .flexibleHeight

stackView.autoresizesSubviews = true
//stackView.heightAnchor.constraint(lessThanOrEqualToConstant: #imageLiteral(resourceName: "character5.png").size.height/2).isActive = true
//stackView.leadingAnchor.constraint(equalTo: vc.view.leadingAnchor).isActive = true
//stackView.trailingAnchor.constraint(equalTo: vc.view.trailingAnchor).isActive = true
//stackView.bottomAnchor.constraint(equalTo: vc.view.bottomAnchor).isActive = true
stackView.constrainToCenterOfParent(withAspectRatio: 1.0)





