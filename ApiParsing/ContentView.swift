//
//  ContentView.swift
//  ApiParsing
//
//  Created by Jeff Jeong on 2022/05/29.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var apiClient = ApiClient()
    
    var body: some View {
        VStack{
            Button(action: {
                apiClient.loadFoods()
            }, label: {
                Text("급식 데이터 가져오기")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
