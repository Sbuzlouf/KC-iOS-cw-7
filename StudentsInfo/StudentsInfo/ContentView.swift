//
//  ContentView.swift
//  StudentsInfo
//
//  Created by Sumaya Buzlouf on 17/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack{
            Text("Students Info.")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .background(.yellow.opacity(0.7))
                .cornerRadius(30)
            
            Image("id")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
            
            ScrollView(.horizontal){
                HStack {
                    ForEach(students) { student in
                        VStack {
                            Divider()
                            Text("Name: \(student.fullName)")
                                .padding(9)
                            Text("Age: \(student.age)")
                                .padding(9)
                            Text("BirthYear: \(student.year)")
                                .padding(9)
                            Divider()
                            
                        }.padding()
                        .font(.system(size: 30))
                    }.frame(width: 400, height: 300)
                }
            }.padding()
            
            Spacer()
            
            HStack {
                Image(systemName: "info.circle.fill")
                    .foregroundColor(.orange)
                    
                Text("Signed student Number: \(students.count)")
                    .foregroundColor(.mint)
                    .fontWeight(.semibold)
                    
            }.padding()
                .font(.system(size: 20))
            
            
            
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
