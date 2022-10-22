//
//  ContentView.swift
//  Calculator
//
//  Created by Alexander Prang on 22.10.22.
//

import SwiftUI

struct ContentView: View {
    @State var zahl: Double = 0.00
    @State var zahl2: Double = 0.00
    @State var selectedOperator: String = "plus"
    
    var body: some View {

        VStack {
            TextField("Eingeben", value: self.$zahl, formatter: NumberFormatter())
                .font(.system(size: 36))
                .padding()
            HStack {
                Button("7", action: { buttonPressed(number: 7) })
                    .font(.system(size: 36))
                    .padding()
                Button("8", action: { buttonPressed(number: 8) })
                    .font(.system(size: 36))
                    .padding()
                Button("9", action: { buttonPressed(number: 9) })
                    .font(.system(size: 36))
                    .padding()
                Button("/", action: { operatorPressed(op: "divide") })
                    .font(.system(size: 36))
                    .padding()
            }
            HStack {
                Button("4", action: { buttonPressed(number: 4) })
                    .font(.system(size: 36))
                    .padding()
                Button("5", action: { buttonPressed(number: 5) })
                    .font(.system(size: 36))
                    .padding()
                Button("6", action: { buttonPressed(number: 6) })
                    .font(.system(size: 36))
                    .padding()
                Button("x", action: { operatorPressed(op: "power") })
                    .font(.system(size: 36))
                    .padding()
            }
            HStack {
                Button("1", action: { buttonPressed(number: 1) })
                    .font(.system(size: 36))
                    .padding()
                Button("2", action: { buttonPressed(number: 2) })
                    .font(.system(size: 36))
                    .padding()
                Button("3", action: { buttonPressed(number: 3) })
                    .font(.system(size: 36))
                    .padding()
                Button("-", action: { operatorPressed(op: "minus") })
                    .font(.system(size: 36))
                    .padding()
            }
            HStack{
                Button("0", action: { buttonPressed(number: 0) })
                    .font(.system(size: 36))
                    .padding()
                Button(","){}
                    .font(.system(size: 36))
                    .padding()
                Button("=", action: { resultPressed() })
                    .font(.system(size: 36))
                    .padding()
                Button("+", action: { operatorPressed(op: "plus") })
                    .font(.system(size: 36))
                    .padding()
            }
            Button("löschen", action: { clearPressed() })
                .font(.system(size: 36))

        }
        .padding()
    }
    
    func buttonPressed(number: Int) {
        self.zahl = self.zahl * 10 + Double(number)
    }
    
    func operatorPressed(op: String){
        selectedOperator = op
        
        zahl2 = zahl
        zahl = 0.00
    }
                       
    func resultPressed() {
        
        print(selectedOperator)
        
        if selectedOperator == "plus" {
            zahl = zahl2 + zahl
        }
        if selectedOperator == "minus" {
            zahl = zahl2 - zahl
        }
        if selectedOperator == "power" {
            zahl = zahl2 * zahl
        }
        if selectedOperator == "divide" {
            zahl = zahl2 / zahl
        }
    }
    
    func clearPressed() {
        zahl = 0.0
        zahl2 = 0.0
        selectedOperator = "plus"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
