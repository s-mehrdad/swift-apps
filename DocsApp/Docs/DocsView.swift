
// ===========================================================================
/// <summary>
/// DocsView.swift
/// Docs
/// created by Mehrdad Soleimanimajd on 06.09.2023
/// </summary>
/// <created>ʆϒʅ, 06.09.2023</created>
/// <changed>ʆϒʅ, 06.09.2023</changed>
// ===========================================================================

import SwiftUI

struct DocsView: View {
    @Binding var onTapOne: Bool
    
    var body: some View {
        HStack {
            Text("Docs list:").font(Font.title)
            Spacer()
            Text("plain text").font(Font.subheadline).onTapGesture {
                onTapOne.toggle()
            }
            Button(action:{
                onTapOne.toggle()
                print(onTapOne)
            }){
                Text("test")
            }
                
            Text("json").font(Font.subheadline)
        }.padding()
    }
}

struct DocsView_Previews: PreviewProvider { 
    static var previews: some View {
        DocsView(onTapOne: .constant(false))
    }
}
