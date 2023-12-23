//
//  StopsPerHour6App.swift
//  StopsPerHour6 Watch App
//
//  Created by Quinn Wienke on 12/20/23.
//

import SwiftUI

@main
struct StopsPerHour6_Watch_AppApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView(timeElapsed: .constant(0), totalStops: .constant(0))
            StopsTotalView(totalStops: .constant(0))
        }
    }
}
