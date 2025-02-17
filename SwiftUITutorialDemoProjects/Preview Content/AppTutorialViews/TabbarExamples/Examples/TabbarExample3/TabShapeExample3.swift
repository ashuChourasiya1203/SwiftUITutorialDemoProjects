//
//  TabShapeExample3.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 17/02/25.
//

import SwiftUI

struct TabShapeExample3: Shape {
    var midPoint: CGFloat
    var animatableData: CGFloat {
        get { self.midPoint }
        set { self.midPoint = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.addPath(Rectangle().path(in: rect))
            path.move(to: .init(x: self.midPoint - 60, y: 0))
            
            let to = CGPoint(x: self.midPoint, y: -30)
            let control1 = CGPoint(x: self.midPoint - 30, y: 0)
            let control2 = CGPoint(x: self.midPoint - 30, y: -30)
            path.addCurve(to: to, control1: control1, control2: control2)
            
            let to1 = CGPoint(x: self.midPoint + 60, y: 0)
            let control3 = CGPoint(x: self.midPoint + 30, y: -30)
            let control4 = CGPoint(x: self.midPoint + 30, y: 0)
            path.addCurve(to: to1, control1: control3, control2: control4)
        }
    }
}
