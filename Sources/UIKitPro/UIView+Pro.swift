import UIKit

extension UIView {
    public var systemSpacing: CGFloat { 8 }

    public func heightThatFits(_ width: CGFloat = 0) -> CGFloat {
        return sizeThatFits(CGSize(width: width, height: 0)).height
    }

    public func sizeThatFits() -> CGSize {
        return sizeThatFits(.zero)
    }
}
