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
}
