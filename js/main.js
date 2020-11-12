import { fetchData } from "./modules/fetch.js";

function renderFavouriteThumbnails(data) {
    // Set Header to Correct text because error overrights it
    const header = document.querySelector(".title_container");
    header.children[1].textContent = "My Favorite Things";
    header.children[2].textContent = "Click on a card to see a description of the item";

    // Create Thumbnail Cards to click on using template
    let cardsSection = document.querySelector(".cards-thumbnails"),
        cardTemplate = document.querySelector("#small-card").content;

    for (let thumb in data) {
        let card = cardTemplate.cloneNode(true),
            cardChildren = card.querySelector("div").children;

        // Assigning ID
        card.children[0].id = data[thumb].ID;

        // Image
        cardChildren[0].lastElementChild.src = data[thumb].image;

        // Title
        cardChildren[1].textContent = data[thumb].title;
        card.children[0].addEventListener("click", retrieveFavouriteItemInfo);
        cardsSection.appendChild(card);
    }
}

function retrieveFavouriteItemInfo() {
    // Fetch data with specific ID
    fetchData(`./includes/index.php?id=${this.id}`)
        .then((data) => renderFavouriteItem(data))
        .catch((err) => console.log(err));
}

function renderFavouriteItem(data) {
    let popup = document.querySelector(".popupBackdrop"),
        popupCard = popup.querySelector(".popupCard");

    // Make popup visable and add ability to make hidden
    popup.classList.add("popupBackdropVisable");
    popup.addEventListener("click", closeFavouriteItem);

    // Populating Popup with content
    popupCard.firstElementChild.children[1].src = data[0].image;
    popupCard.children[1].textContent = data[0].title;
    popupCard.children[2].textContent = data[0].description;
}

function closeFavouriteItem() {
    // Hide popup
    let popup = document.querySelector(".popupBackdrop");
    popup.classList.remove("popupBackdropVisable");
}

function onError(err) {
    // Console log Error as well as give visual feedback
    console.log(err);

    // Display error
    const header = document.querySelector(".title_container");
    header.children[1].textContent = err;
    header.children[2].textContent = "";
}

// Start function that fetches favourite items
(() => {
    fetchData("./includes/index.php")
        .then((data) => {
            renderFavouriteThumbnails(data);
        })
        .catch((err) => {
            onError(err);
        });
})();
