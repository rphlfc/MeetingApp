//
//  TalkTimeView.swift
//  MeetingApp
//
//  Created by Raphael Cerqueira on 06/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TalkTimeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("ACTUAL VS INTENDED TALK TIMES FOR MEETING")
                .font(.system(size: 12, weight: .bold))
                .foregroundColor(.gray)
            
            TalkTimeProgressView(primaryColor: Color(#colorLiteral(red: 0.4983193278, green: 0.3708204627, blue: 0.8802853227, alpha: 1)), secondaryColor: Color(#colorLiteral(red: 0.8731531501, green: 0.8437337875, blue: 0.970733583, alpha: 1)), actualTime: "45:23", intendedTime: "60:00")
        }
        .padding([.top, .leading, .trailing])
    }
}

struct TalkTimeView_Previews: PreviewProvider {
    static var previews: some View {
        TalkTimeView()
    }
}
