//
//  ContentView.swift
//  Instagram-Clone
//
//  Created by Natthaporn Wimonanupong on 13/10/2564 BE.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    @State var selectedIndex = 0
    
    var body: some View {
        // login หรือยัง จะไปหน้าไหน
        Group{
           /* if let user = viewModel.currentUser{
                MainView(user: user,selectedIndex: $selectedIndex)
            }else{
                SinginView()
            }*/
            if viewModel.userSession == nil{
               SinginView()
            }
            else{
               if let user = viewModel.currentUser{
                    MainView(user: user,selectedIndex: $selectedIndex)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
