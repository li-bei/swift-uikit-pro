import UIKit

open class UITableViewHeaderFooterViewPro: UITableViewHeaderFooterView {
    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
    }

    // MARK: NSCoding

    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError()
    }
}
