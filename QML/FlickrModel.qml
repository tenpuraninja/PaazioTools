

XmlListModel {
	id: flickModel

	property string userId : "14224905@N08"; // paazio

	source: "http://api.flickr.com/services/feeds/photos_friends.gne?user_id="+userId+"format=rss2"
	query: "/rss/channel/item"
	namespaceDeclarations: "declare namespace media=\"http://search.yahoo.com/mrss/\";"

	XmlRole {
		name: "title";
		query: "title/string()"
	}
	XmlRole {
		name: "imagePath";
		query: "media:thumbnail/@url/string()"
	}
	XmlRole {
		name: "url";
		query: "media:content/@url/string()"
	}
	XmlRole {
		name: "description";
		query: "description/string()"
	}
	XmlRole {
		name: "tags";
		query: "media:category/string()"
	}
	XmlRole {
		name: "photoWidth";
		query: "media:content/@width/string()"
	}
	XmlRole {
		name: "photoHeight";
		query: "media:content/@height/string()"
	}
	XmlRole {
		name: "photoType";
		query: "media:content/@type/string()"
	}
	XmlRole {
		name: "photoAuthor";
		query: "author/string()"
	}
	XmlRole {
		name: "photoDate";
		query: "pubDate/string()"
	}
}
