//
//  Person.swift
//  ProfileCardExample
//
//  Created by Ashutosh Chourasiya on 07/02/25.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let bannerImage: String
    let profileImage: String
    let name: String
    let followerCount: Int
    let jobTitle: String
}

struct ProfileCardMockData {
    static let persons = [person1, person2, person3, person4, person5]
    
    static let person1 = Person(
        bannerImage: "Background1",
        profileImage: "Avatar1",
        name: "ASHUTOSH CHOURASIYA",
        followerCount: 99676,
        jobTitle: "iOS Developer"
    )
    
    static let person2 = Person(
        bannerImage: "Background2",
        profileImage: "Avatar2",
        name: "CHIRAG VASANI",
        followerCount: 20836,
        jobTitle: "Android Developer"
    )
    
    static let person3 = Person(
        bannerImage: "Background3",
        profileImage: "Avatar3",
        name: "ASHUTOSH SINGH BAIS",
        followerCount: 24324,
        jobTitle: "Python Developer"
    )
    
    static let person4 = Person(
        bannerImage: "Background4",
        profileImage: "Avatar4",
        name: "JAYANT VISHWAKARMA",
        followerCount: 65334,
        jobTitle: "Backend Developer"
    )
    
    static let person5 = Person(
        bannerImage: "Background5",
        profileImage: "Avatar5",
        name: "JAHNVI KEWAT",
        followerCount: 345235,
        jobTitle: "Frontend Developer"
    )
}
