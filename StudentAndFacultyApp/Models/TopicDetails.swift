//
//  TopicDetails.swift
//  StudentAndFacultyApp
//
//  Created by Abhi’s iPhone on 23/06/21.
//

import Foundation
import SwiftUI

struct TopicDetails : Identifiable {
    var id = UUID()
    var topicName : String
    var topicNote : String
    var topicHours : String
}

let topic = [TopicDetails(topicName: "Python Basics", topicNote: "This is our first session", topicHours: "20:00"),
    TopicDetails(topicName: "Python Basics", topicNote: "This is our first session", topicHours: "20:00"),
    TopicDetails(topicName: "Python Basics", topicNote: "This is our first session", topicHours: "20:00")]
