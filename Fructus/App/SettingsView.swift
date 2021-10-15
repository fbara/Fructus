//
//  SettingsView.swift
//  Fructus
//
//  Created by Frank Bara on 10/14/21.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    GroupBox(label:
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories.alsdkjflasjfladjfdsjsadlfajdfjlajfljaldjfajdfjajdfjasdfjalsjfjadsl; f")
                                .font(.footnote)
                        }
                        
                    }
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        Divider().padding(.vertical, 4)
                        
                        SettingsRowView(name: "Developer", content: "Frank Bara")
                        SettingsRowView(name: "Designer", content: "Frank Bara")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "BaraLabs", linkDest: "baralabs.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@baralabs", linkDest: "baralabs.com")
                        SettingsRowView(name: "SwiftUI", content: "3.0")
                        SettingsRowView(name: "Version", content: "1.0")
                        
                    }
                    
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                }
                )
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
