

# current_affairs_sources = { sources: [ "KenyaBroadcastingCorporation", "NewsWeb"], sections: ""}.to_json
# keywords = ["CORD", "Jubilee", "Raila", "Uhuru", "TSC", "Al-shabaab"].to_json
# current_affairs = Category.create! name: "Current Affairs", source: "Juicer", description: "Politics, current affairs", keywords: keywords, metadata: current_affairs_sources

# sport_sources = { sources: ["NewsWeb"], sections: "BBC News - Africa, BBC Sport - Football"}.to_json
# keywords = ["Africa cup of nations", "English Premier League", "la liga", "Serie A", "Kenya Premier League", "FIFA"].to_json
# sport = Category.create! name: "Sport", source: "Juicer", description: "Sports News", keywords: keywords, metadata: sport_sources

# tech_sources = { sources: ["NewsWeb"], sections: "Technology"}.to_json
# keywords = [""].to_json
# tech = Category.create! name: "Technology", source: "Juicer", description: "Technology News", metadata: tech_sources, keywords: keywords


Article.create! title: "Uhuru jets back from Ethiopia AU summit",
  external_id: "ksjhfkjdshfdsf", 
  summary: "President Uhuru Kenyatta and First Lady Margaret Kenyatta jetted back into the country Monday evening from Addis Ababa, Ethiopia where they attended the 24th Ordinary Session of the African Union Summit. While in Addis Ababa, the President witnessed signing of a peace deal between the two warring factions to the South Sudan conflict",
  url: "http://bit.ly/1ArMJo8",
  image_url: "http://www.kbc.co.ke/wp-content/uploads/2015/02/uhuru-back.jpg"


Article.create! title: "#worldcancerday and other topics trending on twitter", 
  external_id: "ksjhfkjdsh1212",
  summary: "Today is world cancer day. This trended on Twitter. Click the link to see more...",
  url: "http://bit.ly/1zRp40J",
  image_url: "http://rack.0.mshcdn.com/media/ZgkyMDEyLzEyLzA0LzQwL3RvcDIwc2l0ZXN0LmJiMS5qcGcKcAl0aHVtYgk5NTB4NTM0IwplCWpwZw/53a03e8b/99f/top-20-sites-to-improve-your-twitter-experience-a67fe9f8e2.jpg"

Article.create! title: "Ivory Coast battle DRV in tonight's AFCon match", 
  external_id: "ksjhfkjdsh7363",
  summary: "Ivory Coast midfielder Cheik Tiote may feature after recovering from an ankle injury that has kept him out of the last two matches.",
  url: "http://bbc.in/1zRplRr",
  image_url: "http://news.bbcimg.co.uk/media/images/80760000/jpg/_80760933_ivcoast_drcongo.jpg"
