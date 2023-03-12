<template>
    <div style="position:absolute; width: 100%; height:100%; top:0; left:0; z-index:10000; background-color:white">
        <div style="margin-left: auto; margin-right: auto" :class="{ loader: true, fadeout: true }">
            Loading...
        </div>
    </div>
</template>
<script>
    export default {
        name: "SplashScreen"
    }
</script>
<style>
    .loader {
        background-color: #63ab97;
        bottom: 0;
        color: white;
        display: block;
        font-size: 32px;
        left: 0;
        overflow: hidden;
        padding-top: 10vh;
        position: fixed;
        right: 0;
        text-align: center;
        top: 0;
    }
    .fadeout {
        animation: fadeout 3s forwards;
    }
    @keyframes fadeout {
        to {
            opacity: 0;
            visibility: hidden;
        }
    }
</style>