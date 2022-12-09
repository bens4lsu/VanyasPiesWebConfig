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
    let updateEndpointPath = "https://vanyaspies.com/update-site-settings.php"
    let authKey = "Q2I1dFlmQXRKKHUtI2hHNjE0YzlkMTU2ODhmYQ=="
    
    enum HostDataControllerError: String, Error {
        case unableToCreateJSONString = "Failed to convert the settings to a valid JSON string.  See HostDataController.encode()."
        case invalidSettingsPath = "Remote Settings Path is invalid."
        case loadDataIncomplete = "Load data is incomplete.  There must be statistics for four slots."
        case invalidUpdateEncpointPath = "Update Import Path is invalid."
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
    
    private func encode() throws -> (String, Data) {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted

        let jsonData = try encoder.encode(settings)

        guard let jsonString = String(data: jsonData, encoding: .utf8) else {
            throw(HostDataControllerError.unableToCreateJSONString)
        }
        return (jsonString, jsonData)
       
    }
    
    func pushSettingsToSite() throws {
        
        let (_, jsonData) = try self.encode()
        
        let session = URLSession(configuration: .default)
        guard let url = URL(string: updateEndpointPath) else {
            throw HostDataControllerError.invalidUpdateEncpointPath
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue(authKey, forHTTPHeaderField: "Auth")
        request.httpBody = jsonData
        let task = session.dataTask(with: request) { data, response, error in
            guard let _ = data else {
                return
            }
            //print(String(data: data, encoding: .utf8))
        }
        task.resume() // <- otherwise your network request won't be started
        
    }
}
