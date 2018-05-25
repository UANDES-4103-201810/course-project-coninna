
    function Fundsck() {
      let fund_btn = document.getElementById("fund_btn");
      let fund_input = document.getElementById("fund_input");
      let project_input = document.getElementById("project_id");
      let user_id = fund_btn.value;
      let fund_amount = fund_input.value;
      let project_id = project_input.value;

      $.ajax({
        type: "POST",
        url: "/funds.json",
        data: {
          fund: {
            state: true,
            user_id: user_id,
            project_id: project_id,
            amount: fund_amount,
            promise_id: null,
            authenticity_token: window._token
                 }
        },
        success: console.log("Fund Posted"),
        dataType: "json"
      });
  }


    function Like() {
      let wish_btn = document.getElementById("wish_btn");
      let project_input = document.getElementById("project_id");
      let user_id = wish_btn.value;
      let project_id = project_input.value;

      $.ajax({
        type: "POST",
        url: "/wishlists.json",
        data: {
          wishlist: {
            user_id: user_id,
            project_id: project_id,
            authenticity_token: window._token
          }
        },
        success: console.log("Wishlist Posted"),
        dataType: "json"
      });
    }


