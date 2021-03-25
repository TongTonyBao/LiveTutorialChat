//
//  ChatRoomsView.swift
//  LiveChat
//
//  Created by Andrew Morgan on 24/03/2021.
//

import SwiftUI

struct ChatRoomsView: View {
    let username: String
    let rooms = ["Atlas", "Realm", "Charts", "Search", "Server"]
    
    
    var body: some View {
        List {
            ForEach(rooms, id: \.self ) { room  in
                NavigationLink (
                    destination: ChatsView(username: username, room: room)
                        .environment(\.realmConfiguration, app.currentUser!.configuration(partitionValue: room))) {
                    Text(room)
                }
            }
        }
    }
}

struct ChatRoomsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ChatRoomsView(username: "Freddy")
        }
    }
}
