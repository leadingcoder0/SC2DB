//
//  VideoListView.swift
//  SC2DB
//
//  Created by Ted Tran on 12/21/21.
//

import SwiftUI

struct dataStruct: Codable {
    let parse : Course
}

struct Course: Codable {
    let text: Text
    struct Text: Codable {
        let \* : String
    }
}

class ViewModel: ObservableObject{
    @Published var courses = ""
    func fetch() {
        let url = URL(string: "https://liquipedia.net/starcraft2/api.php?action=parse&format=json&page=Unit%20Statistics%20(Legacy%20of%20the%20Void)")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            // Convert to JSON
            let decoder = JSONDecoder()
            if let data = data, let post = try? decoder.decode(dataStruct.self, from: data) {
                print("printing post now ||||||||||||")
                print(post)
            }
        }
        
        task.resume()
    }
    
}

struct VideoListView: View {
    @StateObject var viewModel = ViewModel()
    
    var videos: [Video] = VideoList.topTen
    var body: some View {
        NavigationView{
            List(0..<20, id: \.self){ course in
                HStack{
                    Image("Zealot_sc2")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .cornerRadius(4)
                    VStack(alignment: .leading, spacing: 5){
                        Text("OK")
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        Text("TEST")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Protoss Units Data")
            .onAppear {
                print("fetching data")
                viewModel.fetch()
            }
        }
    }
}

struct RedOneView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
