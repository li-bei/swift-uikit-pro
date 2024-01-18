import UIKit

@available(iOS 14.0, *)
extension UIListContentConfiguration {
    @available(iOS 16.0, *)
    public var localizedText: LocalizedStringResource {
        get { fatalError() }
        set { text = String(localized: newValue) }
    }
}
