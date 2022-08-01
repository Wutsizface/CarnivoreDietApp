//
//  ResourcesTab.swift
//  CarnivoreDiet
//
//  Created by Jacob Russell on 9/22/21.
//

import SwiftUI

struct ResourcesView: View {
    var body: some View {
        List {
            Text("Carnivore Reading List")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            
            Link("The Carnivore Code, by Paul Saladino, MD", destination: URL(string: "https://www.amazon.com/Carnivore-Code-Unlocking-Returning-Ancestral/dp/035846997X/ref=mp_s_a_1_1?crid=20T0SVR6189XD&dchild=1&keywords=the+carnivore+code&qid=1633448740&sprefix=the+carnivore+code%2Caps%2C196&sr=8-1")!)
                .font(.system(size: 16))
                .foregroundColor(.red)
                .padding()
            Link("The Carnivore Diet, by Shawn Baker, MD", destination: URL(string:"https://www.amazon.com/dp/162860350X/?_encoding=UTF8&pd_rd_w=e5sjF&pf_rd_p=f0565570-f67b-4783-ab26-5a1f2c0bb3fd&pf_rd_r=DJV4FF4W5HJND0ZJ83PZ&pd_rd_r=f10f62c9-d332-4330-bd15-e197d655374d&pd_rd_wg=JHGif&ref_=bd_tags_dp_rec")!)
                .font(.system(size: 16))
                .foregroundColor(.red)
                .padding()
            Link("Carnivore Cure: The Ultimate Elimination Diet to Attain Optimal Health and Heal Your Body,by Judy Cho, NTP", destination: URL(string: "https://www.amazon.com/Carnivore-Cure-Ultimate-Elimination-Optimal/dp/1735581003/ref=pd_bxgy_img_2/133-9769574-5862630?pd_rd_w=n8o0t&pf_rd_p=c64372fa-c41c-422e-990d-9e034f73989b&pf_rd_r=MHP1GYNEMEQW3VNMKK2J&pd_rd_r=da610cb0-0366-4c37-a4f7-3b91f412fecd&pd_rd_wg=6cIeT&pd_rd_i=1735581003&psc=1")!)
                .font(.system(size: 16))
                .foregroundColor(.red)
                .padding()
            Link("Lies My Doctor Told Me Second Edition: Medical Myths That Can Harm Your Health, by Ken D. Berry, MD, FAAFP", destination: URL(string: "https://www.amazon.com/dp/162860378X/ref=sspa_dk_detail_2?psc=1&pd_rd_i=162860378Xp13NParams&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExRlEyRzFNWU0yR0hNJmVuY3J5cHRlZElkPUEwOTgxMDk4M0xKNVI3UUNMNjdSVSZlbmNyeXB0ZWRBZElkPUEwMzgwNjc2UFo1UVJXODBCRTIxJndpZGdldE5hbWU9c3BfZGV0YWlsMiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=")!)
                .font(.system(size: 16))
                .foregroundColor(.red)
                .padding()
            
            Text("Carnivore Channels on YouTube")
                .font(.system(size: 30, weight: .bold, design: .rounded))
            
            Link("Shawn Baker, MD", destination: URL(string: "https://www.youtube.com/c/ShawnBakerMD/featured")!)
                .font(.system(size: 16))
                .foregroundColor(.red)
                .padding()
            Link("Ken D. Berry, MD", destination: URL(string: "https://www.youtube.com/c/KenDBerryMD")!)
                .font(.system(size: 16))
                .foregroundColor(.red)
                .padding()
            Link("Steak and Butter Gal", destination: URL(string: "https://www.youtube.com/c/SteakandButterGal")!)
                .font(.system(size: 16))
                .foregroundColor(.red)
                .padding()
        }
    }
}

struct ResourcesTab_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
