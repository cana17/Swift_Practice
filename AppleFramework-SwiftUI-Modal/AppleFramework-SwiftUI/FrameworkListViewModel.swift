//
//  FrameworkListViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by woojin Choi on 2023/06/27.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
    @Published var models: [AppleFramework] = AppleFramework.list
    @Published var isShowingDetail: Bool = false
    @Published var selectedItem: AppleFramework?
}
