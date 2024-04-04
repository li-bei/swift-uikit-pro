import UIKit

open class UIStackViewPro: UIStackView {
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }

    // MARK: NSCoding

    @available(*, unavailable)
    public required init(coder: NSCoder) {
        fatalError()
    }
}
