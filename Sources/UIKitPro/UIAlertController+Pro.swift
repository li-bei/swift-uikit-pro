import UIKit

extension UIAlertController {
    public convenience init(title: String?, message: String? = nil) {
        self.init(title: title, message: message, preferredStyle: .alert)
    }
}
