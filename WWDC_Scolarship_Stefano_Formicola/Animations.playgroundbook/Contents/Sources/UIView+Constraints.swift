import UIKit

extension UIView {
    public func constrainToCenter(of view: UIView) {
        view.addSubview(self)
        
        let parent = superview!
        
        let centerX = self.centerXAnchor.constraint(equalTo: parent.centerXAnchor)
        let centerY = self.centerYAnchor.constraint(equalTo: parent.centerYAnchor)
        
        NSLayoutConstraint.activate([
            centerX,
            centerY,
        ])
    }
    
    public func constrainToView() {
        let parent = superview!
        
        let leading = self.leadingAnchor.constraint(equalTo: parent.leadingAnchor)
        let trailing = self.trailingAnchor.constraint(equalTo: parent.trailingAnchor)
        let top = self.topAnchor.constraint(equalTo: parent.topAnchor)
        let bottom = self.bottomAnchor.constraint(equalTo: parent.bottomAnchor)
        
        NSLayoutConstraint.activate([
            leading,
            trailing,
            top,
            bottom
        ])
    }

}
