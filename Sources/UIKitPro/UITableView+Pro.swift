import UIKit

extension UITableView {
    public func dequeueReusable<Cell: UITableViewCell>(_ cellClass: Cell.Type, for indexPath: IndexPath) -> Cell {
        let identifier = String(reflecting: cellClass)
        register(cellClass, forCellReuseIdentifier: identifier)
        return dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! Cell
    }
}
