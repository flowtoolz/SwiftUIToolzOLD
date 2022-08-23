import SwiftUI
import SwiftyToolz

public extension View
{
    func framePosition(_ frame: Frame) -> some View
    {
        modifier(FramePosition(frame: frame))
    }
}

public struct FramePosition: ViewModifier
{
    public func body(content: Content) -> some View
    {
        content
            .frame(width: frame.width, height: frame.height)
            .position(x: frame.centerX, y: frame.centerY)
    }
    
    let frame: Frame
}

public extension CGPoint
{
    init(_ point: Point)
    {
        self.init(x: point.x, y: point.y)
    }
}
