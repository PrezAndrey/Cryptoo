//
//  MarketDataService.swift
//  Cryptoo
//
//  Created by Андрей  on 11.05.2023.
//

import Foundation
import Combine

class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getData()
    }
    
    private func getData() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
        
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedGolobalData) in
                self?.marketData = returnedGolobalData.data
                self?.marketDataSubscription?.cancel()
            })
    }
}
