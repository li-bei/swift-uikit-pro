import UIKit

extension UILayoutPriority {
    public static var almostDefaultLow: UILayoutPriority { .defaultLow - 1 }
    
    public static var almostRequired: UILayoutPriority { .required - 1 }
}
