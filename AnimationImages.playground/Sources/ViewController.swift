import Foundation
import UIKit

open class ViewController: UIViewController {
    
    open var detailsLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.layer.cornerRadius = 5.0
        label.layer.masksToBounds = true
        return label
    }()
    
    override open func loadView() {
        super.loadView()
        let view = UIView()
        self.view = view
        self.view.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override open func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateViewConstraints()
    }
    
    @objc open func animate(tapGestureRecognizer: UITapGestureRecognizer) {
        guard let sender = tapGestureRecognizer.view as? UIImageView else { return }
        sender.isAnimating ? sender.stopAnimating() : sender.startAnimating()
        sender.isAnimating ? showDetails(underImage: sender) : hideDetails()
    }
    
    open func showDetails(underImage imageView: UIImageView) {
        self.view.addSubview(self.detailsLabel)

        self.detailsLabel.widthAnchor.constraint(lessThanOrEqualToConstant: imageView.frame.size.width).isActive = true
        self.detailsLabel.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        self.detailsLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8).isActive = true
        self.detailsLabel.bottomAnchor.constraint(lessThanOrEqualTo: self.view.bottomAnchor, constant: -30).isActive = true
    }
    
    open func hideDetails() {
        self.detailsLabel.removeFromSuperview()
    }
    
}
