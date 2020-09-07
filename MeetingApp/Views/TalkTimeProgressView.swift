//
//  TalkTimeProgressView.swift
//  MeetingApp
//
//  Created by Raphael Cerqueira on 06/09/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TalkTimeProgressView<Content>: View where Content: View {
    var primaryColor: Color
    var secondaryColor: Color
    
    var actualTime: String
    var intendedTime: String
    
    let height: CGFloat = 25
    
    var total: CGFloat = 60
    var progress: CGFloat = 45
    
    var content: Content?
    
    init(primaryColor: Color, secondaryColor: Color, actualTime: String, intendedTime: String, total: CGFloat = 60, progress: CGFloat = 15, @ViewBuilder content: () -> Content) {
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.actualTime = actualTime
        self.intendedTime = intendedTime
        self.total = total
        self.progress = progress
        self.content = content()
    }
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                GeometryReader { geometry in
                        Capsule()
                            .frame(width: geometry.size.width * self.total / 60, height: self.height)
                            .foregroundColor(self.secondaryColor)
                    
                    Capsule()
                        .frame(width: geometry.size.width * self.progress / 60, height: self.height)
                        .foregroundColor(self.primaryColor)
                }
                .frame(height: self.height)
                
                if content != nil {
                    HStack {
                        self.content
                            .frame(width: 40, height: 40)
                    }
                    .background(Color.white)
                    .clipShape(Circle())
                    .background(Circle().stroke(Color.gray, lineWidth: 2))
                }
            }
            .padding(.top, 8)
            
            HStack {
                TimeView(color: primaryColor, time: actualTime, title: "Actual Talktime")
                
                Spacer()
                
                TimeView(color: secondaryColor, time: intendedTime, title: "Intented Talktime")
                
                Spacer()
            }
        }
    }
}

extension TalkTimeProgressView where Content == EmptyView {
    init(primaryColor: Color, secondaryColor: Color, actualTime: String, intendedTime: String, total: CGFloat = 60, progress: CGFloat = 15) {
        self.init(primaryColor: primaryColor, secondaryColor: secondaryColor, actualTime: actualTime, intendedTime: intendedTime, total: total, progress: progress, content: { EmptyView() })
    }
}

struct TalkTimeProgressView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TalkTimeProgressView(primaryColor: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), secondaryColor: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), actualTime: "12:00", intendedTime: "13:00")
            
            TalkTimeProgressView(primaryColor: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), secondaryColor: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), actualTime: "12:00", intendedTime: "13:00", total: 60, progress: 45) {
                Text("")
            }
            
            TalkTimeProgressView(primaryColor: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), secondaryColor: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), actualTime: "12:00", intendedTime: "13:00", total: 15, progress: 14) {
                Image("avatar")
            }
            
            TalkTimeProgressView(primaryColor: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), secondaryColor: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), actualTime: "12:00", intendedTime: "13:00", total: 30, progress: 35) {
                Text("D")
            }
            
            TalkTimeProgressView(primaryColor: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), secondaryColor: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), actualTime: "12:00", intendedTime: "13:00", total: 15, progress: 15) {
                Text("F")
            }
        }
    }
}
