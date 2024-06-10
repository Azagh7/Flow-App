
import Foundation
import SwiftUI


class MoodsViewModel{
    
    var moods : [Mood] = [
        Mood(name: "Very Bad", color: .red),
        Mood(name: "Bad", color: .orange),
        Mood(name: "Normal", color: .yellow),
        Mood(name: "Good", color: Color("lightGreen")),
        Mood(name: "Very Good", color: .green)
    ]
    
}


