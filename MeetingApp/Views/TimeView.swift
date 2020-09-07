//
//  TimeView.swift
//  MeetingApp
//
//  Created by Raphael Cerqueira on 06/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TimeView: View {
    var color: Color
    var time: String
    var title: String
    
    var body: some View {
        HStack(alignment: .top) {
            Circle()
                .frame(width: 8, height: 8)
                .foregroundColor(color)
                .padding(.top, 8)
            
            VStack(alignment: .leading) {
                Text(time)
                    .font(.system(size: 16, weight: .bold))
                
                Text(title)
                    .foregroundColor(.gray)
            }
        }
        .frame(height: 80)
    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), time: "12:00", title: "TITLE")
    }
}
