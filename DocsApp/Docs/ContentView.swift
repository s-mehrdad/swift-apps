
// ===========================================================================
/// <summary>
/// ContentView.swift
/// Docs
/// created by Mehrdad Soleimanimajd on 06.09.2023
/// </summary>
/// <created>ʆϒʅ, 06.09.2023</created>
/// <changed>ʆϒʅ, 06.09.2023</changed>
// ===========================================================================

import SwiftUI

struct ContentView: View {
    @State private var onTapOne = false
    @State private var onTapTwo = false
    @Binding var textDocument: DocsDocument
    
// TODO how to interface files
//    @Binding var jsonDocument: DocsJson

    var body: some View {
        TextEditor(text: $textDocument.text).padding(self.onTapOne ? 50:0)
        TextEditor(text: $textDocument.text)
        DocsView(onTapOne: $onTapOne)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(textDocument: .constant(DocsDocument()))
    }
}
