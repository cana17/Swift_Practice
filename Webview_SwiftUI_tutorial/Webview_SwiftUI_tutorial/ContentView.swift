//
//  ContentView.swift
//  Webview_SwiftUI_tutorial
//
//  Created by woojin Choi on 11/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            VStack {
                HStack{
                    NavigationLink(destination:
                                    MyWebview(urlToLoad: "https://www.naver.com")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("네이버")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .frame(width: 110, height: 70)
                            .background(Color.green)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination:
                                    MyWebview(urlToLoad: "https://www.netflix.com")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("넷플릭스")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .frame(width: 110, height: 70)
                            .background(Color.black)
                            .foregroundColor(Color.red)
                            .cornerRadius(20)
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.red, lineWidth: 1))
                    }
                    NavigationLink(destination:
                                    MyWebview(urlToLoad: "https://www.instagram.com")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("인스타")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .frame(width: 110, height: 70)
                            .background(Color.pink)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                }
                HStack{
                    NavigationLink(destination:
                                    MyWebview(urlToLoad: "https://www.youtube.com")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("유튜브")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .frame(width: 110, height: 70)
                            .background(Color.red)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination:
                                    MyWebview(urlToLoad: "https://www.google.com")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("구글")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .frame(width: 110, height: 70)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination:
                                    MyWebview(urlToLoad: "https://www.github.com")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("깃허브")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .frame(width: 110, height: 70)
                            .background(Color.black)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 1))
                    }
                }
                HStack{
                    NavigationLink(destination:
                                    MyWebview(urlToLoad: "https://lolesports.com/")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("롤드컵")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .frame(width: 110, height: 70)
                            .background(Color.black)
                            .foregroundColor(Color.cyan)
                            .cornerRadius(20)
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.cyan, lineWidth: 1))
                    }
                    NavigationLink(destination:
                                    MyWebview(urlToLoad: "https://op.gg")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("OP.GG")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .frame(width: 110, height: 70)
                            .background(Color.cyan)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination:
                                    MyWebview(urlToLoad: "https://www.facebook.com")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("페북")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(20)
                            .frame(width: 110, height: 70)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

