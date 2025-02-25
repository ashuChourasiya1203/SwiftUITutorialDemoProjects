//
//  PanGesture.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 22/02/25.
//

import SwiftUI

struct PanGestureValue {
    var transition: CGSize = .zero
    var velocity: CGSize = .zero
}

//@available(iOS 18, *)
//struct PangGesture: UIGestureRecognizerRepresentable {
//    func makeUIGestureRecognizer(context: Context) -> some UIGestureRecognizer {
//        let gesture = UIPanGestureRecognizer()
//        gesture.delegate = context.coordinator
//        return gesture
//    }
//}
