
// ===========================================================================
/// <summary>
/// ContentView.swift
/// OpenUrl
/// created by Mehrdad Soleimanimajd on 23.08.2023
/// </summary>
/// <created>ʆϒʅ, 23.08.2023</created>
/// <changed>ʆϒʅ, 06.09.2023</changed>
// ===========================================================================

import SwiftUI

func test(prm: URL = URL(string: "")!) -> Void {
    print(prm)
}

struct ContentView: View {
    
    @Environment(\.openURL) private var openGoogle
    var url = URL(string: "https://www.google.com")
    @State var str = "test"    
    
    var body: some View {
        VStack {
            VStack(alignment: .trailing, spacing: 10.0) {
                Image(systemName: "globe")
                    .resizable(resizingMode: .tile)
                    .foregroundColor(.orange)
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                Text("Hello, world!").font(.system(size: 12.0, weight: Font.Weight.bold, design: Font.Design.serif)).italic()
                Text(str)
            }
            
            Button(action: {test(prm: url!)}) {
                Text ("a Button")
                    .font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(.brown))
                    
            }.border(.pink).accentColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).onHover { hovering in
                    str = "hoverd"
            }
            
            Button(action: {openGoogle(url!)}, label: {Label("Open Google", systemImage:"rectangle.fill")})
            
        }
        .padding(50).frame(width: 200, height: 300, alignment: Alignment.center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
