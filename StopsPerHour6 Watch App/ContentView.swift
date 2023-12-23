//
//  ContentView.swift
//  StopsPerHour6 Watch App
//
//  Created by Quinn Wienke on 12/20/23.
//

import SwiftUI

struct ContentView: View {
    @State var stopsCounted = 0
    @State var stopsPerHour = 0
    
    @Binding var timeElapsed: Int
    @Binding var totalStops: Int
    
    var body: some View {
        VStack {
            Text("\(stopsCounted) of \(totalStops)")
            Text("\(timeElapsed)")
            Text("\(stopsPerHour)")
            
            Button("Delivered") {
                stopsCounted += 1
                //if timeElapsed > 1 {
                    calculateStopsPerHour()
                //}
            }
            .background(Color(.amazonOrange))
            .foregroundColor(.amazonBlack)
            .sensoryFeedback(.start , trigger: stopsCounted)        }
        .padding()
    }
    
    func calculateStopsPerHour() {
        
            let timeInMinutes = timeElapsed / 60
        print("TimesInMinute: \(timeInMinutes)")
            let timeInHours = timeInMinutes
        print("TimesInHour \(timeInHours)")
        //This is a test to see if github worked. Delete 
        
       ///documentation markUp
        ///glitch is here somewhere. it crashes when pushing delivered. i think its because the timeInMinutes. Should be able to delete and use as it was before")
        ///
        /// I want to convert the minutes created by the timer. and bring them into hours, then hours into minutes
       
            stopsPerHour = stopsCounted / Int(Double(timeInHours))
            print(stopsPerHour)
        }
}

#Preview {
    ContentView(timeElapsed: .constant(0), totalStops: .constant(0))
}
