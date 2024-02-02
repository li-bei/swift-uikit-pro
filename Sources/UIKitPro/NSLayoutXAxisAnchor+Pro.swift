import UIKit

extension NSLayoutXAxisAnchor {
    public func constraint(
        equalToSystemSpacingBefore anchor: NSLayoutXAxisAnchor,
        multiplier: CGFloat = 1
    ) -> NSLayoutConstraint {
        return anchor.constraint(equalToSystemSpacingAfter: self, multiplier: multiplier)
    }
}
