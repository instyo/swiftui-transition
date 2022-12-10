//
//  ContentView.swift
//  Task7Animation
//
//  Created by Ikhwan on 10/12/22.
//

import SwiftUI

struct ContentView: View {
    let data = CardViewProvider.all()
    @State private var showAt: Int = 0
    
    var body: some View {
        VStack {
            ItemCardView(cardView: data[showAt])
                .id(data[showAt].id)
                .transition(.offsetScaleOpacity)
        }
        .onTapGesture {
            withAnimation(Animation.spring()) {
                incrementShowAt()
            }
        }
    }
    
    func incrementShowAt() {
        if self.showAt >= 3 {
            self.showAt = 0
            return
        }
        
        self.showAt+=1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
