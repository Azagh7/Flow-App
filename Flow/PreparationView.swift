import SwiftUI
enum SelectedButton {
    case button1, button2, button3, none
}
struct PreparationView: View {
    @State private var selectedButton: SelectedButton = .none
    @State var isChoosing: Bool = true
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        if isChoosing{
            ZStack{
                Color("color1")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    HStack{
                        Button("  Back") {
                            dismiss()
                        }
                        .font(.headline)
                        .foregroundColor(Color("color2"))
                        Spacer()
                    }
                    VStack(spacing: -16) {
                        Button(action: {
                            if selectedButton == .button1 {
                                selectedButton = .none
                            } else {
                                selectedButton = .button1
                                setted.inhale = 4
                                setted.hold = 7
                                setted.exhale = 8
                            }
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(selectedButton == .button1 ? (Color("selection")) : Color("color1"))
                                    .frame(height: 100)
                                RoundedRectangle(cornerRadius: 16)
                                    .strokeBorder(Color("color2"), lineWidth: 1)
                                    .frame(height: 100)
                                VStack (alignment: .leading){
                                    HStack {
                                        Text(card1.title)
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("color2"))
                                        Spacer()
                                    }
                                    Text(card1.description)
                                        .multilineTextAlignment(.leading)
                                        .padding(.trailing)
                                        .foregroundColor(Color("color2"))
                                        .font(.body)
                                }
                                .padding(.horizontal)
                            }
                            .padding()
                        }
                        Button(action: {
                            if selectedButton == .button2 {
                                selectedButton = .none
                            } else {
                                selectedButton = .button2
                                setted.inhale = 4
                                setted.hold = 4
                                setted.exhale = 4
                            }
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(selectedButton == .button2 ? Color("selection") : Color("color1"))
                                    .frame(height: 100)
                                RoundedRectangle(cornerRadius: 16)
                                    .strokeBorder(Color("color2"), lineWidth: 1)
                                    .frame(height: 100)
                                VStack (alignment: .leading){
                                    HStack {
                                        Text(card2.title)
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("color2"))
                                        Spacer()
                                    }
                                    Text(card2.description)
                                        .multilineTextAlignment(.leading)
                                        .foregroundColor(Color("color2"))
                                        .font(.body)
                                }
                                .padding(.horizontal)
                            }
                            .padding()
                        }
                        Button(action: {
                            if selectedButton == .button3 {
                                selectedButton = .none
                            } else {
                                selectedButton = .button3
                                setted.inhale = 4
                                setted.hold = 2
                                setted.exhale = 4
                            }
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(selectedButton == .button3 ? Color("selection") : Color("color1"))
                                    .frame(height: 100)
                                RoundedRectangle(cornerRadius: 16)
                                    .strokeBorder(Color("color2"), lineWidth: 1)
                                    .frame(height: 100)
                                VStack(alignment: .leading) {
                                    HStack{
                                        Text(card3.title)
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("color2"))
                                        Spacer()
                                    }
                                    Text(card3.description)
                                        .multilineTextAlignment(.leading)
                                        .padding(.trailing)
                                        .foregroundColor(Color("color2"))
                                        .font(.body)
                                }
                                .padding(.horizontal)
                            }
                            .padding()
                        }
                        Spacer()
                        Button("Start") {
                            isChoosing = false
                        }
                        .font(.headline)
                        .padding()
                        .background(Color("color2"))
                        .foregroundColor(Color("color1"))
                        .cornerRadius(12)
                        .padding(10)
                    }
                }
                .navigationTitle("Preparation")
            }
        }
        else {
            BallAnimationView()
        }
        
    }
}


#Preview{
    PreparationView()
}


