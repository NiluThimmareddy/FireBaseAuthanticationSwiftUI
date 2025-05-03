import func SwiftUI.__designTimeFloat
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeInteger
import func SwiftUI.__designTimeBoolean

#sourceLocation(file: "/Users/toqsoft/Desktop/BootCamp-YoutubeVideos/FireBaseAuthanticationSwiftUI/FireBaseAuthanticationSwiftUI/Screens/Auth/Views/InputView.swift", line: 1)
//
//  InputView.swift
//  FireBaseAuthanticationSwiftUI
//
//  Created by ToqSoft on 03/05/25.
//

import SwiftUI

struct InputView: View {
    
    let placeholder : String
    var isSecureField : Bool = false
    @Binding  var text : String
    var body: some View {
        VStack(spacing: __designTimeInteger("#66660_0", fallback: 20)) {
            if isSecureField{
                SecureField(placeholder, text: $text)
            }else{
                TextField(placeholder, text: $text)
            }
            Divider()
        }
    }
}

#Preview {
    InputView(placeholder: __designTimeString("#66660_1", fallback: "Email or Phone number"), text: .constant(__designTimeString("#66660_2", fallback: "")))
}
