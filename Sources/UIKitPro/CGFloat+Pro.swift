import CoreFoundation

extension CGFloat {
    public mutating func pixelAlign(_ displayScale: CGFloat) {
        self = (self * displayScale).rounded() / displayScale
    }
}
