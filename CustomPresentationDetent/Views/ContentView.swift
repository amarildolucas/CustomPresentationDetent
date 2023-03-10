//
//  ContentView.swift
//  CustomPresentationDetent
//
//  Created by Amarildo João Custódio Lucas on 08/03/23.
//

import SwiftUI

struct ContentView {
    @State private var isPresentingSheet: Bool = false
    @State private var selectDetent: PresentationDetent = .bottom
}

extension ContentView: View {
    var body: some View {
        VStack {
            Button(action: presentSheet) {
                HStack {
                    Image(systemName: "arrow.up")
                    Text("Present Sheet")
                }
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .background(Color.accentColor)
                .cornerRadius(8)
            }
            .sheet(isPresented: $isPresentingSheet) {
                ContentModalSheet()
                    .presentationDetents(
                        [.bottom, .mediumBottomBar, .largeBottomBar],
                        selection: $selectDetent
                    )
            }
        }
        .padding()
    }
}

extension ContentView {
    private func presentSheet() {
        isPresentingSheet.toggle()
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
