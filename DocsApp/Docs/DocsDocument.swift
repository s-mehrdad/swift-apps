
// ===========================================================================
/// <summary>
/// DocsDocument.swift
/// Docs
/// created by Mehrdad Soleimanimajd on 06.09.2023
/// </summary>
/// <created>ʆϒʅ, 06.09.2023</created>
/// <changed>ʆϒʅ, 06.09.2023</changed>
// ===========================================================================

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static var exampleText: UTType {
        UTType(importedAs: "com.example.plain-text")
    }
    static var exampleJson: UTType {
        UTType(importedAs: "com.example.json")
    }
}

struct DocsDocument: FileDocument {
    var text: String

    init(text: String = "Hello, world!") {
        self.text = text
    }

    static var readableContentTypes: [UTType] { [.exampleText] }

    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents,
              let string = String(data: data, encoding: .utf8)
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        text = string
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let data = text.data(using: .utf8)!
        return .init(regularFileWithContents: data)
    }
}

struct DocsJson: FileDocument {
    var json: String

    init(json: String = "{name: jsonFileType,}") {
        self.json = json
    }

    static var readableContentTypes: [UTType] { [.exampleJson] }

    init(configuration: ReadConfiguration) throws {
        guard let data = configuration.file.regularFileContents,
              let string = String(data: data, encoding: .utf8)
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        json = string
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let data = json.data(using: .utf8)!
        return .init(regularFileWithContents: data)
    }
}
