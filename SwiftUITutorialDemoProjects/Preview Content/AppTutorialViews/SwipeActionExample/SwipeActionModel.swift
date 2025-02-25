//
//  SwipeActionModel.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 19/02/25.
//

import SwiftUI

struct Action: Identifiable {
    var id = UUID().uuidString
    var symbolImage: String
    var tint: Color
    var background: Color
    var font: Font = .title3
    var size: CGSize = .init(width: 45, height: 45)
    var shape: some Shape = .circle
    var action: (inout Bool) -> ()
}

@resultBuilder
struct ActionBuilder {
    static func buildBlock(_ components: Action...) -> [Action] {
        return components
    }
}

///Customizable Properties
struct ActionConfig {
    var leadingPadding: CGFloat = 0
    var trailingPadding: CGFloat = 10
    var spacing: CGFloat = 10
    var occupiesFullWidth: Bool = true
}

extension View {
    @ViewBuilder
    func swipeActions(config: ActionConfig = .init(), @ActionBuilder action: () -> [Action]) -> some View {
        self.modifier(CustomSwipeActionModifier(config: config, actions: action()))
    }
}

///Helping view Modifier
fileprivate struct CustomSwipeActionModifier: ViewModifier {
    var config: ActionConfig
    var actions: [Action]
    @State private var resetPositionTrigger: Bool = false
    
    func body(content: Content) -> some View {
        content
            .overlay {
                Rectangle()
                    .foregroundStyle(.clear)
                    .containerRelativeFrame(self.config.occupiesFullWidth ? .horizontal : .init())
                    .overlay(alignment: .trailing) {
                        ActionView()
                    }
            }
    }
    
    ///Action
    @ViewBuilder
    func ActionView() -> some View {
        ZStack {
            ForEach(self.actions.indices, id: \.self) { index in
                let action = self.actions[index]
                
                GeometryReader { proxy in
                    let size = proxy.size
                    Button {
                        action.action(&self.resetPositionTrigger)
                    } label: {
                        Image(systemName: action.symbolImage)
                            .font(action.font)
                            .foregroundStyle(action.tint)
                            .frame(width: size.width, height: size.height)
                            .background(action.background, in: action.shape)
                    }
                }
                .frame(width: action.size.width, height: action.size.height)
            }
        }
        .visualEffect { content, proxy in
            content
                .offset(x: proxy.size.width)
        }
    }
}

#Preview {
    SwipeActionViewExample()
}
