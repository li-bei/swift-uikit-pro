import UIKit

extension UIView {
    public var displayScale: CGFloat { traitCollection.displayScale }
    
    public var systemBorderWidth: CGFloat {
        if traitCollection.preferredContentSizeCategory.isAccessibilityCategory {
            return 1
        } else {
            return 1 / traitCollection.displayScale
        }
    }
    
    public var systemSeparatorHeight: CGFloat { systemBorderWidth }
    
    public var systemSpacing: CGFloat { 8 }
    
    public func heightThatFits(_ width: CGFloat = 0) -> CGFloat {
        return sizeThatFits(width).height
    }
    
    public func sizeThatFits(_ width: CGFloat = 0) -> CGSize {
        return sizeThatFits(CGSize(width: width, height: 0))
    }
}
