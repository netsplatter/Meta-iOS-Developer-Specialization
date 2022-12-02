//
//  ReservationForm.swift
//  3-observing-a-textfield
//
//  Created by Mike on 2022-12-01.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName: String = ""
    
    var body: some View {
        Form {
            TextField("Type Your Name", text: $customerName, onEditingChanged:{ status in
                print(status)
            })
            .onChange(of: customerName) { val in
                print(val)
            }
            .onSubmit {
                print("RETURN")
            }
        }
    }
}

struct ReservationForm_Previews: PreviewProvider {
    static var previews: some View {
        ReservationForm()
    }
}
