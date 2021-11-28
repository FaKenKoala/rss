//
//  rss_wombat.swift
//  rss-wombat
//
//  Created by wombat on 2021/11/28.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent(), flutterData: FlutterData(text: "Hello from Flutter placeholder"))
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration, flutterData: FlutterData(text: "Hello from Flutter snapshot"))
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []
        
        let sharedDefaults = UserDefaults.init(suiteName: "group.com.wombat.rss")
        var flutterData: FlutterData? = nil
        
        if(sharedDefaults != nil) {
            do {
                let shared = sharedDefaults?.string(forKey: "rss_widget_data")
                if(shared != nil) {
                    let decoder = JSONDecoder()
                    flutterData = try decoder.decode(FlutterData.self, from: shared!.data(using: .utf8)!)
                }
            } catch {
                print(error)
            }
        }

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        let entryDate = Calendar.current.date(byAdding: .hour, value: 24, to: currentDate)!
        let entry = SimpleEntry(date: entryDate, configuration: configuration, flutterData: flutterData)
        
//        for hourOffset in 0 ..< 5 {
//            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
//            let entry = SimpleEntry(date: entryDate, configuration: configuration)
//            entries.append(entry)
//        }
        entries.append(entry)

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct FlutterData: Decodable, Hashable {
    let text: String
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    let flutterData: FlutterData?
}

struct rss_wombatEntryView : View {
    var entry: Provider.Entry
    
    private var RssWidgetView: some View {
        Text(entry.flutterData!.text)
    }
    
    private var NoDateView: some View {
        Text("No Data found! Go to the Flutter App")
    }

    var body: some View {
        if(entry.flutterData == nil) {
            NoDateView
        } else {
            RssWidgetView
        }
    }
}

@main
struct rss_wombat: Widget {
    let kind: String = "rss_wombat"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            rss_wombatEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct rss_wombat_Previews: PreviewProvider {
    static var previews: some View {
        rss_wombatEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent(), flutterData: nil))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
