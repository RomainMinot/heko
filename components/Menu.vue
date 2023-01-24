<template>
    <nav class="menu">
        <ul class="menu__list">
            <li v-for="item in items" class="menu__item">
                <a :href="`#${item.link}`">{{ item.title }}</a>
            </li>
        </ul>
        <Button :text="'Start now'" :type="'secondary'" :orientation="'horz'" />
    </nav>
</template>

<script setup>
    defineProps({
        'items': Object
    })
</script>

<style scoped lang="scss">
    .menu {
        position: fixed;
        z-index: 10;
        display: flex;
        flex-direction: row;
        flex-wrap: nowrap;
        align-items: center;
        bottom: 40px;
        left: 50%;
        transform: translateX(-50%);
        background-color: $white;
        padding: .5rem;
        border-radius: $radius;
        &__list {
            display: flex;
            flex-direction: row;
            align-items: center;
            margin: 0 .5rem;
        }
        &__item {
            margin: 0 .5rem;
            font-size: $font-btn;
            text-transform: uppercase;
            a {
                color: $black;
            }
        }
    }
</style>