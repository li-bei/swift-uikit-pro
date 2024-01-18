import UIKit

extension UINavigationItem {
    @available(iOS 16.0, *)
    public func setLocalizedTitle(_ resource: LocalizedStringResource) {
        title = String(localized: resource)
    }
}
