//
//  HomeStatisticView.swift
//  Cryptoo
//
//  Created by Андрей  on 09.05.2023.
//

import SwiftUI

struct HomeStatisticView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    @Binding var showPortfolio: Bool
    
    var body: some View {
        HStack {
            ForEach(vm.statistics) { stat in
                StatisticView(stat: stat)
            }
            .frame(width: UIScreen.main.bounds.width / 3)
        }
        .frame(width: UIScreen.main.bounds.width,
               alignment: showPortfolio ? .trailing : .leading)
    }
}

struct HomeStatisticView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStatisticView(showPortfolio: .constant(false))
            .environmentObject(dev.homeVM)
    }
}
