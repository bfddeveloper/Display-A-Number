//
//  ContentView.swift
//  Display A Number
//
//  Created by Brody Dickson on 8/29/22.
//

import SwiftUI

struct ContentView: View {
    
    //priv variables
    
    @State private var numberedtextfeild = ""
    
    @State private var valuecounter = ""
    
    
    var body: some View {
        
        
        
        
        
        
        
        Text("Put yo number in below")
            .font(.title)
            .fontWeight(.bold)
        
        TextField("enter here", text: $numberedtextfeild)
        
            .padding()
        Spacer()
        
        Text(numberedtextfeild)
        
        Text(valuecounter)
            .font(.title)
            .fontWeight(.semibold)
        
            .onChange(of: numberedtextfeild, perform:  { newValue in
                
                if let value = Int(newValue) {
                    
                    if value % 2 == 0{
                        
                        
                       valuecounter  = "even"
                            
                        
                        
                        
                    }
                    else{
                        
                        
                       valuecounter  = "odd"
                        
                    }
                    
                    
                    
                }
                else{
                    
                    numberedtextfeild = ""
                    
                    
                }
                
            })
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
