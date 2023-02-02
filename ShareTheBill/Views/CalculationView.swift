//
//  CalculationView.swift
//  ShareTheBill
//
//  Created by Russell Gordon on 2023-02-02.
//

import SwiftUI

struct CalculationView: View {
    
    // MARK: Stored properties
    
    // Common tip percentages
    let tipPercentages = [10, 15, 20, 25, 0]
    
    // MARK: Computed properties
    var body: some View {
        
        VStack(spacing: 0) {

            Group {
                
                HStack {
                    Text("Bill Amount")
                        .font(.headline.smallCaps())
                    
                    Spacer()
                }
                .padding(.horizontal)

                HStack(spacing: 0) {
                    Text("$")
                    
                    TextField("0.00", text: Binding.constant(""))   // Temporary constant binding
                }
                .padding()

            }
            
            Group {
                
                HStack {
                    Text("Tip Percentage")
                        .font(.headline.smallCaps())
                    
                    Spacer()
                }
                .padding(.horizontal)

                Picker("Tip Percentage", selection: Binding.constant(2)) { // Temporary constant binding
                    // tipPercentages array does not conform to Identifiable
                    // However, by using the parameter "id" with argument "\.self"
                    // we can "promise" SwiftUI that the values in the array will
                    // all be unique.
                    ForEach(tipPercentages, id: \.self) { currentPercentage in
                        Text("\(currentPercentage)%")
                    }
                }
                .pickerStyle(.segmented)
                .padding()

            }

            Spacer()
        }
        .padding(.top, 10)
        .navigationTitle("Share the Bill")
    }
}

struct CalculationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CalculationView()
        }
    }
}
