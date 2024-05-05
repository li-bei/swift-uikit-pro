import UIKit

@available(iOS 14.0, *)
final class SnackbarButton: UIControlPro {
    private let blurEffect = UIBlurEffect(style: .systemMaterial)

    private lazy var vibrancyEffectView: UIVisualEffectView = {
        let visualEffectView = UIVisualEffectView(effect: UIVibrancyEffect(blurEffect: blurEffect, style: .label))
        let spacing = systemSpacing * 2
        visualEffectView.contentView.layoutMargins = UIEdgeInsets(
            top: spacing,
            left: spacing,
            bottom: spacing,
            right: spacing
        )
        visualEffectView.translatesAutoresizingMaskIntoConstraints = false
        return visualEffectView
    }()

    private(set) lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.preferredSymbolConfiguration = UIImage.SymbolConfiguration(font: label.font)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let label: UILabel = {
        let label = UILabel()
        label.adjustsFontForContentSizeCategory = true
        label.font = UIFontDescriptor
            .preferredFontDescriptor(withTextStyle: .subheadline)
            .withSymbolicTraits(.traitBold)
            .map { UIFont(descriptor: $0, size: 0) }
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: - UIControl

    override var isHighlighted: Bool {
        didSet {
            vibrancyEffectView.effect = UIVibrancyEffect(
                blurEffect: blurEffect,
                style: isHighlighted ? .secondaryLabel : .label
            )
        }
    }

    // MARK: - UIView

    override init(frame: CGRect) {
        super.init(frame: frame)

        clipsToBounds = true
        layer.cornerCurve = .continuous
        layer.cornerRadius = 10

        addAction(UIAction { [weak self] _ in self?.sendActions(for: .primaryActionTriggered) }, for: .touchUpInside)

        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.isUserInteractionEnabled = false
        blurEffectView.translatesAutoresizingMaskIntoConstraints = false

        addSubview(blurEffectView)
        blurEffectView.contentView.addSubview(vibrancyEffectView)
        vibrancyEffectView.contentView.addSubview(imageView)
        vibrancyEffectView.contentView.addSubview(label)

        NSLayoutConstraint.activate([
            blurEffectView.leadingAnchor.constraint(equalTo: leadingAnchor),
            blurEffectView.trailingAnchor.constraint(equalTo: trailingAnchor),
            blurEffectView.topAnchor.constraint(equalTo: topAnchor),
            blurEffectView.bottomAnchor.constraint(equalTo: bottomAnchor),

            vibrancyEffectView.leadingAnchor.constraint(equalTo: blurEffectView.contentView.leadingAnchor),
            vibrancyEffectView.trailingAnchor.constraint(equalTo: blurEffectView.contentView.trailingAnchor),
            vibrancyEffectView.topAnchor.constraint(equalTo: blurEffectView.contentView.topAnchor),
            vibrancyEffectView.bottomAnchor.constraint(equalTo: blurEffectView.contentView.bottomAnchor),

            imageView.leadingAnchor.constraint(equalTo: vibrancyEffectView.contentView.layoutMarginsGuide.leadingAnchor),
            imageView.firstBaselineAnchor.constraint(equalTo: label.firstBaselineAnchor),
            label.leadingAnchor.constraint(equalToSystemSpacingAfter: imageView.trailingAnchor),
            label.trailingAnchor.constraint(equalTo: vibrancyEffectView.contentView.layoutMarginsGuide.trailingAnchor),
            label.topAnchor.constraint(equalTo: vibrancyEffectView.contentView.layoutMarginsGuide.topAnchor),
            label.bottomAnchor.constraint(equalTo: vibrancyEffectView.contentView.layoutMarginsGuide.bottomAnchor),
        ])
    }
}
