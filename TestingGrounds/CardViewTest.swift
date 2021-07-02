//
//  ContentView.swift
//  TestingGrounds
//
//  Created by Lorenzo Zemp on 2/07/21.
//

import SwiftUI

struct CardViewTest: View {
    var body: some View {
        ZStack {
            Color(.lightGray)
                .ignoresSafeArea()
            
//            ScrollView{
//                ForEach(1..<20) { _ in
//                    CardView()
//                }
//            }
            CardView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardViewTest()
    }
}

struct CardView: View {
    var body: some View {
        HStack{
            Image(systemName: "tv")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading) {
                Text("Apple TV+")
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("Monthly")
                    .font(.body)
                    .italic()
            }.padding(.leading)
            Spacer()
            
            
            Text("$14.99")
                .font(.title3)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10.0)
                .foregroundColor(Color(.systemBackground))
                .shadow(radius: 10))
        .padding()
    }
}
