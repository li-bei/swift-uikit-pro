import UIKit

extension UINavigationItem {
    @available(iOS 16.0, *)
    public var localizedTitle: LocalizedStringResource {
        get { fatalError() }
        set { title = String(localized: newValue) }
    }
}
