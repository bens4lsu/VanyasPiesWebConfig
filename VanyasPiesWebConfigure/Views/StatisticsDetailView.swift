//
//  StatisticsDetailView.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/21/21.
//

import SwiftUI

struct StatisticsDetailView: View {
    @Binding var statistic: VPSettings.Statistic
    
    var body: some View {
        Form {
            Section(header: Text("Description")) {
                TextField("", text: $statistic.description)
            }
            Section(header: Text("Number")) {
                TextField("Number", value: $statistic.value, formatter: NumberFormatter())
            }
        }
    }
}

struct StatisticsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StatefulPreviewWrapper(VPSettings().statistics[0]) {
            StatisticsDetailView(statistic: $0)
        }
    }
}
