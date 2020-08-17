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
                //errorHapticFeedback()
                hapticFeedback(type: .error)
            }, label: {
                Text("Error Haptic Feedback")
            }).padding()
            
            Button(action: {
                //successHapticFeedback()
                hapticFeedback(type: .success)
            }, label: {
                Text("Success Haptic Feedback")
            }).padding()
            
            Button(action: {
                //warningHapticFeedback()
                hapticFeedback(type: .warning)
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
    
    func hapticFeedback(type: UINotificationFeedbackGenerator.FeedbackType) {
        UINotificationFeedbackGenerator().notificationOccurred(type)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
