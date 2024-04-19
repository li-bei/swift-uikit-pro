import UIKit

extension UITableView {
    public struct Offset: Codable, Sendable {
        public var indexPath: IndexPath?
        public var y: CGFloat
    }

    public var offset: Offset {
        get {
            if let indexPath = indexPathsForVisibleRows?.first {
                Offset(indexPath: indexPath, y: contentOffset.y + safeAreaInsets.top - rectForRow(at: indexPath).minY)
            } else {
                Offset(indexPath: nil, y: contentOffset.y)
            }
        }
        set {
            if let indexPath = newValue.indexPath {
                if indexPath.section < numberOfSections, indexPath.row < numberOfRows(inSection: indexPath.section) {
                    scrollToRow(at: indexPath, at: .top, animated: false)
                    layoutIfNeeded()
                    scrollToRow(at: indexPath, at: .top, animated: false)
                    contentOffset.y += newValue.y
                }
            } else {
                contentOffset.y = newValue.y
            }
        }
    }

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

    @available(iOS 13.0, *)
    @discardableResult
    public func performBatchUpdates(_ updates: () -> Void) async -> Bool {
        await withCheckedContinuation { continuation in
            performBatchUpdates(updates) { continuation.resume(returning: $0) }
        }
    }
}
