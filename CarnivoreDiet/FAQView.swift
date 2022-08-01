//
//  FAQTab.swift
//  CarnivoreDiet
//
//  Created by Jacob Russell on 9/22/21.
//

import SwiftUI

struct FAQView: View {
    enum FAQQuestion: String, CaseIterable {
        case question1, question2, question3, question4, question5
        var question: String {
            switch self {
            case.question1:
                return "How do I overcome sugar addiction?"
            case.question2:
                return "Is it normal to feel sick when starting the carnivore diet?"
            case.question3:
                return "Is it okay to eat processed meats like hotdogs or lunchmeats?"
            case.question4:
                return "Do I need to eat grassfed, grass-finished beef?"
            case.question5:
                return "Do I need to eat organs to be healthy?"
            }
        }
    }
    var body: some View {
        NavigationView {
            List(FAQQuestion.allCases, id: \.self) {item in
                NavigationLink(
                    destination: FAQDetail(fAQItem: item),
                    label: {
                        Text(item.question)
                            .font(.system(size: 24))
                            .padding()
                    })
            }
            .navigationBarTitle("FAQs")
        }
    }
    
    struct FAQTab_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
