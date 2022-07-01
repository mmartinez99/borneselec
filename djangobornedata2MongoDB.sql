/*
 Navicat Premium Data Transfer

 Source Server         : MongoDBConnect
 Source Server Type    : MongoDB
 Source Server Version : 40022
 Source Host           : localhost:27017
 Source Schema         : djangobornedata2

 Target Server Type    : MongoDB
 Target Server Version : 40022
 File Encoding         : 65001

 Date: 01/07/2022 22:30:55
*/


// ----------------------------
// Collection structure for articles
// ----------------------------
db.getCollection("articles").drop();
db.createCollection("articles");

// ----------------------------
// Documents of articles
// ----------------------------
db.getCollection("articles").insert([ {
    _id: ObjectId("626a6bf0bd18fa49e8bc21d4"),
    name: "titi",
    content: "titicontetn",
    "updated_at": ISODate("2022-04-28T10:26:56.942Z"),
    "created_at": ISODate("2022-04-28T10:26:56.942Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("626a6c4abd18fa49e8bc21d5"),
    name: "blbala",
    content: "bhdgkdgshj",
    "updated_at": ISODate("2022-04-28T10:28:26.93Z"),
    "created_at": ISODate("2022-04-28T10:28:26.93Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("626a6c84bd18fa49e8bc21d6"),
    name: "blbala",
    content: "bhdgkdgshj",
    "updated_at": ISODate("2022-04-28T10:29:24.624Z"),
    "created_at": ISODate("2022-04-28T10:29:24.624Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("626a6c85bd18fa49e8bc21d7"),
    name: "blbala",
    content: "bhdgkdgshj",
    "updated_at": ISODate("2022-04-28T10:29:25.54Z"),
    "created_at": ISODate("2022-04-28T10:29:25.54Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("626a6c98bd18fa4c208c406c"),
    name: "blbala",
    content: "bhdgkdgshj",
    "updated_at": ISODate("2022-04-28T10:29:43.995Z"),
    "created_at": ISODate("2022-04-28T10:29:43.995Z")
} ]);
db.getCollection("articles").insert([ {
    _id: ObjectId("626a6e21bd18fa4c208c406d"),
    name: "blbala",
    content: "bhdgkdgshj",
    "updated_at": ISODate("2022-04-28T10:36:17.662Z"),
    "created_at": ISODate("2022-04-28T10:36:17.662Z")
} ]);

// ----------------------------
// Collection structure for borneelecs
// ----------------------------
db.getCollection("borneelecs").drop();
db.createCollection("borneelecs");

// ----------------------------
// Documents of borneelecs
// ----------------------------
db.getCollection("borneelecs").insert([ {
    _id: ObjectId("626a9931d21f0000b9006519"),
    name: "borne10",
    adresse: "gf",
    ville: "gf",
    codepostal: 75001,
    latitude: 48.88837,
    tarif: 1,
    longitude: 2.33,
    "updated_at": ISODate("2022-05-24T13:34:29.336Z")
} ]);
db.getCollection("borneelecs").insert([ {
    _id: ObjectId("626a9965d21f0000b900651a"),
    name: "borne2",
    adresse: "25 avenue des roses",
    ville: "Paris",
    codepostal: NumberInt("75010"),
    latitude: 48.87,
    tarif: 3,
    longitude: 2.3
} ]);
db.getCollection("borneelecs").insert([ {
    _id: ObjectId("626a99b1d21f0000b900651b"),
    name: "borne3",
    adresse: "1 rue des cabl",
    ville: "parsi",
    codepostal: NumberInt("99292"),
    latitude: 29,
    longitude: 12,
    tarif: 21
} ]);
db.getCollection("borneelecs").insert([ {
    _id: ObjectId("628a1769415000000b005f32"),
    name: "borne33r",
    adresse: "hdk",
    ville: "kz",
    codepostal: 33232,
    latitude: 1222,
    tarif: 21,
    longitude: 21,
    "updated_at": ISODate("2022-05-24T13:33:13.651Z")
} ]);
db.getCollection("borneelecs").insert([ {
    _id: ObjectId("628ce0d7bd18fa28f48f63f8"),
    name: "hugo",
    adresse: "yt",
    ville: "cx",
    codepostal: 555,
    latitude: 21,
    longitude: 18,
    tarif: 7,
    "updated_at": ISODate("2022-05-24T13:48:19.582Z"),
    "created_at": ISODate("2022-05-24T13:42:47.722Z")
} ]);
db.getCollection("borneelecs").insert([ {
    _id: ObjectId("628ce123bd18fa28f48f63fa"),
    name: "lucas",
    adresse: "yt",
    ville: "cx",
    codepostal: 555,
    latitude: 21,
    longitude: 18,
    tarif: 7,
    "updated_at": ISODate("2022-05-24T13:46:00.947Z"),
    "created_at": ISODate("2022-05-24T13:44:03.327Z")
} ]);
db.getCollection("borneelecs").insert([ {
    _id: ObjectId("628e3579bd18fa45502f0570"),
    name: "re re96",
    adresse: "216 Rue de Rivoli",
    ville: "Paris",
    codepostal: 75001,
    latitude: 55,
    longitude: 19.21,
    tarif: 2,
    "updated_at": ISODate("2022-05-25T13:56:09.287Z"),
    "created_at": ISODate("2022-05-25T13:56:09.287Z")
} ]);
db.getCollection("borneelecs").insert([ {
    _id: ObjectId("62b0d8df22770000360069e2"),
    name: "borne25",
    adresse: "1 rue de cerveteri",
    ville: "LG",
    codepostal: 93190,
    latitude: 48.91,
    tarif: 20,
    longitude: 2.55
} ]);
db.getCollection("borneelecs").insert([ {
    _id: ObjectId("62b0d96222770000360069e3"),
    name: "A",
    adresse: "rue jean jaures",
    ville: "Pavillon sous bois",
    codepostal: 93390,
    latitude: 48.81,
    tarif: 10,
    longitude: 2.55
} ]);
db.getCollection("borneelecs").insert([ {
    _id: ObjectId("62b0d96c22770000360069e4"),
    name: "B",
    adresse: "rue jean de la fontaine",
    ville: "Bondy",
    codepostal: 93340,
    latitude: 48.87,
    tarif: 10,
    longitude: 2.54
} ]);
db.getCollection("borneelecs").insert([ {
    _id: ObjectId("62b0da3322770000360069e5"),
    name: 13,
    adresse: "Quairtier de bercy",
    ville: "Paris",
    codepostal: NumberInt("75012"),
    latitude: 48.835427,
    lng: 2.387252,
    tarif: 2
} ]);
db.getCollection("borneelecs").insert([ {
    _id: ObjectId("62b48393bd18fa0d6c57d000"),
    name: "re re96",
    adresse: "216 Rue de Rivoli",
    ville: "Paris",
    codepostal: 75001,
    latitude: 88,
    longitude: 444,
    tarif: 14,
    "updated_at": ISODate("2022-06-23T15:15:31.317Z"),
    "created_at": ISODate("2022-06-23T15:15:31.317Z")
} ]);
db.getCollection("borneelecs").insert([ {
    _id: ObjectId("62b48574bd18fa3224925926"),
    name: "re re",
    adresse: "gf",
    ville: "gf",
    codepostal: 75001,
    latitude: 55,
    longitude: 5,
    tarif: 44,
    "updated_at": ISODate("2022-06-23T15:23:32.615Z"),
    "created_at": ISODate("2022-06-23T15:23:32.615Z")
} ]);
