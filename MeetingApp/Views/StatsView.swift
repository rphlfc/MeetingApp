//
//  StatsView.swift
//  MeetingApp
//
//  Created by Raphael Cerqueira on 06/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI


struct StatsView: View {
    var title: String
    var value: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.system(size: 12, weight: .bold))
                .foregroundColor(.gray)
            
            Text(value)
                .font(.system(size: 21, weight: .bold))
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView(title: "TITLE", value: "60")
    }
}
