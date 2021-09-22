//
//  Loading.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/22/21.
//

import SwiftUI

struct LoadingView: View {
    
    @ObservedObject var vpSettings: VPSettings
    
    var body: some View {
        NavigationView {
            Text("Loading current site configuration.")
            ProgressView()
        }.onAppear {
            let hostDataController = try! HostDataController()
        }
    }
}

struct Loading_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(vpSettings: VPSettings())
    }
}
