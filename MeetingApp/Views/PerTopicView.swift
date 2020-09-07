//
//  PerTopicView.swift
//  MeetingApp
//
//  Created by Raphael Cerqueira on 06/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct PerTopicView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("ACTUAL VS INTENDED TALK TIMES PER TOPIC")
                .font(.system(size: 12, weight: .bold))
                .foregroundColor(.gray)
            
            Text("Flowchart & User journey")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.black)
                .padding(.top)
            
            TalkTimeProgressView(primaryColor: Color(#colorLiteral(red: 1, green: 0.7892152667, blue: 0.3312578797, alpha: 1)), secondaryColor: Color(#colorLiteral(red: 1, green: 0.9134973884, blue: 0.7321978211, alpha: 1)), actualTime: "14:23", intendedTime: "15:00", total: 30, progress: 25) {
                Image("avatar")
                .resizable()
                .scaledToFill()
            }
            
            TalkTimeProgressView(primaryColor: Color(#colorLiteral(red: 0.2945402861, green: 0.6912432313, blue: 0.3410875797, alpha: 1)), secondaryColor: Color(#colorLiteral(red: 0.8019340634, green: 0.9148121476, blue: 0.8159813285, alpha: 1)), actualTime: "35:00", intendedTime: "30:00", total: 50, progress: 45) {
                Text("D")
            }
            
            TalkTimeProgressView(primaryColor: Color(#colorLiteral(red: 0.9864270091, green: 0.3553454876, blue: 0.6083620191, alpha: 1)), secondaryColor: Color(#colorLiteral(red: 0.9977827668, green: 0.7450239062, blue: 0.8469888568, alpha: 1)), actualTime: "15:00", intendedTime: "15:00", total: 30, progress: 30) {
                Text("F")
            }
            
            Divider()
        }
        .padding()
    }
}

struct PerTopicView_Previews: PreviewProvider {
    static var previews: some View {
        PerTopicView()
    }
}
