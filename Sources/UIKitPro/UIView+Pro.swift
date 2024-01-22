import UIKit

extension UIView {
    public var systemBorderWidth: CGFloat {
        if traitCollection.preferredContentSizeCategory.isAccessibilityCategory {
            return 1
        } else {
            return 1 / traitCollection.displayScale
        }
    }
    
    public var systemSpacing: CGFloat { 8 }
}
