part of swagger.api;

class HttpStatusCode {
  /// The underlying value of this enum member.
  int value;

  HttpStatusCode._internal(this.value);

  static HttpStatusCode number100_ = HttpStatusCode._internal(100);
  static HttpStatusCode number101_ = HttpStatusCode._internal(101);
  static HttpStatusCode number102_ = HttpStatusCode._internal(102);
  static HttpStatusCode number103_ = HttpStatusCode._internal(103);
  static HttpStatusCode number200_ = HttpStatusCode._internal(200);
  static HttpStatusCode number201_ = HttpStatusCode._internal(201);
  static HttpStatusCode number202_ = HttpStatusCode._internal(202);
  static HttpStatusCode number203_ = HttpStatusCode._internal(203);
  static HttpStatusCode number204_ = HttpStatusCode._internal(204);
  static HttpStatusCode number205_ = HttpStatusCode._internal(205);
  static HttpStatusCode number206_ = HttpStatusCode._internal(206);
  static HttpStatusCode number207_ = HttpStatusCode._internal(207);
  static HttpStatusCode number208_ = HttpStatusCode._internal(208);
  static HttpStatusCode number226_ = HttpStatusCode._internal(226);
  static HttpStatusCode number300_ = HttpStatusCode._internal(300);
  static HttpStatusCode number301_ = HttpStatusCode._internal(301);
  static HttpStatusCode number302_ = HttpStatusCode._internal(302);
  static HttpStatusCode number303_ = HttpStatusCode._internal(303);
  static HttpStatusCode number304_ = HttpStatusCode._internal(304);
  static HttpStatusCode number305_ = HttpStatusCode._internal(305);
  static HttpStatusCode number306_ = HttpStatusCode._internal(306);
  static HttpStatusCode number307_ = HttpStatusCode._internal(307);
  static HttpStatusCode number308_ = HttpStatusCode._internal(308);
  static HttpStatusCode number400_ = HttpStatusCode._internal(400);
  static HttpStatusCode number401_ = HttpStatusCode._internal(401);
  static HttpStatusCode number402_ = HttpStatusCode._internal(402);
  static HttpStatusCode number403_ = HttpStatusCode._internal(403);
  static HttpStatusCode number404_ = HttpStatusCode._internal(404);
  static HttpStatusCode number405_ = HttpStatusCode._internal(405);
  static HttpStatusCode number406_ = HttpStatusCode._internal(406);
  static HttpStatusCode number407_ = HttpStatusCode._internal(407);
  static HttpStatusCode number408_ = HttpStatusCode._internal(408);
  static HttpStatusCode number409_ = HttpStatusCode._internal(409);
  static HttpStatusCode number410_ = HttpStatusCode._internal(410);
  static HttpStatusCode number411_ = HttpStatusCode._internal(411);
  static HttpStatusCode number412_ = HttpStatusCode._internal(412);
  static HttpStatusCode number413_ = HttpStatusCode._internal(413);
  static HttpStatusCode number414_ = HttpStatusCode._internal(414);
  static HttpStatusCode number415_ = HttpStatusCode._internal(415);
  static HttpStatusCode number416_ = HttpStatusCode._internal(416);
  static HttpStatusCode number417_ = HttpStatusCode._internal(417);
  static HttpStatusCode number421_ = HttpStatusCode._internal(421);
  static HttpStatusCode number422_ = HttpStatusCode._internal(422);
  static HttpStatusCode number423_ = HttpStatusCode._internal(423);
  static HttpStatusCode number424_ = HttpStatusCode._internal(424);
  static HttpStatusCode number426_ = HttpStatusCode._internal(426);
  static HttpStatusCode number428_ = HttpStatusCode._internal(428);
  static HttpStatusCode number429_ = HttpStatusCode._internal(429);
  static HttpStatusCode number431_ = HttpStatusCode._internal(431);
  static HttpStatusCode number451_ = HttpStatusCode._internal(451);
  static HttpStatusCode number500_ = HttpStatusCode._internal(500);
  static HttpStatusCode number501_ = HttpStatusCode._internal(501);
  static HttpStatusCode number502_ = HttpStatusCode._internal(502);
  static HttpStatusCode number503_ = HttpStatusCode._internal(503);
  static HttpStatusCode number504_ = HttpStatusCode._internal(504);
  static HttpStatusCode number505_ = HttpStatusCode._internal(505);
  static HttpStatusCode number506_ = HttpStatusCode._internal(506);
  static HttpStatusCode number507_ = HttpStatusCode._internal(507);
  static HttpStatusCode number508_ = HttpStatusCode._internal(508);
  static HttpStatusCode number510_ = HttpStatusCode._internal(510);
  static HttpStatusCode number511_ = HttpStatusCode._internal(511);

  HttpStatusCode.fromJson(dynamic data) {
    switch (data) {
          case 100: value = data; break;
          case 101: value = data; break;
          case 102: value = data; break;
          case 103: value = data; break;
          case 200: value = data; break;
          case 201: value = data; break;
          case 202: value = data; break;
          case 203: value = data; break;
          case 204: value = data; break;
          case 205: value = data; break;
          case 206: value = data; break;
          case 207: value = data; break;
          case 208: value = data; break;
          case 226: value = data; break;
          case 300: value = data; break;
          case 301: value = data; break;
          case 302: value = data; break;
          case 303: value = data; break;
          case 304: value = data; break;
          case 305: value = data; break;
          case 306: value = data; break;
          case 307: value = data; break;
          case 308: value = data; break;
          case 400: value = data; break;
          case 401: value = data; break;
          case 402: value = data; break;
          case 403: value = data; break;
          case 404: value = data; break;
          case 405: value = data; break;
          case 406: value = data; break;
          case 407: value = data; break;
          case 408: value = data; break;
          case 409: value = data; break;
          case 410: value = data; break;
          case 411: value = data; break;
          case 412: value = data; break;
          case 413: value = data; break;
          case 414: value = data; break;
          case 415: value = data; break;
          case 416: value = data; break;
          case 417: value = data; break;
          case 421: value = data; break;
          case 422: value = data; break;
          case 423: value = data; break;
          case 424: value = data; break;
          case 426: value = data; break;
          case 428: value = data; break;
          case 429: value = data; break;
          case 431: value = data; break;
          case 451: value = data; break;
          case 500: value = data; break;
          case 501: value = data; break;
          case 502: value = data; break;
          case 503: value = data; break;
          case 504: value = data; break;
          case 505: value = data; break;
          case 506: value = data; break;
          case 507: value = data; break;
          case 508: value = data; break;
          case 510: value = data; break;
          case 511: value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(HttpStatusCode data) {
    return data.value;
  }
}

