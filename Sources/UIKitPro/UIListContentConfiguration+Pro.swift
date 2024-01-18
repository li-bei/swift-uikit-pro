import UIKit

@available(iOS 14.0, *)
extension UIListContentConfiguration {
    @available(iOS 16.0, *)
    public mutating func setLocalizedText(_ resource: LocalizedStringResource) {
        text = String(localized: resource)
    }
}
