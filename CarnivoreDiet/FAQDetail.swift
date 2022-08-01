//
//  CardFAQ.swift
//  CarnivoreDiet
//
//  Created by Jacob Russell on 9/22/21.
//

import SwiftUI

struct FAQDetail: View {
    var fAQItem: FAQView.FAQQuestion
    var fAQDetailText: String {
        switch fAQItem {
        case .question1:
            return "Sugar addiction is a very real problem for a lot of people. Unfortunately, like with most addictions, there are no simple fixes. The good news is that the longer you focus on eating meat and eliminating plants, you will most likely find that sweet and sugary foods no longer appeal to you."
        case .question2:
            return "It happens to a lot of people, especially those who go from a regular junk food diet straight into Carnivore. Those who start from a standard ketogenic diet and only eliminate the plant foods from their diet may not encounter the symptoms of starting the Carnivore diet. Either way, many people experience lightheadedness, nausea, diarrhea, or fatigue when first starting out. A good way to counter this is to supplement with electrolytes like sodium, magnesium and potassium and to drink plenty of water. The symptoms usually go away within the first 2 to 3 weeks."
        case .question3:
            return "To put it into perspective, it is definitely better to eat any kind of meat, as oppose to eating a donut or a cookie. However, in most cases, it is better to go with fresh meats that don't have extra chemicals and preservatives added in. If you do choose to eat processed meats, it's important to pay attention to the carbohydrate amount. Manufacturers love to sneak sugars and starches into processed meats."
        case .question4:
            return "Most carnivores find they get the most energy and satiety from ruminant animals. The most widely avaible ruminant meat is beef. Obviously, there is a wide variety in quality of beef, and it all depends on what the cattle are fed and how they are raised. Grass-fed, grass-finished beef comes from cattle that spend their whole lives on pasture, eating grass. Most commercially raised animals have grains added to their diet during their last few months in order to fatten them up. Grass is the natural food of cattle, so animals that live on grass entirely will be healthier at the point of slaughter. "
        case .question5:
            return "Organs contain the highest concentration of nutrients in an animal. You would definitely benefit from adding things like liver, kidney, and heart to your diet. However, they are not essential to the carnivore diet. Many carnivores thrive without adding organ meats. However, organs are a great way to give yourself a nutritious boost and improve your overall health."
        }
    }
    var body: some View {
        List {
            Text(fAQDetailText)
                .font(.system(size: 20))
        }
    }
}
