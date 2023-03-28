//
//  ContentView.swift
//  MyFirtstApp
//
//  Created by woojin Choi on 2023/01/11.
//

import SwiftUI

struct ContentView: View {
    
    @State var strength: Double? = 0
    @State var isfilling: Bool = false
    
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                
                Image(systemName: isfilling ? "bus" : "bus.fill")
                    .resizable()
                    .aspectRatio (contentMode: .fit)
                    .frame(width: 200)
                Text("MJU BUS APP")
                    .font(.system(size: 35))
                Spacer()
                
                HStack{
                    Text("명지대학교 학생이세요?")
                        .font(.system(size: 20))
                    Button {
                        isfilling.toggle()
                    } label: {
                        Text("회원가입")
                            .padding()
                            .font(.system(size: 20))
                            .background(.white)
                        .cornerRadius(10)}
                    }
            }
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
