import UIKit

extension UISegmentedControl {
    @available(iOS 14.0, *)
    public convenience init(actions: [UIAction]) {
        self.init(frame: .zero, actions: actions)
    }
}
