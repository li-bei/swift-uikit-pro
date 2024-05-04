import UIKit

@available(iOS 14.0, *)
extension UIWindow {
    public func show(_ snackbar: Snackbar) {
        for view in subviews where view is SnackbarButton {
            view.removeFromSuperview()
        }

        let button = snackbar.makeButton(primaryAction: UIAction { [weak self] _ in self?.hide(snackbar) })
        button.alpha = 0
        button.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        button.translatesAutoresizingMaskIntoConstraints = false
        addSubview(button)

        func tabBar(in view: UIView) -> UITabBar? {
            if let tabBar = view as? UITabBar {
                return tabBar
            } else {
                for view in view.subviews {
                    if let tabBar = tabBar(in: view) {
                        return tabBar
                    }
                }
                return nil
            }
        }

        let spacing = systemSpacing * 2
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor, constant: spacing),
            button.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor, constant: -spacing),
            button.bottomAnchor.constraint(
                equalTo: tabBar(in: self)?.topAnchor ?? safeAreaLayoutGuide.bottomAnchor,
                constant: -spacing
            ),
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])

        startAnimation {
            button.alpha = 1
            button.transform = .identity
        }

        Task { [weak self] in
            try await Task.sleep(nanoseconds: 3_000_000_000)
            self?.hide(snackbar)
        }
    }

    public func hide(_ snackbar: Snackbar) {
        guard let button = snackbar.button else { return }
        startAnimation {
            button.alpha = 0
            button.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        } completion: {
            button.removeFromSuperview()
        }
    }

    private func startAnimation(_ animations: @escaping () -> Void, completion: (() -> Void)? = nil) {
        let animator = UIViewPropertyAnimator(duration: 0.55, dampingRatio: 1, animations: animations)
        if let completion {
            animator.addCompletion { _ in completion() }
        }
        animator.startAnimation()
    }
}
