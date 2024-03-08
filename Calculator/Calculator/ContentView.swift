//
//  ContentView.swift
//  Calculator
//
//  Created by StudentAM on 3/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var interface: [[String]] = [
        ["AC","+/-","%","÷"],
        ["7","8","9","x"],
        ["4","5","6","-"],
        ["1","2","3","+"],
        ["0",".","="]
    ]
    
    
    
    
    
    
    var body: some View {
        let displayVar = 0.00
        ZStack{
            Color.black.ignoresSafeArea()
                VStack {
                    HStack{
                        Spacer()
                        Text("\(displayVar)")
                            .foregroundColor(.white)
                            .font(Font.system(size:75))
                    }
                }
        }
    }
}
var val1 = 0
var val2 = 0
var finVar = 0
var percentVar = 0
var displayVar = 0.00
var modifier = "+"

func equalPlaceHolder(){
    if (modifier == "+"){
        finVar = val1 + val2
    }
    if (modifier == "-"){
        finVar = val1 - val2
    }
    if (modifier == "x"){
        finVar = val1 * val2
    }
    if (modifier == "÷"){
        finVar = val1 / val2
    }
}

func calculationPlacholer(){

}

func percentFunc(){
    if (percentVar == 0){
        finVar = finVar * Int(0.01)
    } else if(percentVar == 1){
        finVar = finVar * 100
    }
}

func negativeFunc(){
    displayVar = displayVar * -1
}

#Preview {
    ContentView()
}
