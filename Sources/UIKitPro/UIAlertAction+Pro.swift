import UIKit

extension UIAlertAction {
    public convenience init(title: String?, handler: ((UIAlertAction) -> Void)? = nil) {
        self.init(title: title, style: .default, handler: handler)
    }
}
