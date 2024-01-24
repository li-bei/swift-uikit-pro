import UIKit

@available(iOS 15.0, *)
extension UIButton.Configuration {
    @available(iOS 16.0, *)
    public var localizedSubtitle: LocalizedStringResource {
        get { fatalError() }
        set { subtitle = String(localized: newValue) }
    }
}
