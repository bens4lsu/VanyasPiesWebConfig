//
//  ContentView.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/20/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var vpSettings: VPSettings
    //@State private var isError = false
    
    var body: some View {
        NavigationView {
            List{
                NavigationLink(destination: ProductCategoryListView(productCategories: $vpSettings.productCategories)) {
                    Text("Products")
                        .textStyle(BlueTextStyle())
                }.isDetailLink(false)
                
                NavigationLink(destination: StatisticsListView(statistics: $vpSettings.statistics)) {
                    Text("Statistics")
                        .textStyle(BlueTextStyle())
                }
                Spacer()
            
                NavigationLink(destination: Text("Coming Soon")) {
                    Text("Images")
                        .textStyle(BlueTextStyle())
                }
                Spacer()
                Button("Push settings to website") {
                    let controller = HostDataController(vpSettings)
                    do {
                        try controller.pushSettingsToSite()
                    }
                    catch let error as HostDataController.HostDataControllerError {
                        print ("error in upload. Handle the error here. \(error.rawValue)")
                    }
                    catch {
                        print ("An unhadled error occurred.")
                    }
                }
                
            }
        }
        .navigationBarTitle(
            Text("VanyasPies Config")
        )
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView(vpSettings: VPSettings())
    }
}
