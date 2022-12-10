//
//  ItemCardView.swift
//  Task7Animation
//
//  Created by Ikhwan on 10/12/22.
//

import SwiftUI

struct ItemCardView: View {
    let cardView: CardView
    
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading) {
            Image(cardView.image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.width / 1.5)
                .cornerRadius(15, corners: [.topLeft, .topRight])
                .transition(.offsetScaleOpacity)
                .foregroundColor(.accentColor)
            
            VStack(alignment: HorizontalAlignment.leading) {
                Text(cardView.category)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                
                Text(cardView.heading)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text(cardView.author)
                    .font(.callout)
                    .foregroundColor(.secondary)
                
                HStack {
                    ForEach((1...cardView.rating), id: \.self) {_ in
                        Image(systemName: "star.fill")
                    }
                }
                .padding([.top, .bottom], 5)
                .foregroundColor(.yellow)
                
                Text(cardView.excerpt)
            }.padding()
        }
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(.gray.opacity(0.1), lineWidth: 2)
        )
        .padding()
    }
}

struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}


extension AnyTransition {
     static var offsetScaleOpacity: AnyTransition {
        AnyTransition.offset(x: 500, y: 0).combined(with: .scale).combined(with: .opacity)
    }
    
    static var scaleAndOffset: AnyTransition {
        AnyTransition.asymmetric(insertion: .scale(scale: 0, anchor: .center), removal: .offset(x: -500, y: 0).combined(with: .scale).combined(with: .opacity))
    }
}
