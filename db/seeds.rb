Product.destroy_all
Supplier.destroy_all
Image.destroy_all

Product.create([
    {
      name: "PS4",
      description: "Top of the line gamaing machine at the moment",
      price: 9, 
      supplier_id: 1
    },
    {
      name: "N64",
      description: "Old school and great",
      price: 270,
      supplier_id: 2
    },
    {
      name: "Xbox",
      description: "Pretty good for gaming but...come on, get a PS4",
      price: 2,
      supplier_id: 2
    },
    {
      name: "Nintendo Switch",
      description: "New, cool and portable",
      price: 170,
      supplier_id: 3
    },
    {
      name: "PC - for the lame",
      description: "People who are generally lame game on PC's but if you insist, we will sell this one to you",
      price: 42, 
      supplier_id: 1
    },
    {
      name: "iPhone",
      description: "Gaming in your pocket",
      price: 57, 
      supplier_id: 3
    }
  ])

Supplier.create([
  {
    name: "Apple", 
    email: "woot@wootwoot.com", 
    phone: "1-800-woo-woot"
  },
  {
    name: "Samsung", 
    email: "dumble@doors.com", 
    phone: "867-5309"
  },
  {
    name: "Sony", 
    email: "amazon@amazon.com", 
    phone: "1-800-amazon"
  }
  ])

Image.create([
  {
    url: "https://media.playstation.com/is/image/SCEA/nav-icon-lg-ps4-slim-standing-27sep16?$ExploreNav_VisualRow$",  
    product_id: 1
  },
  {
    url: "http://www.leawo.com/knowledge/wp-content/uploads/2016/08/ps4.jpg",  
    product_id: 1
  },
  {
    url: "http://operationrainfall.com/wp-content/uploads/2012/10/Original-Nintendo-64.jpeg", 
    product_id: 2
  },
  {
    url: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Microsoft-Xbox-One-Console-wKinect.png/250px-Microsoft-Xbox-One-Console-wKinect.png", 
    product_id: 3
  },
  {
    url: "http://media.nintendo.com/nintendo/cocoon/switch-static-pages/switch/etRgxnAu0zRX4bmWnt9K628wG7YQUI6t/images/switch/home/pane1.jpg",  
    product_id: 4
  },
  {
    url: "https://images-na.ssl-images-amazon.com/images/I/81nmXFn%2BbDL._SL1500_.jpg", 
    product_id: 5
  },
  {
    url: "http://www.imore.com/sites/imore.com/files/styles/xlarge_wm_blw/public/field/image/2016/09/iphone-7-space-gray-vs-matte-black.jpg?itok=_yEuoIQI", 
    product_id: 6
  }
  ])

