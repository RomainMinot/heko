<template>
    <Header 
        :socialItems="socialItems" 
    />
    <Menu 
        :items="menuItems" 
    />
    <main>
        <Hero />
        <Observations />
    </main>
</template>

<script setup>
    import twitterIcon from '/assets/img/twitter.svg';
    import instagramIcon from '/assets/img/instagram.svg';
    import facebookIcon from '/assets/img/facebook.svg';

    const socialItems = reactive({
        0: {
            title: 'Twitter',
            url: 'https://www.twitter.com/',
            img: twitterIcon,
        },
        1: {
            title: 'Instagram',
            url: 'https://www.instagram.com/',
            img: instagramIcon,
        },
        2: {
            title: 'Facebook',
            url: 'https://www.facebook.com/',
            img: facebookIcon,
        }
    })

    const menuItems = reactive({
        0: {
            link: 'about',
            title: 'About us',
        },
        1: {
            link: 'product',
            title: 'Our products',
        },
        2: {
            link: 'vision',
            title: 'Our vision',
        }
    })
</script>

<style lang="scss">
    @font-face {
        font-family: "Helvetica Neue";
        src: url("~/assets/fonts/HelveticaNeueLt.ttf") format("truetype");
    }

    @font-face {
        font-family: "Roslindale Display Condensed";
        src: url("~/assets/fonts/RoslindaleDisplayCondensed-Light.otf") format("opentype");
    }

    * {
        padding: 0;
        margin: 0;
        scroll-behavior: smooth;
    }

    html, body {
        background-color: $cream;
        color: $black;
        font-family: 'Helvetica Neue', sans-serif;
    }

    h1, h2, h3, h4, h5, h6 {
        margin: 0;
    }

    h1, h2 {
        font-family: 'Roslindale Display Condensed', serif;
        font-size: $font-xxl;
    }

    h3 {
        font-size: $font-l;
        line-height: $font-l;
    }

    p {
        font-size: $font-m;
    }

    ul {
        list-style: none;
    }

    a {
        text-decoration: none;
    }

    main {
        position: relative;
        padding: 0 50px;
        margin-top: 75px;
    }

    .colors {
        margin-bottom: 515px;
        &__head {
            margin: 0 3rem;
            margin-bottom: 100px;
            display: flex;
            flex-direction: row;
            flex-wrap: nowrap;
            justify-content: space-between;
            align-items: center;
        }
        &__pics {
            height: 415px;
            position: absolute;
            left: 0;
            width: 100%;
            overflow: hidden;
        }
    }
</style>