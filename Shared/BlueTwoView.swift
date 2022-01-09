//
//  BlueTwoView.swift
//  SC2DB
//
//  Created by Ted Tran on 12/21/21.
//

import SwiftUI
struct BlueTwoView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
            Text("\(2)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold))
        }
    }
}

struct BlueTwoView_Previews: PreviewProvider {
    static var previews: some View {
        BlueTwoView()
    }
}
