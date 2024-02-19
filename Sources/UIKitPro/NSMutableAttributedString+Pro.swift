import Foundation

extension NSMutableAttributedString {
    public func addAttributes(_ attributes: [NSAttributedString.Key: Any]) {
        addAttributes(attributes, range: NSRange(location: 0, length: length))
    }
    
    public func append(_ string: String, attributes: [NSAttributedString.Key: Any]? = nil) {
        append(NSAttributedString(string: string, attributes: attributes))
    }
}
