import 'package:rick_morty/app/services/http/custom_response.dart';

final _charactersResponse = {
  "info": {
    "count": 10,
    "pages": 1,
    "next": "https://rickandmortyapi.com/api/character/?page=2",
    "prev": null
  },
  "results": [
    {
      "id": 1,
      "name": "Antenna Morty",
      "status": "Alive",
      "species": "Human",
      "type": "Human with antennae",
      "gender": "Male",
      "origin": {"name": "unknown", "url": ""},
      "location": {
        "name": "Citadel of Ricks",
        "url": "https://rickandmortyapi.com/api/location/3"
      },
      "image": "https://rickandmortyapi.com/api/character/avatar/18.jpeg",
      "episode": ["https://rickandmortyapi.com/api/episode/10"],
      "url": "https://rickandmortyapi.com/api/character/18",
      "created": "2017-11-04T22:25:29.008Z"
    }
  ]
};

final mockedCharactersSuccessResponse =
    CustomResponse(body: _charactersResponse, statusCode: 200, headers: {});

final mockedCharactersErrorResponse =
    CustomResponse(body: {}, statusCode: 500, headers: {});
