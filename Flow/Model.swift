import Foundation
import SwiftUI

struct meditationCard {
    let title : String
    let description :String
    
}


let card1 = meditationCard(title:"Relaxing 4-7-8", description:"Inhale for 4 through the nose, hold for 7, exale for 8 through the mouth")
let card2 = meditationCard(title:"Triangle Breathing 4-4-4", description:"Inhale for 4, hold for 4, exale for 4. All through your nose")
let card3 = meditationCard(title:"Kumbhaka 4-4-8", description:"Inhale for 4, hold for 4, exale for 8. All through your nose")


struct timeSetted{
    var inhale : Double
    var hold : Double
    var exhale : Double
    
}
var setted = timeSetted(inhale: 0, hold: 0, exhale: 0)


struct Mood: Identifiable, Equatable{
    var id = UUID()
    let name: String
    var color: Color = .black
}


struct Note: Identifiable, Codable {
    var id = UUID()
    var text: String = ""
    var date = Date()
}



struct CalendarMood: Identifiable{
    var id = UUID()
    var color: Color
    var name: String
    var day: String
    var note: String
}




