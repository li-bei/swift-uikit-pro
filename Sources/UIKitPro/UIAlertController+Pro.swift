import UIKit

extension UIAlertController {
    public convenience init(title: String?, message: String? = nil) {
        self.init(title: title, message: message, preferredStyle: .alert)
    }
    
    public func setActions(_ actions: [UIAlertAction]) {
        setValue(actions, forKeyPath: #keyPath(UIAlertController.actions))
    }
}
