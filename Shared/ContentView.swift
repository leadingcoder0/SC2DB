//
//  ContentView.swift
//  Shared
//
//  Created by Ted Tran on 12/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VideoListView()
                .tabItem {
                    Text("Zerg")
                }
            BlueTwoView()
                .tabItem {
                    Text("Terran")
                }
            GreenThreeView()
                .tabItem {
                    Text("Protoss")
                }
        }
        /*NavigationView {
            VStack {
                Text("Hello, world!")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Menu {
                                Button(action: {
                                    print("Hello World!")
                                }, label: {
                                    Text("ur gay")
                                }),
                                Button(action: {
                                    print("Hello World!")
                                }, label: {
                                    Text("ur gay")
                                })
                            } label: {
                                Label(
                                    title: {Text("Add")},
                                    icon: {Image(systemName: "plus")}
                                )
                                
                            }
                        }
                    }
            }
            .navigationTitle("Starcraft II Stats")
        }*/
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
