import UIKit

extension UIAlertController {
    public convenience init(title: String) {
        self.init(title: title, message: nil, preferredStyle: .alert)
    }
}
