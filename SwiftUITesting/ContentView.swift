//
//  ContentView.swift
//  SwiftUITesting
//
//  Created by Joseph Storer on 2/9/20.
//  Copyright © 2020 Joseph Storer. All rights reserved.
//

import SwiftUI



struct ContentView: View {
        
    @State var alerted = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Image(systemName: "star.fill")
                    .imageScale(.small)
                    .foregroundColor(.yellow)
                List{
                    ForEach(1...5, id: \.self) { key in
                        Text("\(key)")
                    }
                }
                Button(action:{
                    print("Print out")
                    self.alerted = true
                }){
                    Text("Click me!")
                }
                .alert(isPresented: $alerted){

                    Alert(title: Text("Alert"), message: Text("Alert message"))

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
