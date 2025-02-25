//
//  ListRowViewModel.swift
//  SwiftUITutorialDemoProjects
//
//  Created by Ashutosh Chourasiya on 12/02/25.
//

import SwiftUI

protocol ListRowViewModel {
    var title: String { get }
    var description: String { get }
    var viewImage: UIImage? { get }
    var destinationView: AnyView { get }
}
