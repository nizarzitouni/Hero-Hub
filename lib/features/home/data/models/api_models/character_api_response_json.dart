//This one is for refrence so i can understand the api better
// And also the jsonTestResponse is for testing later
//call it using CharacterAPIResponseJson.jsonTestResponse
class CharacterAPIResponseJson {
  static final jsonTestResponse = {
    "code": 200,
    "status": "Ok",
    "copyright": "© 2024 MARVEL",
    "attributionText": "Data provided by Marvel. © 2024 MARVEL",
    "attributionHTML": "<a href=\"http://marvel.com\">Data provided by Marvel. © 2024 MARVEL</a>",
    "data": {
      "offset": 0,
      "limit": 20,
      "total": 1000,
      "count": 2,
      "results": [
        {
          "id": 1,
          "name": "Character 1",
          "description": "Description 1",
          "modified": "2021-01-01T00:00:00Z",
          "thumbnail": {"path": "http://example.com/image1", "extension": "jpg"},
          "resourceURI": "http://gateway.marvel.com/v1/public/characters/1",
          "comics": {
            "available": 1,
            "collectionURI": "http://gateway.marvel.com/v1/public/characters/1/comics",
            "items": [
              {"resourceURI": "http://gateway.marvel.com/v1/public/comics/1", "name": "Comic 1"}
            ],
            "returned": 1
          },
          "urls": [
            {"type": "detail", "url": "http://example.com/detail1"}
          ]
        },
        {
          "id": 2,
          "name": "Character 2",
          "description": "Description 2",
          "modified": "2021-01-02T00:00:00Z",
          "thumbnail": {"path": "http://example.com/image2", "extension": "jpg"},
          "resourceURI": "http://gateway.marvel.com/v1/public/characters/2",
          "comics": {
            "available": 1,
            "collectionURI": "http://gateway.marvel.com/v1/public/characters/2/comics",
            "items": [
              {"resourceURI": "http://gateway.marvel.com/v1/public/comics/2", "name": "Comic 2"}
            ],
            "returned": 1
          },
          "urls": [
            {"type": "detail", "url": "http://example.com/detail2"}
          ]
        }
      ]
    }
  };
  static final emptryListOfChractersResponse = {
    "code": 200,
    "status": "Ok",
    "copyright": "© 2024 MARVEL",
    "attributionText": "Data provided by Marvel. © 2024 MARVEL",
    "attributionHTML": "<a href=\"http://marvel.com\">Data provided by Marvel. © 2024 MARVEL</a>",
    "data": {
      "offset": 0,
      "limit": 20,
      "total": 1000,
      "count": 2,
      "results": [],
    }
  };
}
