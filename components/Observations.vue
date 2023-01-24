<template>
    <section class="observations">
        <span>Our observations</span>
        <div class="observations__texts">
            <h3 class="observations__title">When it does not exclude them from the labour market outright, deafness still represents a handicap for hard of hearing and deaf people who want to access employment and pursue a career.</h3>
            <p class="observations__text">According to them, deafness is associated with devaluing prejudices and is a reason for non-recruitment or non-access to certain positions. It would subject them to different treatment in the workplace. But their main problem remains the lack of communication and isolation.</p>
        </div>
    </section>
</template>

<script setup>

</script>

<style scoped lang="scss">
    .observations {
        margin: 200px 3rem;
        display: flex;
        flex-direction: row;
        flex-wrap: nowrap;
        align-items: flex-start;
        gap: 75px;
        span {
            white-space: nowrap;
        }
        &__texts {
            display: flex;
            flex-direction: column;
            align-items: flex-end;
            gap: 60px;
        }
        &__title {
            width: 100%;
        }
        &__text {
            position: relative;
            width: 75%;
            right: 0;
        }
    }
</style>