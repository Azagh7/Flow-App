import SwiftUI
import Foundation


class MoodViewModel{
    
    var cal : [CalendarMood] = [
        
        CalendarMood(color: .red, name: "Very Bad", day: "31 October 2023", note: """
                     Today I have a presentation and I feel really bad. The mere thought of it is sending shivers down my spine. The weight of this impending presentation hangs heavy on my shoulders, and the anxiety is like an uninvited guest I can't seem to shake. The content of my presentation is well-prepared, and I've rehearsed it countless times. But that doesn't diminish the gnawing fear that creeps up within me. The fear of making a mistake, of stumbling over my words, of drawing a blank in front of everyone. The butterflies in my stomach have evolved into a full-blown circus, and it feels like my heart is racing in a sprint I can't keep up with. I wish I could banish this fear, but it clings to me like a shadow. I know that facing this presentation is a necessary step for personal and professional growth, but that doesn't make it any less intimidating. Right now, all I can do is take a deep breath, summon my courage, and step into the challenge, hoping that I'll emerge stronger on the other side.
                     """),
        CalendarMood(color: .green, name: "Very Good", day: "28 October 2023", note: """
                     I think I'm in love with Santo. Today has been absolutely incredible. From the moment I woke up, there was an undeniable energy in the air that seemed to infuse everything with positivity. The sun was shining brightly, and the world felt alive with possibilities.I had a sense of purpose and a smile on my face throughout the day. Every interaction I had was filled with warmth and connection. It's amazing how a simple conversation with a friend or a kind gesture from a stranger can lift your spirits and make you appreciate the beauty of human connections. The world felt like an open book, and I was eager to fill its pages with adventures and experiences. The sky's vibrant hues during sunset were a reminder of the beauty that surrounds us every day. As I reflect on this wonderful day, I'm filled with gratitude and a deep sense of contentment. It's days like these that remind me of the incredible capacity for joy that life holds, and I'm excited for what tomorrow might bring.
                     """),
        CalendarMood(color: .yellow, name: "Normal", day: "26 October 2023", note: "A rather unusual day. I started the day with a sense of excitement. There was a crisp, fresh air outside, and the sun was shining brightly."),
        CalendarMood(color: .orange, name: "Bad", day: "24 October 2023", note: """
                     Today has been a day I'd rather forget. The weight of an impending presentation has cast a dark cloud over every moment. I couldn't escape the feeling of dread that hung over me since I woke up this morning.The hours leading up to the presentation were torture. My mind was a battleground of self-doubt and anxiety. Every slide I created, every word I rehearsed felt like an insurmountable hurdle.As the time to present drew nearer, my heart raced, and my palms were sweaty. I couldn't help but imagine all the ways the presentation could go wrong, each scenario more catastrophic than the last.When I finally stood before the audience, I felt like a deer caught in headlights. My voice quivered, and my thoughts scattered like leaves in the wind. It was a struggle to maintain composure, and I couldn't wait for it to be over.Despite the shaky start, I somehow made it through the presentation. The relief I felt when it was all done was immeasurable. But the day left me drained, and the fear of public speaking still lingers.I know that facing such challenges is a part of personal growth, but it doesn't make days like this any easier. I can only hope that with time and practice, the next presentation will be a little less daunting
                     """),
        CalendarMood(color: Color("lightGreen"), name: " Good", day: "13 October 2023", note: "One of those days that I want to capture and hold onto forever. It started with the gentle caress of the morning sun's rays through my window, and from that moment, I could sense that it would be special"),
        CalendarMood(color: .red, name: "Very Bad", day: "28 October 2023", note: """
Today, everything just feels so heavy, as if the weight of the world is resting squarely on my shoulders. I'm trapped in this never-ending storm of negative thoughts, and it's suffocating. I wish I could just turn it all off and find some peace, even for a moment. The world outside seems so distant, a blur of faces and voices that I can't quite connect with. It's as if I'm watching life happen from behind a thick, soundproof glass. Isolation is my constant companion, and it's getting harder to bear. I know this darkness will eventually pass, as it always does, but in this moment, it feels eternal. I'll keep writing, hoping that the act of putting these thoughts to paper will provide some relief, some tiny crack in the storm clouds. For now, I'll hold on and wait for a glimmer of light to break through.
""")
    ]
    
    
}

