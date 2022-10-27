//
//  ContentView.swift
//  Accessible Character Sheet
//
//  Created by Ricardo Herrera on 10/24/22.
//
import CoreData
import SwiftUI
import Foundation
struct ContentView: View {
	var shit = ["People" : 1]
	@Environment(\.managedObjectContext) var moc
	@FetchRequest(sortDescriptors: []) var sheets: FetchedResults<Sheet>
	var body: some View {
		VStack {
			List {
				ForEach(sheets) {
					sheet in
					let stats = sheet.stats
					if let stats = stats?.int {
						Text("Intel: \(stats)")
					}
					}
				}
			}
			Button("push me") {

				let newSheet = Sheet(context: moc)
				newSheet.stats = Stats(context: moc)
				newSheet.stats?.int = 16
				try? moc.save()
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
