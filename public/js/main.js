const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let itemLink = document.querySelectorAll('.item-link'),
        lightBox = document.querySelector('.lightbox');

    // create the social media list
    // function renderSocialMedia(media){
    //     return `<ul class="u-social">
    //                 ${media.map(item => `<li>${item}</li>`).join("")}
    //             </ul>`
    // }

    function parseUserData(item){
        let targetDiv = lightBox.querySelector('.lb-content'),
            targetImg = lightBox.querySelector('img');

        let bioContent = `
            <h2>${item.Title}</h2>
            <br>
            <p>${item.Description}</p>
            <br>
            <p>Pros: ${item.Pros}</p>
            <br>
            <p>Cons: ${item.Cons}</p>
        `;

        targetDiv.innerHTML = bioContent;
        targetImg.src = item.currentSrc;

        lightBox.classList.add('show-lb');
    }

    function getUserData(event){
        event.preventDefault();
        // debugger;
        // 1, 2, or 3 depending on which anchor tag you click
        let url = `/item/${this.getAttribute('href')}`,
            currentImg = this.firstElementChild.getAttribute('src');

        console.log (currentImg);
        console.log (url);
        // debugger;
        // this goes and fetches the database content (or an API endpoint)
        // that's why it's called a fetch!
        fetch(url)
            .then(res => res.json())
            .then(data => {
                console.log(data);
                data.currentSrc = currentImg;
                parseUserData(data);
            })
            .catch((err) => console.log(err));
    }

    itemLink.forEach(item => item.addEventListener("click", getUserData));

    // wire up the lightbox close button
    lightBox.querySelector('.close').addEventListener("click", function(){
        lightBox.classList.remove('show-lb');
    })
})();