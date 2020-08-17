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
            Form {
                Section(header: Text("Haptics")) {
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
            
                Section(header: Text("Impact")) {
                    Button(action: {
                        impactFeedback(style: .heavy)
                    }, label: {
                        Text("Heavy Haptic Feedback")
                    }).padding()
                    
                    Button(action: {
                        impactFeedback(style: .light)
                    }, label: {
                        Text("Light Haptic Feedback")
                    }).padding()
                    
                    Button(action: {
                        impactFeedback(style: .medium)
                    }, label: {
                        Text("Medium Haptic Feedback")
                    }).padding()
                    
                    Button(action: {
                        impactFeedback(style: .rigid)
                    }, label: {
                        Text("Rigid Haptic Feedback")
                    }).padding()
                    
                    Button(action: {
                        impactFeedback(style: .soft)
                    }, label: {
                        Text("Soft Haptic Feedback")
                    }).padding()
                }
            }
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
    
    func impactFeedback(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        UIImpactFeedbackGenerator(style: style).impactOccurred()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
