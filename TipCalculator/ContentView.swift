//
//  ContentView.swift
//  TipCalculator
//
//  Created by Mike Morales on 6/17/21.
//

import SwiftUI

struct ContentView: View {
    @State private var input: String = ""
    @State private var output: String = ""
    @State private var tip: Float = 0.0
    @State private var total: Float = 0.0
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 20) {
            Spacer()
            
            Text("Tip Calculator")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 30)
            
            
            TextField("Enter Bill Amount...", text: $input)
                .padding()
                .frame(width: 250)
                .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .keyboardType(/*@START_MENU_TOKEN@*/.decimalPad/*@END_MENU_TOKEN@*/)
            
            HStack(spacing: 50) {
                Button(action: {
                    
                    if let tempVal = Float(input) {
                        tip = tempVal * 0.15
                        tip = Float(round(100*tip)/100)
                        
                        total = tempVal + tip
                        
                        output = "Tip Amount: $\(tip)" + "\tBill Amount: $\(total)"
                    } else {
                        output = "Error: Invalid input"
                    }
                    
                }) {
                    Text("15%")
                }
                Button(action: {
                    
                    if let tempVal = Float(input) {
                        tip = tempVal * 0.18
                        tip = Float(round(100*tip)/100)
                        
                        total = tempVal + tip
                        
                        output = "Tip Amount: $\(tip)" + "\tBill Amount: $\(total)"
                    } else {
                        output = "Error: Invalid input"
                    }
                    
                }) {
                    Text("18%")
                }
                Button(action: {
                    
                    if let tempVal = Float(input) {
                        tip = tempVal * 0.20
                        tip = Float(round(100*tip)/100)
                        
                        total = tempVal + tip
                        
                        output = "Tip Amount: $\(tip)" + "\tBill Amount: $\(total)"
                    } else {
                        output = "Error: Invalid input"
                    }
                    
                }) {
                    Text("20%")
                }
            }
            
            Text("\(output)")
                .padding()
            
            Spacer()
            Spacer()
            Spacer()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
