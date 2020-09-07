//
//  ContentView.swift
//  MeetingApp
//
//  Created by Raphael Cerqueira on 06/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.999904573, green: 1, blue: 0.9998808503, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                TopView()
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    Divider()
                    
                    TalkTimeView()
                    
                    Divider()
                    
                    PerTopicView()
                }
            }
            
            VStack {
                Spacer()
                
                HStack {
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.gray)
                    
                    Circle()
                        .frame(width: 7, height: 7)
                        .foregroundColor(Color(#colorLiteral(red: 0.4983193278, green: 0.3708204627, blue: 0.8802853227, alpha: 1)))
                    
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 30)
                .padding(.vertical)
                .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white.opacity(0.7)]), startPoint: .bottom, endPoint: .top))
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
