import UIKit

extension NSLayoutXAxisAnchor {
    public func constraint(equalToSystemSpacingAfter anchor: NSLayoutXAxisAnchor) -> NSLayoutConstraint {
        return constraint(equalToSystemSpacingAfter: anchor, multiplier: 1)
    }
}
