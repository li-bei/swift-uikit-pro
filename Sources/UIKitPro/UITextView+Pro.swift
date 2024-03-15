import UIKit

extension UITextView {
    public var attributedPlaceholder: NSAttributedString? {
        get { value(forKey: #function) as? NSAttributedString }
        set { setValue(newValue?.copy(), forKey: #function) }
    }
}
