import SwiftUI
import SwiftyToolz

public extension SwiftUI.Color {
    
    static var random: SwiftUI.Color {
        SwiftUI.Color(SwiftyToolz.Color.random)
    }
    
    init(_ color: SwiftyToolz.Color) {
        self.init(red: color.red,
                  green: color.green,
                  blue: color.blue,
                  opacity: color.alpha)
    }
}

#if os(macOS)
public extension SwiftUI.Color {
    
    init(_ uiColor: UXColor) {
        switch uiColor {
        case .rgba(let color):
            self.init(color)
        case .system(let systemColor):
            self.init(systemColor)
        case .dynamic(let lightMode, let darkMode):
            self = .dynamic(lightMode: lightMode, darkMode: darkMode)
        }
    }
    
    init(_ systemColor: UXColor.System) {
        switch systemColor {
        case .text: self.init(NSColor.textColor)
        case .label: self.init(NSColor.labelColor)
        case .red: self.init(NSColor.systemRed)
        case .orange: self.init(NSColor.systemOrange)
        case .yellow: self.init(NSColor.systemYellow)
        case .green: self.init(NSColor.systemGreen)
        case .blue: self.init(NSColor.systemBlue)
        case .purple: self.init(NSColor.systemPurple)
        case .gray: self.init(NSColor.systemGray)
        case .secondaryLabel: self.init(NSColor.secondaryLabelColor)
        case .teal: self.init(NSColor.systemTeal)
        }
    }
    
    static func dynamic(lightMode: SwiftyToolz.Color,
                        darkMode: SwiftyToolz.Color) -> SwiftUI.Color {
        self.init(NSColor.dynamic(lightMode: .init(lightMode), darkMode: .init(darkMode)))
    }
}

extension NSColor {
    
    convenience init(_ swiftyToolzColor: SwiftyToolz.Color) {
        self.init(red: swiftyToolzColor.red,
                  green: swiftyToolzColor.green,
                  blue: swiftyToolzColor.blue,
                  alpha: swiftyToolzColor.alpha)
    }
    
    public static func `dynamic`(lightMode: NSColor,
                                 darkMode: NSColor) -> NSColor {
        NSColor(name: nil) { appearance in
            switch appearance.name {
            case .aqua,
                .vibrantLight,
                .accessibilityHighContrastAqua,
                .accessibilityHighContrastVibrantLight:
                return lightMode
            case .darkAqua,
                .vibrantDark,
                .accessibilityHighContrastDarkAqua,
                .accessibilityHighContrastVibrantDark:
                return darkMode
            default:
                return lightMode
            }
        }
    }
}
#endif
