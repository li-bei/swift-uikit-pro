import UIKit

open class UITableViewCellPro: UITableViewCell {
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    // MARK: NSCoding
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError()
    }
}
