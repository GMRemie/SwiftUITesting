//
//  ContentView.swift
//  SwiftUITesting
//
//  Created by Joseph Storer on 2/9/20.
//  Copyright © 2020 Joseph Storer. All rights reserved.
//

import SwiftUI



struct ContentView: View {
        
    
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                List{
                    ForEach(1...5, id: \.self) { key in
                        Text("\(key)")
                    }
                }
                    Text("Second Testing")
                
                .padding()
                .navigationBarTitle("Testing")
            }
        }
        
        
    }



}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
