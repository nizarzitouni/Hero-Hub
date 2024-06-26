//This one is for refrence so i can understand the api better
// And also the jsonTestResponse is for testing later
//call it using ComicAPIResponse.jsonTestResponse
class ComicAPIResponse {
  static final jasonTestResponse = {
    "code": 200,
    "status": "Ok",
    "copyright": "© 2024 MARVEL",
    "attributionText": "Data provided by Marvel. © 2024 MARVEL",
    "attributionHTML": "<a href=\"http://marvel.com\">Data provided by Marvel. © 2024 MARVEL</a>",
    "etag": "79ef3436d0dc139b17693635b99776556e29f495",
    "data": {
      "offset": 0,
      "limit": 20,
      "total": 2,
      "count": 2,
      "results": [
        {
          "id": 22506,
          "digitalId": 10949,
          "title": "Avengers: The Initiative (2007) #19",
          "issueNumber": 19,
          "variantDescription": "",
          "description":
              "Join Mutant Zero, Trauma, Bengal, Constrictor, and Ant-Man as they undertake this war's most dangerous mission yet.",
          "modified": "2015-10-27T16:38:23-0400",
          "isbn": "",
          "upc": "5960606084-01911",
          "diamondCode": "SEP082362",
          "ean": "",
          "issn": "",
          "format": "Comic",
          "pageCount": 32,
          "textObjects": [
            {
              "type": "issue_preview_text",
              "language": "en-us",
              "text": "Join Mutant Zero, Trauma, Bengal, Constrictor, and Ant-Man as they undertake this war's most dangerous mission yet."
            }
          ],
          "resourceURI": "http://gateway.marvel.com/v1/public/comics/22506",
          "urls": [
            {
              "type": "detail",
              "url": "http://marvel.com/comics/issue/22506/avengers_the_initiative_2007_19?utm_campaign=apiRef&utm_source=your_api_key"
            },
            {
              "type": "purchase",
              "url":
                  "http://comicstore.marvel.com/Avengers-The-Initiative-19/digital-comic/10949?utm_campaign=apiRef&utm_source=your_api_key"
            }
          ],
          "series": {"resourceURI": "http://gateway.marvel.com/v1/public/series/1945", "name": "Avengers: The Initiative (2007 - 2010)"},
          "variants": [],
          "collections": [],
          "collectedIssues": [],
          "dates": [
            {"type": "onsaleDate", "date": "2008-12-17T00:00:00-0500"},
            {"type": "focDate", "date": "2008-11-27T00:00:00-0500"}
          ],
          "prices": [
            {"type": "printPrice", "price": 2.99}
          ],
          "thumbnail": {"path": "http://i.annihil.us/u/prod/marvel/i/mg/d/03/58dd080719806", "extension": "jpg"},
          "images": [
            {"path": "http://i.annihil.us/u/prod/marvel/i/mg/d/03/58dd080719806", "extension": "jpg"}
          ],
          "creators": {
            "available": 6,
            "collectionURI": "http://gateway.marvel.com/v1/public/comics/22506/creators",
            "items": [
              {"resourceURI": "http://gateway.marvel.com/v1/public/creators/2133", "name": "Tom Brevoort", "role": "editor"},
              {"resourceURI": "http://gateway.marvel.com/v1/public/creators/5251", "name": "Vc Joe Caramagna", "role": "letterer"}
            ],
            "returned": 6
          },
          "characters": {
            "available": 9,
            "collectionURI": "http://gateway.marvel.com/v1/public/comics/22506/characters",
            "items": [
              {"resourceURI": "http://gateway.marvel.com/v1/public/characters/1011334", "name": "3-D Man"},
              {"resourceURI": "http://gateway.marvel.com/v1/public/characters/1010802", "name": "Ant-Man (Eric O'Grady)"}
            ],
            "returned": 9
          },
          "stories": {
            "available": 2,
            "collectionURI": "http://gateway.marvel.com/v1/public/comics/22506/stories",
            "items": [
              {
                "resourceURI": "http://gateway.marvel.com/v1/public/stories/49888",
                "name": "AVENGERS: THE INITIATIVE (2007) #19",
                "type": "cover"
              },
              {
                "resourceURI": "http://gateway.marvel.com/v1/public/stories/49889",
                "name": "Avengers: The Initiative (2007) #19 - Int",
                "type": "interiorStory"
              }
            ],
            "returned": 2
          },
          "events": {
            "available": 1,
            "collectionURI": "http://gateway.marvel.com/v1/public/comics/22506/events",
            "items": [
              {"resourceURI": "http://gateway.marvel.com/v1/public/events/269", "name": "Secret Invasion"}
            ],
            "returned": 1
          }
        }
      ]
    }
  };

  static final emptyListOfComicsResponse = {
    "code": 200,
    "status": "Ok",
    "copyright": "© 2024 MARVEL",
    "attributionText": "Data provided by Marvel. © 2024 MARVEL",
    "attributionHTML": "<a href=\"http://marvel.com\">Data provided by Marvel. © 2024 MARVEL</a>",
    "etag": "79ef3436d0dc139b17693635b99776556e29f495",
    "data": {
      "offset": 0,
      "limit": 20,
      "total": 2,
      "count": 0,
      "results": [],
    }
  };
}
