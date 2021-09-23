//
//  HostDataController.swift
//  VanyasPiesWebConfigure
//
//  Created by Ben Schultz on 9/21/21.
//

import Foundation

class HostDataController {
    
    var settings: VPSettings
    let remoteSettingsPath = "https://vanyaspies.com/settings.json"
    
    enum HostDataControllerError: String, Error {
        case unableToCreateJSONString = "Failed to convert the settings to a valid JSON string.  See HostDataController.encode()."
        case invalidSettingsPath = "Remote Settings Path is invalid."
        case loadDataIncomplete = "Load data is incomplete.  There must be statistics for four slots."
    }
    
    init(_ settings: VPSettings) {
        self.settings = settings
    }
    
    init() throws {
        guard let url = URL(string: remoteSettingsPath) else {
            throw HostDataControllerError.invalidSettingsPath
        }
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        settings = try decoder.decode(VPSettings.self, from: data)
    }
    
    private func encode() throws -> String {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted

        let jsonData = try encoder.encode(settings)

        guard let jsonString = String(data: jsonData, encoding: .utf8) else {
            throw(HostDataControllerError.unableToCreateJSONString)
        }
        return jsonString
       
    }
    
    func pushSettingsToSite() throws {
        let jsonString = try encode()
        print (jsonString)
        
    }
}
