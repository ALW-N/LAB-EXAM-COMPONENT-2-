document.getElementById("fetch").addEventListener("click", function() {
    fetch("dogs.json")
      .then(response => response.json())
      .then(data => displaydetails(data))
  });

  function displaydetails(data) {
    var displaydetails = document.getElementById("list");
    displaydetails.innerHTML = "";
    for (var i = 0; i < data.length; i++) {
      var detail = data[i];
      var detailsdiv = document.createElement("div");
      detailsdiv.textContent = `${detail.breed}  ${detail.color}  ${detail.country}`;
      displaydetails.appendChild(detailsdiv);
    }
}