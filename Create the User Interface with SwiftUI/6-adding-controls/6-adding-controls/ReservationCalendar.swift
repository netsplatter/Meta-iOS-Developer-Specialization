//
//  ReservationCalendar.swift
//  6-adding-controls
//
//  Created by Mike on 2022-12-07.
//

import SwiftUI

struct ReservationCalendar: View {
    @State private var date = Date.now
    var body: some View {
        Form {
            VStack {
                HStack {
                    DatePicker(selection: $date, displayedComponents: [.date, .hourAndMinute]) {}
                    Button(action: { print("Button tapped") }) {
                        HStack {
                            Image(systemName: "checkmark.circle")
                            Text("Done")
                        }
                    }
                    .padding(20)
                }
                Text(date.formatted(date: .long, time: .complete))
            }
        }
    }
}

struct ReservationCalendar_Previews: PreviewProvider {
    static var previews: some View {
        ReservationCalendar()
    }
}
