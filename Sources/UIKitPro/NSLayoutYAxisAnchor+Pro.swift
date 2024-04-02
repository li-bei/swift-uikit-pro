import UIKit

extension NSLayoutYAxisAnchor {
    public func constraint(equalToSystemSpacingBelow anchor: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
        return constraint(equalToSystemSpacingBelow: anchor, multiplier: 1)
    }
}
