//
//  ProjectionEffect.swift
//  RedactedDemo
//
//  Created by Thongchai Subsaidee on 5/2/23.
//

import SwiftUI

struct ProjectionEffectView: View {
    @State var skew: CGFloat = 0
    var body: some View {
        Rectangle()
            .fill(.red.gradient)
            .frame(width: 220, height: 220)
//            .projectionEffect(.init(.init(1, 0.5, -0.5, 1, 0, 0)))
            .modifier(CustomProject(b: skew))
            .onTapGesture {
                withAnimation(.easeInOut(duration: 5)) {
                    skew = 1
                }
            }
    }
}

struct CustomProject: GeometryEffect {
    var b: CGFloat
    var animatableData: CGFloat {
        get {b}
        set {b = newValue}
    }
    func effectValue(size: CGSize) -> ProjectionTransform {
        return .init(.init(1, b, 0, 1, 0, 0))
    }
}

struct ProjectionEffect_Previews: PreviewProvider {
    static var previews: some View {
        ProjectionEffectView()
    }
}
