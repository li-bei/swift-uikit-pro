import UIKit

extension UIActivityViewController {
    public convenience init(activityItems: [Any]) {
        self.init(activityItems: activityItems, applicationActivities: nil)
    }
}
