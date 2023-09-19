function fetchRandomDogImage(){
    const apiUrl="https://dog.ceo/api/breeds/image/random";

    fetch(apiUrl)
        .then(response=>response.json())
        .then(data => {
            dogImage(data.message);
        })
}
function dogImage(data){
    const dogImage = document.getElementById("dogImage");
    dogImage.src=data;
}
console.log(apiUrl)
