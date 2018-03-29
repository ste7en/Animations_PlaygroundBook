import UIKit

extension UIImageView {
    
    public var imageAspectRatio: CGFloat {
        guard let img = self.image else { return 0 }
        return img.size.height/img.size.width
    }
    
    public class func imageViewForConstraints(image: UIImage?, contentMode: UIViewContentMode? = nil) -> UIImageView {
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        if let _ = contentMode {
            imageView.contentMode = contentMode!
        }
        return imageView
    }
    
    public func setAnimation(sequence: [UIImage]?, time: TimeInterval) {
        self.animationImages = sequence
        self.animationDuration = time
    }
    
}
