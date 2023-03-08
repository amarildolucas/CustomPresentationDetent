//
//  ContentModalSheet.swift
//  CustomPresentationDetent
//
//  Created by Amarildo João Custódio Lucas on 08/03/23.
//

import SwiftUI

struct ContentModalSheet {
    @Environment(\.dismiss) private var dismissModalSheet
}

extension ContentModalSheet: View {
    var body: some View {
        VStack {
            ZStack {
                Button(action: dismissModalSheet.callAsFunction) {
                    Image(systemName: "xmark")
                }
                .fontWeight(.semibold)
                .foregroundColor(Color(uiColor: .label))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            Text("Showing Modal Sheet")
                .font(.title3)
            Spacer()
        }
        .padding()
    }
}

#if DEBUG
struct ContentModalSheet_Previews: PreviewProvider {
    static var previews: some View {
        ContentModalSheet()
    }
}
#endif
