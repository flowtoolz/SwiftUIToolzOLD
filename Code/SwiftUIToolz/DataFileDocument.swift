import SwiftUI
import UniformTypeIdentifiers

@available(macOS 11.0, *)
public struct DataFileDocument: FileDocument
{
    public static var readableContentTypes: [UTType] = [.data]
                    
    public init(data: Data)
    {
        self.data = data
    }
    
    public init(configuration: ReadConfiguration) throws
    {
        data = try configuration.file.regularFileContents.unwrap()
    }
    
    public func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper
    {
        .init(regularFileWithContents: data)
    }
    
    public let data: Data
}
