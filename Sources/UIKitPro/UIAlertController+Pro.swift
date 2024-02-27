import UIKit

extension UIAlertController {
    public convenience init(title: String) {
        self.init(title: title, message: nil, preferredStyle: .alert)
    }
    
    public func setActions(_ actions: [UIAlertAction]) {
        setValue(actions, forKey: #keyPath(UIAlertController.actions))
    }
}
