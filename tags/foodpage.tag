<foodpage>
  <!-- firstpage -->

  <foodlist each={ foodItem in allFood }></foodlist>

  <script>
    console.log("that");
    var tag = this;
    this.allFood = [];

    var elementRef = database.ref('/foodByElement');
    // var allFoodRef = elementRef.child('/a'); var bRef = elementRef.child('/b');

    elementRef.on('value', function (snap) {
      var data = snap.val();

      tag.allFood = [];
      for (food in data) {
        tag.allFood.push(data[food]);
      };
      tag.update();
      console.log(tag.allFood);
    });

    //scipt for passing data to menu.tag

    var fooditempath = 'foodByElement/' + this.element + '/';
  </script>

  <style>
    .item {
      border: 2px solid blue;
      margin: 10px;
      padding: 5px;
    }
  </style>

</foodpage>
