//
//  ContentView.swift
//  Multiply
//
//  Created by Fabiola Rocha Marquez on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumberTextField = ""
    @State private var secondNumberTextField = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack {
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Multiply").bold()
            TextField("Enter a Number", text: $firstNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .padding()
            Text("X")
            TextField("Enter a Number", text: $secondNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .padding()
            Button("Calculate") {
                if let firstNumber = Int(firstNumberTextField) {
                    if let secondNumber = Int(secondNumberTextField) {
                        calculation = firstNumber * secondNumber
                        if calculation == 64 {
                            imageName = "stephen curry"
                        }
                        else if calculation % 2 == 0 {
                            imageName = "vector"
                        }
                        else {
                            imageName = "we bare bears"
                            
                        }
                    }
                }
            }
            Text("\(calculation)")
                .frame(width: 200, height: 30, alignment: .center)
            Image(imageName)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .aspectRatio(contentMode: .fit)
            Spacer()
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
    
}
