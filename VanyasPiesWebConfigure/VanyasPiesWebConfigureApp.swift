//
//  VanyasPiesWebConfigureApp.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/20/21.
//

import SwiftUI

@main
struct VanyasPiesWebConfigureApp: App {
    
    var vpSettings = VPSettings(productCategories: [], statistics: [])

    var body: some Scene {
        WindowGroup {
            LoadingView(vpSettings: vpSettings)
        }
    }
    
}
