//
//  Subject.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 20/06/21.
//

import Foundation
import SwiftUI

struct Subject : Identifiable {
    var id = UUID()
    var title: String
    var batchStartDate : String
    var batchTiming : String
    var facultyName : String
    var hoursCovered : String
    
    var imageName : String {
        return title
    }
    
    var barName : String {
        return title
    }
}

let testData = [Subject(title: "PYTHON", batchStartDate: "15-Mar-2021", batchTiming: "12:30 PM to 2:30 PM", facultyName: "Tanmay Kalbhor", hoursCovered: "20:00"),
                Subject(title: "UIUX", batchStartDate: "15-Mar-2021", batchTiming: "12:30 PM to 2:30 PM", facultyName: "Tanmay Kalbhor", hoursCovered: "20:00"),
                Subject(title: "ANDROID", batchStartDate: "15-Mar-2021", batchTiming: "12:30 PM to 2:30 PM", facultyName: "Tanmay Kalbhor", hoursCovered: "20:00")]
