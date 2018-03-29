import Foundation
import UIKit

open class ViewController: UIViewController {
    
    override open func loadView() {
        super.loadView()
        let view = UIView()
        self.view = view
    }
    
    override open func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateViewConstraints()
    }
    
    @objc open func animate(tapGestureRecognizer: UITapGestureRecognizer) {
        guard let sender = tapGestureRecognizer.view as? UIImageView else { print(1); return }
        sender.isAnimating ? sender.stopAnimating() : sender.startAnimating()
    }
}
