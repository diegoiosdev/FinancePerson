import SwiftUI

    internal struct HomeVIewApp: View {
    
    @State private var isAnimated = false
    @State private var imageOffSet: CGSize = .zero
    @State private  var buttonOffSet: CGFloat = .zero
    @State private var showHomeView = false
    
    let buttoHeight: CGFloat = 80
    
    internal  var body: some View {
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .foregroundColor(Color(.systemGreen))
                    .frame(width: isAnimated ? 200 : 0)
                    .position(x: isAnimated ? 50: -50, y: isAnimated ? 100: -100)
                    .blur(radius: 60)
                    .opacity(isAnimated ? 1: 0.5)
                Circle()
                    .foregroundColor(Color(.green))
                    .frame(width: isAnimated ? 200 : 0)
                    .position(x: isAnimated ? geometry.size.width - 50 : geometry.size.width + 50,  y: isAnimated ? geometry.size.height - 50 : geometry.size.height + 50)
                    .blur(radius: 60)
                    .opacity(isAnimated ? 0.5 : 0)
                VStack {
                    Text("Meu Dinheiro")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .foregroundColor(Color(.black))
                        .opacity(isAnimated ? 1 : 0)
                        .offset(y: isAnimated ? 0 : -40)
                    
                    Text("O controle está em suas mãos!")
                        .font(.title2)
                        .padding()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black.opacity(0.7))
                        .opacity(isAnimated ? 1 : 0)
                        .offset(y: isAnimated ? 0 : -40)
                    
                    Image("Business")
                        .resizable()
                        .scaledToFit()
                        .shadow(radius: 60)
                        .padding(32)
                        .opacity(32)
                        .offset(x: imageOffSet.width, y: imageOffSet.height)
                        .gesture(
                            DragGesture()
                                .onChanged({ gesture in
                                    withAnimation(.easeInOut(duration: 0.5)) {
                                        imageOffSet = gesture.translation
                                    }
                                })
                                .onEnded({ _ in
                                    withAnimation(.easeInOut(duration: 0.5)) {
                                        imageOffSet = .zero
                                    }
                                }))
                    ZStack {
                        Capsule()
                            .fill(Color(.green).opacity(0.2))
                        
                        Capsule()
                            .fill(Color(.green).opacity(0.2))
                            .padding(8)
                        
                        Text("Cadastrar contas!")
                            .font(.title2)
                            .bold()
                            .foregroundColor(Color(.black))
                            .offset(x: 20)
                        
                        
                        HStack {
                            Capsule()
                                .fill(Color(.black))
                                .frame(width: buttonOffSet + buttoHeight)
                            
                            Spacer()
                        }
                        
                        HStack {
                            ZStack {
                                Circle()
                                    .fill(Color(.systemGreen))
                                
                                Circle()
                                    .fill(Color(.black))
                                    .padding(8)
                                
                                Image(systemName: "chevron.right.2")
                                    .font(.system(size: 24))
                                    .bold()
                                    .foregroundColor(.white)
                            }
                            Spacer()
                        }
                        
                        .offset(x: buttonOffSet)
                        .gesture(
                            DragGesture()
                                .onChanged({ gesture in
                                    
                                    if gesture.translation.width >= 0 && buttonOffSet <= (geometry.size.width - 60) - buttoHeight {
                                        
                                        withAnimation(.easeInOut(duration: 0.25)) {
                                            buttonOffSet = gesture.translation.width
                                        }
                                    }
                                })
                            
                                .onEnded({ _ in
                                    
                                    if buttonOffSet > (geometry.size.width - 60) / 2 {
                                        showHomeView = true
                                        
                                    } else {
                                        withAnimation(.easeInOut(duration: 0.25)) {
                                            buttonOffSet = 0
                                        }
                                    }
                                    
                                })
                        )
                    }
                    .frame(width: geometry.size.width - 60, height: buttoHeight)
                    .opacity(isAnimated ? 1 : 0)
                    .offset(y: isAnimated ? 0 : 100)
                }
                .onAppear {
                    withAnimation(.easeInOut(duration: 1.5)) {
                        isAnimated = true
                    }
                }
            }
            
        }
        .fullScreenCover(isPresented: $showHomeView) {
            ContentViewHome()
        }
    }
}

struct HomeVIewApp_Previews: PreviewProvider {
    static var previews: some View {
        HomeVIewApp()
    }
}
