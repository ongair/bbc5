

current_affairs_sources = [ "KenyaBroadcastingCorporation", "NewsWeb"].to_json
keywords = ["CORD", "Jubilee", "Raila", "Uhuru", "TSC", "Al-shabaab"].to_json
current_affairs = Category.create! name: "Current Affairs", source: "Juicer", description: "Politics, current affairs", keywords: keywords, metadata: current_affairs_sources