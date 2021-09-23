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
            ForEach(statistics.indices) { i in
                let keyNum = i + 1
                NavigationLink(destination: Text("TBD")) {
                    VStack(alignment: .leading) {
                        Text("Slot #\(keyNum)")
                            .textStyle(BlueTextStyle())
                        Text("\(statistics[i].value)  |  \(statistics[i].description)")
                            .textStyle(GrayTextStyle())
                    }
                }.isDetailLink(false)
            }
        }.navigationBarItems(trailing: EditButton())
    }
}

struct StatisticsListView_Previews: PreviewProvider {
    static var previews: some View {
        StatefulPreviewWrapper(VPSettings().statistics) {
            StatisticsListView(statistics: $0)
        }
    }
}
