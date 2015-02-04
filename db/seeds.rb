

current_affairs_sources = { sources: [ "KenyaBroadcastingCorporation", "NewsWeb"], sections: ""}.to_json
keywords = ["CORD", "Jubilee", "Raila", "Uhuru", "TSC", "Al-shabaab"].to_json
current_affairs = Category.create! name: "Current Affairs", source: "Juicer", description: "Politics, current affairs", keywords: keywords, metadata: current_affairs_sources

sport_sources = { sources: ["NewsWeb"], sections: "BBC News - Africa, BBC Sport - Football"}.to_json
keywords = ["Africa cup of nations", "English Premier League", "la liga", "Serie A", "Kenya Premier League", "FIFA"].to_json
sport = Category.create! name: "Sport", source: "Juicer", description: "Sports News", keywords: keywords, metadata: sport_sources

tech_sources = { sources: ["NewsWeb"], sections: "Technology"}.to_json
keywords = [""].to_json
tech = Category.create! name: "Technology", source: "Juicer", description: "Technology News", metadata: tech_sources, keywords: keywords