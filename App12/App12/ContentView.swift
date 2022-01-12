//
//  ContentView.swift
//  App12
//
//  Created by Christopher on 1/11/22.
//  https://www.creatisoft.com

import SwiftUI

struct ContentView: View {
    
    struct Ocean: Identifiable {
        let name: String
        let id = UUID()
    }
    @State private var oceans = [Ocean]()
    @State var stringInput:String = ""
    
    /*[
    
        Ocean(name: "blah")
        
    ]
   */
    
    var body: some View {
             
        
        
        VStack {
            
            Text("Grocery List")
                .bold()
                
            
            List(oceans){ strx in
                
                Text(strx.name)
                    
                

                
            }.frame(width: 350, height: 150, alignment: .center)
                
            
            TextField("Enter text", text: $stringInput)
            
            Button(action: addToList) {
                Text("Add to List")
            }
            
            
            
        }.frame(width: 400, height: 250, alignment: .center)
        
        
        
      
        
        
    }
    
    
    func addToList(){
        
        if(stringInput != ""){
            
            oceans.append(Ocean(name: stringInput))

            
        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
