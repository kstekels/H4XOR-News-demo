//
//  ContentView.swift
//  H4XOR News demo
//
//  Created by karlis.stekels on 31/03/2021.
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    @ObservedObject var newtworkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(newtworkManager.posts) { post in
                NavigationLink(
                    destination: DetailView(url: post.url)) {
                        HStack {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                
            }
            .navigationBarTitle("H4XOR News")
        }
        
        .onAppear {
            newtworkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//struct Post: Identifiable {
//    let id: String
//    let title: String
//}
//
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Bonjour"),
//    Post(id: "3", title: "Hola")
//]
