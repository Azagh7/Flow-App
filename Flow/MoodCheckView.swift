
import SwiftUI
struct MoodCheckView: View {
    @State private var isNoteDetailViewPresented = false
    var cMood = MoodViewModel()
    var body: some View {
        
        NavigationView{
            ZStack{
                Color("color1")
                    .edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack(spacing: -16){
                        ForEach (cMood.cal) {mood in
                            NavigationLink(destination: NoteDetailView(detail: mood)){
                                ZStack{
                                    RoundedRectangle(cornerRadius: 16)
                                    RoundedRectangle(cornerRadius: 16)
                                        .strokeBorder(Color("color2"), lineWidth: 1)
                                        .frame(height: 100)
                                        .background(Color("color1"))
                                    HStack{
                                        VStack(alignment: .leading){
                                            Text(mood.day)
                                                .foregroundColor(Color("color2"))
                                                .font(.title3)
                                                .bold()
                                            Text(mood.note)
                                                .foregroundColor(Color("color2"))
                                                .lineLimit(1)
                                        }
                                        Spacer()
                                        VStack{
                                            Circle()
                                                .frame(width: 50, height: 50)
                                                .foregroundColor(mood.color)
                                        }
                                        
                                    } .padding()
                                }
                            }
                        }
                        .padding()
                        .navigationTitle("Mood Check")
                    }
                }
            }
            
        }
    }
}

#Preview {
    MoodCheckView()
}
