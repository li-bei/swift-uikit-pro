import CoreFoundation

extension CGFloat {
    public mutating func pixelAlign(_ displayScale: CGFloat) {
        self = self.pixelAligned(displayScale)
    }
    
    public func pixelAligned(_ displayScale: CGFloat) -> CGFloat {
        return (self * displayScale).rounded() / displayScale
    }
}
