//
//  TopView.swift
//  MeetingApp
//
//  Created by Raphael Cerqueira on 06/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.gray)
                    
                    Text("Group Stats")
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(.black)
                        .padding(.leading)
                    
                }
                
                Spacer()
            }
            
            HStack {
                StatsView(title: "TOTAL TALK TIME", value: "60 Mins")
                
                Spacer()
                
                StatsView(title: "TOTAL MEMBERS", value: "05")
                
                Spacer()
                
                StatsView(title: "TOTAL TOPICS", value: "12")
            }
            .padding(.top)
        }
        .padding()
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
