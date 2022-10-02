## 📱 E-commerce App

### 🔎 Preview
#### 💣 Home Preview
<a href="https://media.giphy.com/media/wMU3EjYDtIr5i3rMc7/giphy.gif"><img src="https://media.giphy.com/media/wMU3EjYDtIr5i3rMc7/giphy.gif" title="Home Preview"/></a>

#### 💣 Basket Preview
<a href="https://media.giphy.com/media/J4YH0x5jwePOKWovHT/giphy.gif"><img src="https://media.giphy.com/media/J4YH0x5jwePOKWovHT/giphy.gif" title="Basket Preview"/></a>


### 📁 Description
You can add your product to the basket with the "+" icon in the upper right corner of the products and increase or decrease the number of your products from the animatic menu that appears. When you add or delete each product, the basket value in the upper right is updated. You can check the products in your basket by clicking in the bottom right tab.

### 📶 API
[Fake store api](https://fakestoreapi.com/) is used in this project.Data in the API is parsed with the [json_serializable](https://pub.dev/packages/json_serializable) and [json_annotation](https://pub.dev/packages/json_annotation) methods. The ["dio"](https://pub.dev/packages/dio) package is used to send requests to the API.

### 🧑🏻‍💻 Coding
I tried to write the code of this project as clean as possible. I used MVVM as the software architecture model. In terms of folders, the project proceeds through three main folders. The core folder contains structures such as extensions, singleton classes, base classes, and navigation routes that I use in every project. The Properties folder is the part where each screen is separated according to the MVMM software architecture model, and the design and API integration is done. The product folder is the part where the atomic widgets or components I have prepared or my managers are located. Used as provider state management.
