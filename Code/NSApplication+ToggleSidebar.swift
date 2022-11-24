#if os(macOS)
import SwiftUI

public extension NSApplication
{
    func toggleSidebar()
    {
        // https://stackoverflow.com/questions/61771591/toggle-sidebar-in-swiftui-navigationview-on-macos
        NSApp.sendAction(#selector(NSSplitViewController.toggleSidebar(_:)),
                         to: nil,
                         from: nil)
    }
}
#endif
