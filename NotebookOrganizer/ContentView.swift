//
//  ContentView.swift
//  NotebookOrganizer
//
//  Created by Zachary Wilson on 3/2/24.
//

import SwiftUI
import IRLPDFScanContent
import UniformTypeIdentifiers

struct ContentView: View {
    
    @ObservedObject var scanner: IRLPDFScanContent = IRLPDFScanContent()
    @State private var isExporting: Bool = false
    
    var body: some View {
        NavigationView {
            Text("Press the Scan button")
                VStack() {
                     if let latestScan = scanner.latestScan {
                        latestScan.swiftUIPDFView
                        
                    } else {
                        Text("Press the Scan button")
                    }
                }
                .padding()
                .navigationBarItems(trailing: Button("Scan", action: {
                    scanner.present(animated: true, completion: nil)
                }))
                .navigationBarItems(leading: Button("", systemImage: "square.and.arrow.up", action: (
//                    .fileExporter(isPresented: true, documents: scanner.latestScan, contentType: UniformTypeIdentifiers.UTType, onCompletion: { Swift.print("Sucess!") })
//                    })(
//                        isPresented: $isExporting,
//                        document: scanner.latestScan,
//                        contentType: UTType.plainText,
//                        defaultFilename: "Message"
//                    ) { result in
//                        if case .success = result {
//                            Swift.print("Success!")
//                        } else {
//                            Swift.print("Something went wrong…")
//                        }
//                    }
                )))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
