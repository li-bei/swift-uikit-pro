import UIKit

extension UIControl {
    @available(iOS 14.0, *)
    public convenience init(primaryAction: UIAction) {
        self.init(frame: .zero, primaryAction: primaryAction)
    }
}
