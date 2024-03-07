import UIKit

extension UIAlertController {
    public convenience init(title: String?, message: String?) {
        self.init(title: title, message: message, preferredStyle: .alert)
    }
}
