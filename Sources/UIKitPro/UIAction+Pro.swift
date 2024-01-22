import UIKit

@available(iOS 13.0, *)
extension UIAction {
    @available(iOS 16.0, *)
    public convenience init(
        localizedTitle: LocalizedStringResource,
        localizedSubtitle: LocalizedStringResource? = nil,
        image: UIImage? = nil,
        identifier: UIAction.Identifier? = nil,
        discoverabilityTitle: String? = nil,
        attributes: UIMenuElement.Attributes = [],
        state: UIMenuElement.State = .off,
        handler: @escaping UIActionHandler
    ) {
        self.init(
            title: String(localized: localizedTitle),
            subtitle: {
                if let localizedSubtitle {
                    return String(localized: localizedSubtitle)
                } else {
                    return nil
                }
            }(),
            image: image,
            identifier: identifier,
            discoverabilityTitle: discoverabilityTitle,
            attributes: attributes,
            state: state,
            handler: handler
        )
    }
}
