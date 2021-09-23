//
//  Loading.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/22/21.
//

import SwiftUI

struct LoadingView: View {

    @State private var settingsDidLoad = false
    @State private var isError = false
    @State private var error: Error?
    @State var vpSettings: VPSettings

    var body: some View {
        if settingsDidLoad && !isError {
            ContentView(vpSettings: vpSettings)
        }
        else {
            VStack {
                Text("Loading current site configuration.")
                ProgressView()
            }
            .onAppear() {
                do {
                    let hostDataController = try HostDataController()
                    vpSettings = hostDataController.settings
                    settingsDidLoad = true
                }
                catch (let e) {
                    print (e.localizedDescription)
                    self.error = e
                    isError = true
                }
            }
            .alert(isPresented: $isError) {
                guard let desc = error?.localizedDescription else {
                    return Alert(title: Text("Error"), message: Text("An unspecified error occurred after the loading screen appeared."),  dismissButton: .default(Text("OK")))
                }
                return Alert(title: Text("Error"), message: Text(desc),  dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(vpSettings: VPSettings())
    }
}
