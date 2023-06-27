//
//  FrameworkDetailViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by woojin Choi on 2023/06/27.
//

import Foundation

final class FrameworkDetailViewModel: ObservableObject {
    @Published var framework: AppleFramework
    @Published var isSafariPresented: Bool = false
    
    init(framework: AppleFramework) {
        self.framework = framework
    }
}
