//
//  SettingsView.swift
//  Fructos
//
//  Created by Manvendu Pathak on 28/04/21.
//

import SwiftUI

struct SettingsView: View {
//MARK:- PROPERTIES

    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
    
//MARK:- BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing:20){
                   //MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                         SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical,4)
                       
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80, alignment: .center)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat,sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients,including potassium dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                  //MARK: - SECTION 2
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical,4)
                        Text("If you wish, you can restart he application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(height: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            Text("Restart".uppercased())
                        }
                        
                    }
                  //MARK: - SECTION 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){
                        Divider().padding().foregroundColor(Color.gray)
                        HStack{
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Manvendu Pathak")
                        }
                        
                    }//:- BOX
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }, label: {
                                            Image(systemName: "xmark")
                                        })
                )
                .padding()
            }//: SCROLL
           
        }//: NAVIGATION
       
    }
}

//MARK:- PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
