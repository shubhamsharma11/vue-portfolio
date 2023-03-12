<template>
  <v-theme-provider root>
    <splash-screen v-if="loading" />
    <v-app>
      <app-bar />
      <v-main>
        <router-view />
        <v-fab-transition>
          <v-btn
            color="pink"
            dark
            absolute
            right
            fab
          >
            <v-icon>mdi-plus</v-icon>
          </v-btn>
        </v-fab-transition>
      </v-main>
    </v-app>
  </v-theme-provider>
</template>

<script>
import SplashScreen from "./components/SplashScreen";
import AppBar from "./components/AppBar";

export default {
  name: 'App',

  components: {
    SplashScreen,
    AppBar,
  },

  data: () => ({
    loading: true,
  }),
  mounted() {
    setTimeout(() => {
        this.loading = false
    }, 3000)
  }
};
</script>
