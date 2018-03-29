import UIKit

extension UIView {
    public func constrainToCenter(of view: UIView) {
        view.addSubview(self)
        
        let parent = superview!
        
        let centerX = self.centerXAnchor.constraint(equalTo: parent.centerXAnchor)
        centerX.priority = .required
        let centerY = self.centerYAnchor.constraint(equalTo: parent.centerYAnchor)
        centerY.priority = .required
        
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
    
    public func constrainToCenterOfParent(withAspectRatio aspectRatio: CGFloat) {
        let parent = superview!
        
        let centerX = self.centerXAnchor.constraint(equalTo: parent.centerXAnchor)
        centerX.priority = .required
        let centerY = self.centerYAnchor.constraint(equalTo: parent.centerYAnchor)
        centerY.priority = .required
        let aspectRatio = self.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: aspectRatio)
        aspectRatio.priority = .required
        let lessThanOrEqualWidth = self.widthAnchor.constraint(lessThanOrEqualTo: parent.widthAnchor)
        lessThanOrEqualWidth.priority = .required
        let lessThanOrEqualHeight = self.widthAnchor.constraint(lessThanOrEqualTo: parent.heightAnchor)
        lessThanOrEqualHeight.priority = .required
        
        let equalWidth = self.widthAnchor.constraint(equalTo: parent.widthAnchor)
        equalWidth.priority = .defaultHigh
        let equalHeight = self.heightAnchor.constraint(equalTo: parent.heightAnchor)
        equalHeight.priority = .defaultHigh
        
        NSLayoutConstraint.activate([
            centerX,
            centerY,
            aspectRatio,
            lessThanOrEqualWidth,
            lessThanOrEqualHeight,
            equalWidth,
            equalHeight
        ])
    }
}
