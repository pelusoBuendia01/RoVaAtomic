//
//  StringField.swift
//  
//
//  Created by Francisco Romero on 16/04/23.
//

import SwiftUI

public struct StringField: View {
    @State var text : String
    var title: String
    var promt: Text?
    
    public var body: some View {
        VStack {
            TextField(
                title,
                text: $text,
                prompt: promt
            )
            .font(.body)
            .textFieldStyle(.plain)
        }
        .frame(height: 18)
        .padding(.vertical, 16)
        .background()
    }
    
    public init(text: State<String>, title: String = "", promt: Text? = nil) {
        self._text = text
        self.title = title
        self.promt = promt
    }
    
    
}

struct StringField_Previews: PreviewProvider {
    @State static var text = "text"
    @State static var noText = ""
    static var title = "text field input"
    static var previews: some View {
        VStack {
            StringField(text: _text,title: title)
            StringField(text: _noText,title: title)
        }
    }
}
