//
//  ScrollContentBackgroupDemo.swift
//  RedactedDemo
//
//  Created by Thongchai Subsaidee on 5/2/23.
//

import SwiftUI

struct ScrollContentBackgroupDemo: View {
    var body: some View {
        List{
            Text("Hellow")
            Text("Hellow")
            Text("Hellow")
        }
        .scrollContentBackground(.hidden)
        .background(Color.red.gradient)
    }
}

struct ScrollContentBackgroupDemo_Previews: PreviewProvider {
    static var previews: some View {
        ScrollContentBackgroupDemo()
    }
}
