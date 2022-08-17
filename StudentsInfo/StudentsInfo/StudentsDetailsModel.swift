//
//  StudentsDetailsModel.swift
//  StudentsInfo
//
//  Created by Sumaya Buzlouf on 17/08/2022.
//

import Foundation

struct StudentsDetailsModel: Identifiable {
    let id = UUID()
    var fullName : String
    var year : Int
    var age : Int
}

var Sumaya = StudentsDetailsModel(fullName: "Sumaya Buzlouf", year: 2006, age: 16)

var Mohammad = StudentsDetailsModel(fullName: "Mohammad Buzlouf", year: 2004, age: 17)

var Zahraa = StudentsDetailsModel(fullName: "Zahraa Buzlouf", year: 1999, age: 22)


var students = [Sumaya, Mohammad, Zahraa]
