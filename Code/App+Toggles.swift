#if os(macOS)
import SwiftUI

@available(macOS 11.0, *)
public extension App
{
    static func toggleSidebar()
    {
        // https://stackoverflow.com/questions/61771591/toggle-sidebar-in-swiftui-navigationview-on-macos
        NSApp.sendAction(#selector(NSSplitViewController.toggleSidebar(_:)),
                         to: nil,
                         from: nil)
    }
    
    static func toggleFullscreen()
    {
        NSApp.keyWindow?.toggleFullScreen(nil)
    }
}
#endif
