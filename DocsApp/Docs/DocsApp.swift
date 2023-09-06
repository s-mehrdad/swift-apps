
// ===========================================================================
/// <summary>
/// DocsApp.swift
/// Docs
/// created by Mehrdad Soleimanimajd on 06.09.2023
/// </summary>
/// <created>ʆϒʅ, 06.09.2023</created>
/// <changed>ʆϒʅ, 06.09.2023</changed>
// ===========================================================================

import SwiftUI

@main
struct DocsApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: DocsDocument()) { file in
            ContentView(textDocument: file.$document)
        }
    }
}
