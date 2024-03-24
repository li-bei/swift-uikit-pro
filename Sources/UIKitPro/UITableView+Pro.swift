import UIKit

extension UITableView {
    public func dequeueReusable<Cell: UITableViewCell>(_ cellClass: Cell.Type, for indexPath: IndexPath) -> Cell {
        let identifier = String(reflecting: cellClass)
        register(cellClass, forCellReuseIdentifier: identifier)
        return dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! Cell
    }

    public func dequeueReusable<View: UITableViewHeaderFooterView>(_ viewClass: View.Type) -> View {
        let identifier = String(reflecting: viewClass)
        register(viewClass, forHeaderFooterViewReuseIdentifier: identifier)
        return dequeueReusableHeaderFooterView(withIdentifier: identifier) as! View
    }
}
