<template>
    <section class="hero">
        <h1 class="hero__title">Let's break the language barrier together</h1>
        <Button :text="'Discover now'" :type="'primary'" :orientation="'vert'" />
        <img class="hero__img" src="~/assets/img/hero.jpg" alt="Heko product">
    </section>
</template>

<script setup>

</script>

<style scoped lang="scss">
    .hero {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        &__title {
            text-align: center;
            max-width: 60vw;
            padding-bottom: 3rem;
        }
        &__img {
            padding-top: 3rem;
            width: 100%;
        }
    }
</style>