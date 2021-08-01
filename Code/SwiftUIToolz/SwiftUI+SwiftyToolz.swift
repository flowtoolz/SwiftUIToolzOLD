import SwiftUI
import SwiftyToolz

public extension SwiftUI.Color {
    static var random: SwiftUI.Color {
        SwiftUI.Color(SwiftyToolz.Color.random)
    }
    
    init(_ color: SwiftyToolz.Color) {
        self = .init(red: Double(color.red),
                     green: Double(color.green),
                     blue: Double(color.blue))
    }
}
