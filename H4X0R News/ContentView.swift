//
//  ContentView.swift
//  H4X0R News
//
//  Created by Infinity Code on 10/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { posts in
                HStack {
                    Text(String(posts.points))
                        .foregroundColor(Color(UIColor(red: 0.47, green: 0.27, blue: 0.89, alpha: 1.00)))
                    Text(posts.title)
                }
            }
            .navigationBarTitle("H4X0R NEWS")
            .toolbarColorScheme(.light, for: .navigationBar)
            .toolbarBackground(Color(UIColor(red: 0.54, green: 0.75, blue: 0.11, alpha: 1.00)), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
