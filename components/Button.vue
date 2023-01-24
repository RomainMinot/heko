<template>
    <a href="#" class="btn" :class="type == 'primary' ? 'btn--primary' : 'btn--secondary'">
        {{ text }} <img class="btn__img" :class="orientation == 'horz' ? 'btn__img--horz' : 'btn__img--vert'" :src="arrowSrc" alt="Arrow bottom">
    </a>
</template>

<script setup>
    import arrowRight from '/assets/img/arrow_right.svg';
    import arrowBottom from '/assets/img/arrow_bottom.svg';

    const props = defineProps({
        'text': String,
        'type': String,
        'orientation': String
    })

    const arrowSrc = computed(() => {
        return props.orientation == 'horz' ? arrowRight : arrowBottom;
    })
</script>

<style scoped lang="scss">
    .btn {
        white-space: nowrap;
        border: 1px solid $orange;
        border-radius: $radius;
        padding: 1.25rem 2.5rem;
        font-size: $font-btn;
        text-transform: uppercase;
        &:hover {
            .btn__img {
            &--vert { 
                top: 2.5px;
            }
            &--horz {
                left: 4px;
            }
            }
        }
        &--primary {
            background-color: transparent;
            color: $black;
            transition: $transition;
            &:hover {
            transition: $transition;
            background-color: $orange;
            }
        }
        &--secondary {
            background-color: $orange;
            color: $cream;
        }
        &__img {
            position: relative;
            transition: $transition;
            margin-left: .25rem;
            top: 0px;
            left: 0;
            &--vert {
            height: 12px;
            }
            &--horz {
            width: 12px;
            }
        }
    }
</style>