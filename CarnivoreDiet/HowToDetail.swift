//
//  CardHowTo.swift
//  CarnivoreDiet
//
//  Created by Jacob Russell on 9/22/21.
//

import SwiftUI

enum HowToItem: CaseIterable {
    case eatMeat, reduceCarbs, listen, adjust
    
    var titleText: String {
        switch self {
        case .eatMeat:
            return "Eat meat!"
        case .reduceCarbs:
            return "Reduce Carbohydrates"
        case .listen:
            return "Listen to Your Body"
        case .adjust:
            return "Adjust As You Go"
        }
    }
    var detailText: String {
        switch self {
        case .eatMeat:
            return "Essentially, a carnivore diet allows you to eat any kind of meat. Everything from beef to pork to chicken is appropriate, as well as lamb, turkey, seafood and wild game. Organ meat is also a healthy, nutrient-dense addition to your menu. Many carnivores find that ruminant meat, such as beef, lamb and venison provide the most nutrients and are the most satisfying. You may also choose to add in other animal products, like eggs and dairy, if you tolerate them."
        case .reduceCarbs:
            return "A carnivore diet is a very low or no carb diet. At its core, this is a ketogenic diet, in that it puts your body into a state of ketosis. While in ketosis, the body uses fat as its main source of energy, instead of carbohydrates. Because of this, it's important to consume plenty of fats by eating fattier cuts of meat. This provides the body with energy, and it satiates the appetite so you don't constantly feel hungry."
        case .listen:
            return "Pay attention to what your body says. If you're hungry, eat. If you're not hungry, don't eat. If a particular food seems to be causing you problems, stop eating it. The main rule is to find what feels right within the carnivore parameters and stick with it. And of course, see a doctor if you start to see significant problems."
        case .adjust:
            return "Along the way, your body will change. Your tastes will change. You may need to make changes as you go along."
        }
    }
}
