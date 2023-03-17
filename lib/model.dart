class Model{
  String ? image;
  String ? name;
  String ? location;
  Model({this.image,this.location,this.name});
}

List<Model> modelList=[
  Model(image: "images/nusa.jpg",location: "Bali,Indonesia",name: "Nusa Penida"),
  Model(image: "images/raja.jpg",location: "Lombok,Indonesia",name: "Raja Ampat"),
];

List<Model> modelList2=[
  Model(image: "images/hotel.jpg",name: "Hotel"),
  Model(image: "images/event.jpg",name: "Events"),
  Model(image: "images/camping.jpg",name: "Camping"),
  Model(image: "images/trips.jpg",name: "Trips"),
];
List<Model> travel=[
  Model(image: "images/ravel.jpg")
];