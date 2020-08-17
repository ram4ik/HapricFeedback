//
//  ContentView.swift
//  HapricFeedback
//
//  Created by Ramill Ibragimov on 17.08.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                errorHapticFeedback()
            }, label: {
                Text("Error Haptic Feedback")
            }).padding()
            
            Button(action: {
                successHapticFeedback()
            }, label: {
                Text("Success Haptic Feedback")
            }).padding()
            
            Button(action: {
                warningHapticFeedback()
            }, label: {
                Text("Warning Haptic Feedback")
            }).padding()
        }
    }
    
    func errorHapticFeedback() {
        UINotificationFeedbackGenerator().notificationOccurred(.error)
    }
    
    func successHapticFeedback() {
        UINotificationFeedbackGenerator().notificationOccurred(.success)
    }
    
    func warningHapticFeedback() {
        UINotificationFeedbackGenerator().notificationOccurred(.warning)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
