import UIKit

open class UIViewControllerPro: UIViewController {
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    // MARK: NSCoding
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError()
    }
}
