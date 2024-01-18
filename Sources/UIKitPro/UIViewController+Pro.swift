import UIKit

extension UIViewController {
    public var window: UIWindow? { viewIfLoaded?.window }
    
    @available(iOS 16.0, *)
    public var localizedTitle: LocalizedStringResource {
        get { fatalError() }
        set { title = String(localized: newValue) }
    }
}
