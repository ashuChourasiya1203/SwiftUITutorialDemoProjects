//
//  ReorderListExampleView.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 16/01/25.
//

import SwiftUI

struct ReorderListExampleView: View {
    @State private var episodes: [Episode] = MockData.episode
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                Text("Long Press and try to reorder the list")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.red)
                    .padding(.top, 15)
                
                ///Example 1: Using editAction where this method will get call each time the episodes variable get some value or perform any crud operation. which may cause app to slowdown.
                //self.example1()
                
                ///Example 2: Using onMove method we can reorder the list only when the data move to some other press instead of updating data each time when data is manupulate into our array variable.
                //self.example2()
                
                ///Conclusion: Method two is more precious when Reordering the list of data.
                self.example2()
            }
            .navigationTitle("Episodes")
        }
    }
    
    private func example1() -> some View {
        List(self.$episodes, editActions: .move) { episode in
            HStack(alignment: .top, spacing: 12) {
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 80, height: 80)
                    .foregroundStyle(episode.color.wrappedValue)
                
                VStack(alignment: .leading) {
                    Text(episode.title.wrappedValue)
                        .font(.headline)
                    
                    Text("Here is the sort description for the \(episode.title.wrappedValue)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        
                }
            }
        }
        .onChange(of: self.episodes) { oldValue, newValue in
            var counter = 0
            for episode in newValue {
                episode.listOrder = counter
                counter += 1
                print("\(episode.title), listOrder = \(episode.listOrder)")
            }
            print("------------------")
        }
    }
    
    private func example2() -> some View {
        List {
            ForEach(self.episodes) { episode in
                HStack(alignment: .top, spacing: 12) {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 80, height: 80)
                        .foregroundStyle(episode.color)
                    
                    VStack(alignment: .leading) {
                        Text(episode.title)
                            .font(.headline)
                        
                        Text("Here is the sort description for the \(episode.title)")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .onMove { indexSet, destination in
                self.episodes.move(fromOffsets: indexSet, toOffset: destination)
                var counter = 0
                for episode in self.episodes {
                    episode.listOrder = counter
                    counter += 1
                    print("\(episode.title), listOrder = \(episode.listOrder)")
                }
                print("------------------")
            }
        }
        .listStyle(PlainListStyle())
    }
}

#Preview {
    ReorderListExampleView()
}

fileprivate class Episode: Identifiable, Equatable {
    let id = UUID()
    var title: String
    var color: Color
    var listOrder: Int
    
    init(title: String, color: Color, listOrder: Int) {
        self.title = title
        self.color = color
        self.listOrder = listOrder
    }
    
    static func == (lhs: Episode, rhs: Episode) -> Bool {
        lhs.id == rhs.id
    }
}

fileprivate struct MockData {
    static var episode: [Episode] {
        let episodes = [
            Episode(title: "Pink Episode", color: .pink, listOrder: 0),
            Episode(title: "Teal Episode", color: .teal, listOrder: 1),
            Episode(title: "Indigo Episode", color: .indigo, listOrder: 2),
            Episode(title: "Orange Episode", color: .orange, listOrder: 3),
            Episode(title: "Green Episode", color: .green, listOrder: 4),
            Episode(title: "Purple Episode", color: .purple, listOrder: 5),
            Episode(title: "Yellow Episode", color: .yellow, listOrder: 6),
            Episode(title: "Mint Episode", color: .mint, listOrder: 7),
            Episode(title: "Red Episode", color: .red, listOrder: 8),
            Episode(title: "Blue Episode", color: .blue, listOrder: 9)
        ]
        return episodes
    }
}
