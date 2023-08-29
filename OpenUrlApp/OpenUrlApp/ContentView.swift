
// ===========================================================================
/// <summary>
/// ContentView.swift
/// OpenUrlApp
/// created by Mehrdad Soleimanimajd on 23.08.2023
/// </summary>
/// <created>ʆϒʅ, 23.08.2023</created>
/// <changed>ʆϒʅ, 29.08.2023</changed>
// ===========================================================================

import SwiftUI

func test(prm: URL = URL(string: "")!) -> Void {
    print(prm)
}

struct ContentView: View {
    
    @Environment(\.openURL) private var openGoogle
    var url = URL(string: "https://www.google.com")
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("Hello, world!").font(.system(size: 12.0, weight: Font.Weight.bold, design: Font.Design.serif)).italic()
            
            Button(action: {test(prm: url!)}) {
                Text ("a Button")
            }.padding(20)
            
            Button(action: {openGoogle(url!)}, label: {Label("Open Google", systemImage:"rectangle.fill")})
            
        }
        .padding(50).frame(width: 300, height: 300, alignment: Alignment.center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
