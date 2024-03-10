import CoreFoundation

extension CGRect {
    public init(x: CGFloat, y: CGFloat, size: CGSize) {
        self.init(origin: CGPoint(x: x, y: y), size: size)
    }
}
