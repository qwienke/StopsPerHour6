//
//  StopsTotalView.swift
//  StopsPerHour6 Watch App
//
//  Created by Quinn Wienke on 12/20/23.
//

import SwiftUI

struct StopsTotalView: View {
    @State private var isPickerViewPresented = false
    @State private var showMainView = false
    @State var timeElapsed = 0
    
    @Binding var totalStops: Int
    
    var body: some View {
        NavigationStack {
            
            if totalStops > 0 {
                Text("\(totalStops)")
            }
            
            ZStack {
                Button("How Mant Stops Today") {
                    isPickerViewPresented = true
                }
                NavigationLink(
                    destination: PickerView(),
                    isActive: $isPickerViewPresented
                ) {
                    EmptyView()
                }
                .hidden()
                .navigationBarBackButtonHidden(true)
                
            }
            
            if totalStops > 0 {
                ZStack{
                    Button("Done") {
                        showMainView = true
                        timerFired()
                        
                    }
                    
                    NavigationLink(destination: ContentView(timeElapsed: $timeElapsed, totalStops: $totalStops),
                                   isActive: $showMainView
                    ) {
                        EmptyView()
                    }
                    .hidden()
                    .navigationBarBackButtonHidden(true)
                }
            }
        }
    }
    
   //Another test.. Delete please
    
    func timerFired() {
        
        let timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { timer in
            timeElapsed += 1
        }
    }
}
#Preview {
    StopsTotalView(totalStops: .constant(0))
}

