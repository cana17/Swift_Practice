//
//  FrameworkCell.swift
//  AppleFramework-SwiftUI
//
//  Created by woojin Choi on 2023/06/27.
//

import SwiftUI

struct FrameworkCell: View {
    
    @Binding var framework: AppleFramework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            Text(framework.name)
                .font(.system(size: 16, weight: .bold))
            Spacer()
        }
    }
}

struct FrameworkCell_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkCell(framework: .constant(AppleFramework.list[0]))
            .previewLayout(.fixed(width: 160, height: 250))
    }
}
