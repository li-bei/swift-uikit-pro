import UIKit

open class UITableViewControllerPro: UITableViewController {
    public override init(style: UITableView.Style) {
        super.init(style: style)
    }

    // MARK: NSCoding

    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError()
    }
}
