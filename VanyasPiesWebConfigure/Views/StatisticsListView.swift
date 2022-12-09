//
//  StatisticsListView.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/21/21.
//

import SwiftUI

struct StatisticsListView: View {
    
    @Binding var statistics: [VPSettings.Statistic]
        
    var body: some View {
        List {
            ForEach($statistics) { $statistic in
                NavigationLink(destination: StatisticsDetailView(statistic: $statistic)) {
                    VStack(alignment: .leading) {
                        Text("Slot #\(statistic.id)")
                            .textStyle(BlueTextStyle())
                        Text("\(statistic.value)  |  \(statistic.description)")
                            .textStyle(GrayTextStyle())
                    }
                }.isDetailLink(false)
            }.onMove(perform: moveRow)
        }.navigationBarItems(trailing: EditButton())
    }
    
    private func moveRow(source: IndexSet, destination: Int){
        statistics.move(fromOffsets: source, toOffset: destination)
        for i in 0..<statistics.count {
            statistics[i].id = i
        }
    }
    
}

struct StatisticsListView_Previews: PreviewProvider {
    static var previews: some View {
        StatefulPreviewWrapper(VPSettings().statistics) {
            StatisticsListView(statistics: $0)
        }
    }
}
