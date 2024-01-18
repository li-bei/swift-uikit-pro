import UIKit

extension UIBarButtonItem {
    @available(iOS 16.0, *)
    public convenience init(
        localizedTitle resource: LocalizedStringResource,
        image: UIImage? = nil,
        primaryAction: UIAction? = nil,
        menu: UIMenu? = nil
    ) {
        self.init(title: String(localized: resource), image: image, primaryAction: primaryAction, menu: menu)
    }
}
