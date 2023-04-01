//
//  MatchingSample.swift
//  Let'sTalk_MobileApp_Team10
//
//  Created by Krishna Sai  on 3/29/23.
//

import SwiftUI

struct MatchingSample: View {
    struct User {
        var interests: [String]
        var communicationLevel: String
        var communicationStyle: String
        var description: String {
                return "interests: \(interests), communicationLevel: \(communicationLevel), communicationStyle: \(communicationStyle)"
            }
    }

    // Sample user profiles
    let user1 = User(interests: ["music", "movies", "travel"], communicationLevel: "cautious chat", communicationStyle: "listener/observer")
    let user2 = User(interests: ["music", "reading", "photography"], communicationLevel: "courageous chat", communicationStyle: "talker/sharer")
    let user3 = User(interests: ["travel", "photography", "cooking"], communicationLevel: "moderate chat", communicationStyle: "listener/observer")

    // Matching algorithm function
    func calculateMatchScore(user1: User, user2: User) -> Int {
        var score = 0
        
        // Calculate compatibility based on shared interests
        let sharedInterests = Set(user1.interests).intersection(Set(user2.interests))
        score += sharedInterests.count * 10
        
        // Calculate compatibility based on communication level
        if user1.communicationLevel == user2.communicationLevel {
            score += 20
        }
        
        // Calculate compatibility based on communication style
        if user1.communicationStyle != user2.communicationStyle {
            score -= 10
        }
        
        return score
    }

    var body: some View {
        // Example usage: find best match for user1 among user2 and user3
        let matchScores = [        calculateMatchScore(user1: user1, user2: user2),        calculateMatchScore(user1: user1, user2: user3)    ]
        
        if let bestMatchIndex = matchScores.firstIndex(of: matchScores.max()!) {
            let bestMatchUser = [user2, user3][bestMatchIndex]
            Text("Best match for user1: \(bestMatchUser.description)")
        } else {
            Text("No match found")
        }
    }

}

struct MatchingSample_Previews: PreviewProvider {
    static var previews: some View {
        MatchingSample()
    }
}
