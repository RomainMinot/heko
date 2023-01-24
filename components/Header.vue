<template>
    <header class="header">
        <img class="header__logo" :src="logoSrc" alt="Logo heko">
        <nav class="header__nav">
            <a class="header__nav__link" href="#">How to contact us</a>
            <ul class="header__nav__list">
                <li v-for="item in socialItems" class="header__nav__item">
                    <a target="_blank" :href="item.url">
                        <img :src="item.img" :alt="item.title">
                    </a>
                </li>
            </ul>
        </nav>
    </header>
</template>

<script setup>
    import logoSrc from '/assets/img/logo.png';

    const props = defineProps({
        'socialItems': Object
    })
</script>

<style scoped lang="scss">
    .header {
        padding: 40px 50px;
        display: flex;
        flex-direction: row;
        flex-wrap: nowrap;
        justify-content: space-between;
        align-items: center;
        &__logo {
            height: 1.75rem;
        }
        &__nav {
            display: flex;
            flex-direction: row;
            flex-wrap: nowrap;
            align-items: center;
            &__link {
                font-size: $font-m;
                font-weight: 400;
                color: $grey;
                margin-right: calc(3rem - 15px);
                display: inline;
                transition: $transition;
            &:hover {
                opacity: .75;
                transition: $transition;
            }
            }
            &__list {
                display: flex;
                flex-direction: row;
                align-items: center;
            }
            &__item {
                margin: 0 15px;
                transition: $transition;
                img {
                    width: 1rem;
                    height: 1rem;
                }
                &:hover {
                    opacity: .75;
                    transition: $transition;
                }
            }
        }
    }
</style>