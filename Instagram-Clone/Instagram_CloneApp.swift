//
//  Instagram_CloneApp.swift
//  Instagram-Clone
//
//  Created by Natthaporn Wimonanupong on 13/10/2564 BE.
//

import SwiftUI
import Firebase

@main
struct Instagram_CloneApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
           ContentView()
            .environmentObject(AuthViewModel.shared)
        }
    }
}
