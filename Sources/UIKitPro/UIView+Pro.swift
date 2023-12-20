import UIKit

extension UIView {
    public var displayScale: CGFloat { traitCollection.displayScale }
    
    public var systemBorderWidth: CGFloat {
        if traitCollection.preferredContentSizeCategory.isAccessibilityCategory {
            1
        } else {
            1 / displayScale
        }
    }
    
    public var systemSpacing: CGFloat { 8 }
    
    public func heightThatFits(_ width: CGFloat = 0) -> CGFloat {
        return sizeThatFits(CGSize(width: width, height: 0)).height
    }
}
