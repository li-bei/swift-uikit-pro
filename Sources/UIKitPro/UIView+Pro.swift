import UIKit

extension UIView {
    public var isShown: Bool { !isHidden }

    public var systemSpacing: CGFloat { 8 }

    public func heightThatFits(_ width: CGFloat = 0) -> CGFloat {
        return sizeThatFits(width).height
    }

    public func sizeThatFits(_ width: CGFloat = 0) -> CGSize {
        return sizeThatFits(CGSize(width: width, height: 0))
    }
}
