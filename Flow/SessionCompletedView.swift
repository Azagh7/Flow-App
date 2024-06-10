import SwiftUI
struct SessionCompletedView: View {
    @State private var selectedMood: Mood?
    @State private var notes = ""
    var viewModel = MoodsViewModel()
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        ZStack{
            Color("color1")
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:16){
                Spacer()
                Text("How do you feel?")
                    .foregroundColor(Color("color2"))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                HStack(spacing: 20) {
                    ForEach(viewModel.moods) { mood in
                        VStack (spacing:10) {
                            Circle()
                                .frame(width: 50, height: 50)
                                .foregroundColor(mood.color)
                                .onTapGesture {
                                    selectedMood = mood
                                }
                            Text(mood.name)
                                .font(.footnote)
                                .foregroundColor(mood == selectedMood ? .accentColor : Color("color2"))
                                .underline(mood == selectedMood, color: Color("selection"))
                        }
                    }
                }
                Spacer()
                Text("Write a note")
                    .foregroundColor(Color("color2"))
                TextEditor(text: $notes)
                    .scrollContentBackground(.hidden)
                    .background(.white)
                    .cornerRadius(16)
                    .padding(20)
                   // .foregroundStyle(.white)
                    
                  // .foregroundColor(.white)
                   //.ignoresSafeArea()
                
                Button("Finish") {
                    dismiss()
                }
                .font(.headline)
                .padding()
                .background(Color("color2"))
                .foregroundColor(Color("color1"))
                .cornerRadius(12)
                .padding(10)
            }
        }
    }
}

#Preview {
    SessionCompletedView()
}



