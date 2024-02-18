import Foundation

extension NSMutableAttributedString {
    public func addAttributes(_ attributes: [NSAttributedString.Key: Any]) {
        addAttributes(attributes, range: NSRange(location: 0, length: length))
    }
}
