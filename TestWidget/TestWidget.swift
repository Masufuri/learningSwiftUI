//
//  TestWidget.swift
//  TestWidget
//
//  Created by Chien ND on 30/9/25.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), emoji: "😀")
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), emoji: "😀")
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, emoji: "😀")
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }

//    func relevances() async -> WidgetRelevances<Void> {
//        // Generate a list containing the contexts this widget is relevant in.
//    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let emoji: String
}

struct TestWidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        GeometryReader { geo in
                VStack {
                    Text("Time:")
                    Text(entry.date, style: .time)
                    
                    Text("Emoji:")
                    Text(entry.emoji)
                    Button("asdads") {
                        
                    }
                    .buttonStyle(.bordered)
                }
//                .padding()
                .frame(width: geo.size.width, height: geo.size.height)
//                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//                .background(.red)
                
                .background {
                    Image(.frame2147225982)
                        .resizable()
                        .scaledToFill()
//                        .padding(-60)
//                        .frame(width: geo.size.width, height: geo.size.height)
//                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                }
            
            
            
        }
    }
}

struct TestWidget: Widget {
    let kind: String = "TestWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            if #available(iOS 17.0, *) {
                TestWidgetEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                TestWidgetEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .contentMarginsDisabled()
    }
}

@available(iOSApplicationExtension 17.0, *)
#Preview(as: .systemSmall) {
    TestWidget()
} timeline: {
    SimpleEntry(date: .now, emoji: "😀")
    SimpleEntry(date: .now, emoji: "🤩")
}

//struct TestWidget_Previews: PreviewProvider {
//    static var previews: some View {
//        TestWidgetEntryView(entry: SimpleEntry(date: Date(), emoji: ""))
//            .previewContext(WidgetPreviewContext(family: .systemSmall))
//    }
//}
