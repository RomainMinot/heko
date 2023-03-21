<template>
    <section class="colors">
        <div class="colors__head">
            <h2>Our first product, in three distinct colors</h2>
            <Button :text="'Discover the collection'" :type="'primary'" :orientation="'horzAlt'" />
        </div>
        <div class="colors__pics">
            <img src="~/assets/img/desert_edition.png" alt="Desert heko">
            <img src="~/assets/img/forest_edition.png" alt="Forest heko">
            <img src="~/assets/img/product_solo.png" alt="Classic heko">
            <img src="~/assets/img/solar_edition.png" alt="Solar heko">
        </div>
    </section>
</template>

<script setup>

</script>

<style scoped lang="scss">
    .colors {
        margin-bottom: 515px;
        &__head {
            margin: 0 3.5rem;
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