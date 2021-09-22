@_private(sourceFile: "StatisticsDetailView.swift") import VanyasPiesWebConfigure
import SwiftUI
import SwiftUI

extension StatisticsDetailView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/StatisticsDetailView.swift", line: 27)
        AnyView(__designTimeSelection(StatisticsDetailView(statistic: __designTimeSelection(VPSettings.Statistic(description: __designTimeString("#18049.[2].[0].property.[0].[0].arg[0].value.arg[0].value", fallback: "Number of pies made"), value: __designTimeInteger("#18049.[2].[0].property.[0].[0].arg[0].value.arg[1].value", fallback: 922)), "#18049.[2].[0].property.[0].[0].arg[0].value")), "#18049.[2].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

extension StatisticsDetailView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ben/Sync/XCode/projects/VanyasPiesWebConfigure/VanyasPiesWebConfigure/Views/StatisticsDetailView.swift", line: 14)
        AnyView(__designTimeSelection(Form {
            __designTimeSelection(Section(header: __designTimeSelection(Text(__designTimeString("#18049.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.arg[0].value", fallback: "Description")), "#18049.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value")) {
                __designTimeSelection(TextField(__designTimeString("#18049.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: ""), text: __designTimeSelection($statistic.description, "#18049.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value")), "#18049.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
            }, "#18049.[1].[1].property.[0].[0].arg[0].value.[0]")
            __designTimeSelection(Section(header: __designTimeSelection(Text(__designTimeString("#18049.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value.arg[0].value", fallback: "Number")), "#18049.[1].[1].property.[0].[0].arg[0].value.[1].arg[0].value")) {
                __designTimeSelection(TextField(__designTimeString("#18049.[1].[1].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[0].value", fallback: "Number"), value: __designTimeSelection($statistic.value, "#18049.[1].[1].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[1].value"), formatter: __designTimeSelection(NumberFormatter(), "#18049.[1].[1].property.[0].[0].arg[0].value.[1].arg[1].value.[0].arg[2].value")), "#18049.[1].[1].property.[0].[0].arg[0].value.[1].arg[1].value.[0]")
            }, "#18049.[1].[1].property.[0].[0].arg[0].value.[1]")
        }, "#18049.[1].[1].property.[0].[0]"))
    #sourceLocation()
    }
}

import struct VanyasPiesWebConfigure.StatisticsDetailView
import struct VanyasPiesWebConfigure.StatisticsDetailView_Previews