import UIKit

extension UIView {
    public func heightThatFits(_ width: CGFloat = 0) -> CGFloat {
        return sizeThatFits(CGSize(width: width, height: 0)).height
    }
}
