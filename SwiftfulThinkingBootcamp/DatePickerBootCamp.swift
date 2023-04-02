//
//  DatePickerBootCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Martin Kaeser on 02.04.23.
//

import SwiftUI

struct DatePickerBootCamp: View {
    @State var selectedDate : Date = Date()
    
    let startingDate : Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate : Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
//        DatePicker("Select a Date", selection: $selectedDate)
//        DatePicker("select a date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
        
        VStack {
            
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            DatePicker("Select a date", selection: $selectedDate, in: startingDate ... endingDate, displayedComponents: .date)
                .accentColor(Color.red)
                .datePickerStyle(.graphical)
        }
       
    }
}

struct DatePickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootCamp()
    }
}
