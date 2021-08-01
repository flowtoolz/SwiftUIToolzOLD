import SwiftUI

/// A simple navigation link without a chevron
public struct PlainNavigationLink<Label: View, Destination: View>: View {
    public init(destination: Destination, label: @escaping () -> Label) {
        self.destination = destination
        self.label = label
    }
    
    public var body: some View {
        ZStack(alignment: .leading) {
            label()
            NavigationLink(destination: destination) {
                EmptyView()
            }
            .opacity(0)
        }
    }
    
    public let destination: Destination
    
    @ViewBuilder
    public let label: () -> Label
}

/// An isolated navigation link chevron
public struct NavigationChevron: View {
    public init() { }
    
    public var body: some View {
        Image(systemName: "chevron.forward")
            .imageScale(.small)
            .foregroundColor(Color(UIColor.systemGray3))
            .font(.body.weight(.semibold))
    }
}
