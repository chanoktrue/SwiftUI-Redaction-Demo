//
//  ContentView.swift
//  RedactedDemo
//
//  Created by Thongchai Subsaidee on 5/2/23.
//

import SwiftUI

struct ContentView: View {
    @State var hideContent: Bool = false
    var body: some View {
        // MARK: Hide/Reveal Base on User Input
        VStack{
            if hideContent {
                sampleView
                    .redacted(reason: .placeholder)
            }else {
                sampleView
            }
            Button("Hide") {
                hideContent.toggle()
            }
        }
    }
    
    // MARK: Sample View
    var sampleView: some View {
        VStack(alignment: .leading) {
            Image(systemName: "house.and.flag.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 45, height: 45)
                .clipShape(Circle())
            Text("What is Lorem Ipsum?")
                .font(.callout)
                .fontWeight(.bold)
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                .font(.caption2)
                .foregroundColor(.gray)
            Button("DOne") {
                
            }
            .buttonStyle(.bordered)
            .tint(.cyan)
        }
        .frame(width: 220)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
