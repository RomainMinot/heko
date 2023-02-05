<template>
    <a href="#" class="btn" :class="type == 'primary' ? 'btn--primary' : 'btn--secondary'">
        {{ text }} <img class="btn__img" :class="orientation == 'vert' ? 'btn__img--vert' : 'btn__img--horz'" :src="arrowSrc" alt="Arrow bottom">
    </a>
</template>

<script setup>
    import arrowRight from '/assets/img/arrow_right.svg';
    import arrowRightAlt from '/assets/img/arrow_right_alt.svg';
    import arrowBottom from '/assets/img/arrow_bottom.svg';

    const props = defineProps({
        'text': String,
        'type': String,
        'orientation': String
    })

    const arrowSrc = computed(() => {
        let src = null;
        switch (props.orientation) {
            case 'horz':
                src = arrowRight;
                break;
            case 'horzAlt':
                src = arrowRightAlt;
                break;
            default:
                src = arrowBottom;
                break;
        }
        return src;
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