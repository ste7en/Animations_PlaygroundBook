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
}
