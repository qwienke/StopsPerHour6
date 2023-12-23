//
//  PickerView.swift
//  StopsPerHour6 Watch App
//
//  Created by Quinn Wienke on 12/20/23.
//

import SwiftUI

struct PickerView: View {
    @State private var doneButtonClicked = false
    @State var totalStops = 180
    var body: some View {
        NavigationStack {
            Text("\(totalStops)")
            
            Picker("", selection: $totalStops) {
                ForEach(80...250, id: \.self) {
                    number in
                    Text("\(number)")
                }   
            }
            ZStack {
                Button("Done") {
                    doneButtonClicked = true
                    totalStops = totalStops
                }
                 
                NavigationLink(
                    destination: StopsTotalView(totalStops: $totalStops),
                    isActive: $doneButtonClicked
                ) {
                    EmptyView()
                }
                .hidden()
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}


#Preview {
    PickerView()
}
