@available(iOS 14.0, *)
@MainActor
public final class Snackbar {
    let systemImage: String

    let title: String

    public init(systemImage: String, title: String) {
        self.systemImage = systemImage
        self.title = title
    }

    private(set) weak var button: SnackbarButton?

    func makeButton(primaryAction: UIAction) -> SnackbarButton {
        let button = SnackbarButton(primaryAction: primaryAction)
        button.imageView.image = UIImage(systemName: systemImage)
        button.label.text = title
        self.button = button
        return button
    }
}
