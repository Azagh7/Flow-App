import SwiftUI
struct NoteDetailView: View {
    var detail: CalendarMood
    var body: some View {
        
        ZStack{
            Color("color1")
                .edgesIgnoringSafeArea(.all)
            ScrollView{
                VStack(spacing:20){
                    HStack{
                        Circle()
                            .frame(width: 50, height: 50)
                            .foregroundColor(detail.color)
                        Text(detail.name)
                            .font(.footnote)
                        Spacer()
                    }
                    Text(detail.note)
                    Spacer()
                }
                .padding()
                .navigationTitle(detail.day)
            }
        }
    }
}

#Preview {
    NoteDetailView(detail: CalendarMood(color: .blue, name: "Preview Name", day: "Preview Day", note: "uguguguieifwiehoffioqwhfiewfhioqhioeiwfhioqfheiowhihwiqfhiewhfiohifqwioehofhweiofhqiofhewifiofheioqwhwiofhiwfewiofehwioqfhieowfhiwqfhiwqfhioewfhiowqhioweohfiehioqfhioeqfwhiwfhioefhioewiqhofeihoqwfhiweoqfhiweoqhwiqfhieohqiofqiewofiwfqihweofhifqhwfioefhqwheuofhuoerwhfuwquhfueowhfouwhfuohqfouheuowfufhuPreview Note"))
}

