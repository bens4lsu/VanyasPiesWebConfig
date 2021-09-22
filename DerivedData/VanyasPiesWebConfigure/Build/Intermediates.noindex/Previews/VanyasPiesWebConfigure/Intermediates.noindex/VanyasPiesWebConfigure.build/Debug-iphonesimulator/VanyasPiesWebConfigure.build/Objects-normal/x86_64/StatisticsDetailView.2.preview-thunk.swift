@_private(sourceFile: "StatisticsDetailView.swift") import VanyasPiesWebConfigure
import SwiftUI
import SwiftUI

extension StatisticsDetailView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/StatisticsDetailView.swift", line: 27)
        AnyView(StatisticsDetailView(statistic: VPSettings.Statistic(description: __designTimeString("#18049.[2].[0].property.[0].[0].arg[0].value.arg[0].value", fallback: "Number of pies made"), value: __designTimeInteger("#18049.[2].[0].property.[0].[0].arg[0].value.arg[1].value", fallback: 922))))
    #sourceLocation()
    }
}

extension StatisticsDetailView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/StatisticsDetailView.swift", line: 14)
        AnyView(Form {
            Section(header: Text(__designTimeString("#18049.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.arg[0].value", fallback: "Description"))) {
                TextField(__designTimeString("#18049.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: ""), text: $statistic.description)
            }
            Section(header: Text(__designTimeString("#18049.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value.arg[0].value", fallback: "Number"))) {
                TextField(__designTimeString("#18049.[1].[1].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Number"), value: $statistic.value, formatter: NumberFormatter())
            }
        })
    #sourceLocation()
    }
}

import struct VanyasPiesWebConfigure.StatisticsDetailView
import struct VanyasPiesWebConfigure.StatisticsDetailView_Previews