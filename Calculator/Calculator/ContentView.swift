//
//  ContentView.swift
//  Calculator
//
//  Created by StudentAM on 3/6/24.
//

import SwiftUI

struct ContentView: View {
//  State checker = Helps determine what stage of the calculation it is
//  Intermediate NUmber = keeps keep what the user wants each number to be
//  n1 keeps track of the 1st number of hte calculation
//  n2 ^ but the 2nd
//  The operator = keeps track of the operatation
//  fin var = keeps track of the result
//  percent var = helps percent function operate
//  resultant = also keeps track of result
//  display var = what displays
//  Substitute = when everything is empty, the display displays "0"
    @State var stateChecker = 0
    @State var intermediateNumber = ""
    @State var n1 = ""
    @State var n2 = ""
    @State var theOperator = ""
    @State var finVar = 0.00
    @State var percentVar = 0
    @State var resultant = 0.00
    @State var displayVar = ""
    var substitute = "0"
    
    
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
                VStack {
                    HStack{
                        Spacer()
//                        This is the Display
                        if (intermediateNumber == "" && displayVar == ""){
                            Text("\(substitute)")
                                .foregroundColor(.white)
                                .font(Font.system(size:75))
                                .padding()
                        } else {
                            Text("\(displayVar)")
                                .foregroundColor(.white)
                                .font(Font.system(size:75))
                                .padding()
                        }
                    }
                    HStack{
//                        A Whole bunch of buttons, each are the same except the color and the function they link to
                        Button(action: {
                            ACfunc()
                        }, label:{
                            Text("AC")
                                .padding(.horizontal,18)
                                .padding(.vertical,18)
                                .background(Color(red: 200 / 255, green: 200 / 255, blue: 200 / 255))
                                .foregroundColor(Color.black)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        })
                        Button(action: {
                            negativeFunc()
                        }, label:{
                            Text("+/-")
                                .padding(.horizontal,18)
                                .padding(.vertical,18)
                                .background(Color(red: 200 / 255, green: 200 / 255, blue: 200 / 255))
                                .foregroundColor(Color.black)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        })
                        Button(action: {
                            percentFunc()
                        }, label:{
                            Text("%")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color(red: 200 / 255, green: 200 / 255, blue: 200 / 255))
                                .foregroundColor(Color.black)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        })
                        Button(action: {
                            addDivide()
                        }, label:{
                            Text("÷")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color.orange)
                                .foregroundColor(Color.white)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        })
                    }
                    HStack{
                        Button(action: {
                            add7()
                        }, label:{
                            Text("7")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)                        })
                        Button(action: {
                            add8()
                        }, label:{
                            Text("8")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)                        })
                        Button(action: {
                            add9()
                        }, label:{
                            Text("9")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)                        })
                        Button(action: {
                            addMultiply()
                        }, label:{
                            Text("x")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color.orange)
                                .foregroundColor(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)                        })
                    }
                    HStack{
                        Button(action: {
                            add4()
                        }, label:{
                            Text("4")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)                        })
                        Button(action: {
                            add5()
                        }, label:{
                            Text("5")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)                        })
                        Button(action: {
                            add6()
                        }, label:{
                            Text("6")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)                        })
                        Button(action: {
                            addMinus()
                        }, label:{
                            Text("-")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color.orange)
                                .foregroundColor(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)                        })
                    }
                    HStack{
                        Button(action: {
                            add1()
                        }, label:{
                            Text("1")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)                        })
                        Button(action: {
                            add2()
                        }, label:{
                            Text("2")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)                        })
                        Button(action: {
                            add3()
                        }, label:{
                            Text("3")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)                        })
                        Button(action: {
                            addPlus()
                        }, label:{
                            Text("+")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color.orange)
                                .foregroundColor(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)                        })
                    }
                    HStack{
                        Button(action: {
                            add0()
                        }, label:{
                            Text("0")
                                .padding(.horizontal,50)
                                .padding(.vertical,15)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                            .clipShape(Capsule())
                        })
                        Button(action: {
                            addDot()
                        }, label:{
                            Text(".")
                                .padding(.horizontal,23)
                                .padding(.vertical,23)
                                .background(Color.gray)
                                .foregroundColor(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)                        })
                        Button(action: {
                            lastEquation()
                        }, label:{
                            Text("=")
                                .padding(.horizontal,20)
                                .padding(.vertical,20)
                                .background(Color.orange)
                                .foregroundColor(Color.white)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)                        })
                    }
                    Spacer()
                }
        }
    }
// The Functions, these functions use the stateChecker and other variables to function as a calculator, these ones in particular are for bulding the numbers that are used in the calculations and to determine the modifier
    func add1(){
        intermediateNumber += "1"
        if(stateChecker == 0){
            n1 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 2){
            n1 = intermediateNumber
            stateChecker = 0
            displayVar = intermediateNumber
        }
    }
    func add2(){
        intermediateNumber += "2"
        if(stateChecker == 0){
            n1 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 2){
            n1 = intermediateNumber
            stateChecker = 0
            displayVar = intermediateNumber
        }
    }
    func add3(){
        intermediateNumber += "3"
        if(stateChecker == 0){
            n1 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 2){
            n1 = intermediateNumber
            stateChecker = 0
            displayVar = intermediateNumber
        }
    }
    func add4(){
        intermediateNumber += "4"
        if(stateChecker == 0){
            n1 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 2){
            n1 = intermediateNumber
            stateChecker = 0
            displayVar = intermediateNumber
        }
    }
    func add5(){
        intermediateNumber += "5"
        if(stateChecker == 0){
            n1 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 2){
            n1 = intermediateNumber
            stateChecker = 0
            displayVar = intermediateNumber
        }
    }
    func add6(){
        intermediateNumber += "6"
        if(stateChecker == 0){
            n1 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 2){
            n1 = intermediateNumber
            stateChecker = 0
            displayVar = intermediateNumber
        }
    }
    func add7(){
        intermediateNumber += "7"
        if(stateChecker == 0){
            n1 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 2){
            n1 = intermediateNumber
            stateChecker = 0
            displayVar = intermediateNumber
        }
    }
    func add8(){
        intermediateNumber += "8"
        if(stateChecker == 0){
            n1 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 2){
            n1 = intermediateNumber
            stateChecker = 0
            displayVar = intermediateNumber
        }
    }
    func add9(){
        intermediateNumber += "9"
        if(stateChecker == 0){
            n1 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 2){
            n1 = intermediateNumber
            stateChecker = 0
            displayVar = intermediateNumber
        }
    }
    func addDot(){
        intermediateNumber += "."
        if(stateChecker == 0){
            n1 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
            displayVar = intermediateNumber
        }
        if(stateChecker == 2){
            n1 = intermediateNumber
            stateChecker = 0
            displayVar = intermediateNumber
        }
    }

    // 2.
    // Operator Buttons, this decides what will happen between the two numbers selected

    func addPlus(){
        
        theOperator = "+"
        if(stateChecker == 0){
            n1 = intermediateNumber
            intermediateNumber = ""
            stateChecker = 1
            displayVar = intermediateNumber
            return
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
            displayVar = intermediateNumber
        }
        else if (stateChecker == 2){
            n1 = String(resultant)
            stateChecker = 1
            displayVar = intermediateNumber
        }
    }
    func addMinus(){
        theOperator = "-"
        if(stateChecker == 0){
            n1 = intermediateNumber
            intermediateNumber = ""
            displayVar = intermediateNumber
            stateChecker = 1
            return
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
            displayVar = intermediateNumber
        }
        else if (stateChecker == 2){
            n1 = String(resultant)
            stateChecker = 1
            displayVar = intermediateNumber
        }
    }
    func addDivide(){
        theOperator = "/"
        if(stateChecker == 0){
            n1 = intermediateNumber
            intermediateNumber = ""
            stateChecker = 1
            displayVar = intermediateNumber
            return
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
            displayVar = intermediateNumber
        }
        if (stateChecker == 2){
            n1 = String(resultant)
            stateChecker = 1
            displayVar = intermediateNumber

        }
    }
    func addMultiply(){
        theOperator = "*"
        if(stateChecker == 0){
            n1 = intermediateNumber
            intermediateNumber = ""
            stateChecker = 1
            displayVar = intermediateNumber
            return
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
            displayVar = intermediateNumber
            
        }
        else if (stateChecker == 2){
            n1 = String(resultant)
            stateChecker = 1
            displayVar = intermediateNumber
        }
    }

    // when equal button is pressed, it processes the entire equation and spits out the result, resetting the other numbers for a new calculation
    func lastEquation(){
        if let operN1 = Double(n1), let operN2 = Double(n2){
            if (theOperator == "") {
                return
            }
            if (theOperator == "+"){
                resultant = operN1 + operN2
            }
            if (theOperator == "-"){
                resultant = operN1 - operN2
            }
            if (theOperator == "/"){
                if(n2 != "0"){
                    resultant = operN1 / operN2
                } else if (n2 == "0"){
                    return
                }
            }
            if (theOperator == "*"){
                resultant = operN1 * operN2
            }
            finVar = resultant
            intermediateNumber = String(resultant)
            displayVar = intermediateNumber
            stateChecker = 2
            intermediateNumber = ""
            theOperator = ""
            n1 = ""
            n2 = ""
        }
    }
//AC function resets everything back to 0
    func ACfunc(){
        n1 = ""
        n2 = ""
        theOperator = ""
        finVar = 0
        percentVar = 0
        resultant = 0.00
        intermediateNumber = ""
        displayVar = ""
        stateChecker = 0
    }
//    swaps between 0.01 and 1
    func percentFunc(){
        if let intDouble = Double(intermediateNumber){
            if (percentVar == 0){
                intermediateNumber = String(intDouble * 0.01)
                percentVar = 1
                displayVar = intermediateNumber
            } else if(percentVar == 1){
                intermediateNumber = String(intDouble * 100)
                percentVar = 0
                displayVar = intermediateNumber
            }
        } else {
            return
        }
        
    }
//  gives "-" sign or removes it
    func negativeFunc(){
        if (intermediateNumber.first == "-"){
            intermediateNumber.remove(at: intermediateNumber.startIndex)
            displayVar = intermediateNumber
        } else{
            intermediateNumber.insert("-", at: intermediateNumber.startIndex)
            displayVar = intermediateNumber
        }
    }
//adds zero, idk why it's here tho
    func add0(){
        intermediateNumber += "0"
        if(stateChecker == 0){
            n1 = intermediateNumber
        }
        if(stateChecker == 1){
            n2 = intermediateNumber
        }
        if(stateChecker == 2){
            n1 = intermediateNumber
            stateChecker = 0
            return
        }
        displayVar = intermediateNumber
    }
}
#Preview {
    ContentView()
}

