<template>
  <div>
    <v-app-bar
      app
      flat
      fixed
      elevate-on-scroll
      class="mb-10"
    >
      <v-app-bar-nav-icon
        @click="drawer = true" 
        class="d-flex d-md-none" 
      ></v-app-bar-nav-icon>
      <v-toolbar-title>
        <span>&lt;{{ title }}/&gt;</span>
      </v-toolbar-title>
      
      <v-spacer></v-spacer>

      <template v-for="(item, i) in menuItems">
        <v-btn
          :key="i"
          text
          plain
          :to="item.to"
          class="d-none d-md-flex" 
        >
          {{ item.title }}
        </v-btn>
      </template>

      <div>
        <v-btn
          v-if="!$vuetify.theme.dark"
          icon
          @click="darkMode"
        >
          <v-icon
            class="mr-1"
            color="info"
          >
            mdi-moon-waxing-crescent
          </v-icon>
        </v-btn>

        <v-btn
          v-else
          icon
          @click="darkMode"
        >
          <v-icon>
            mdi-white-balance-sunny
          </v-icon>
        </v-btn>
      </div>

    </v-app-bar>
    <v-navigation-drawer
      v-model="drawer"
      absolute
      temporary
    >
      <v-list
        nav
        dense
      >
        <v-list-item-group>
          <v-list-item v-for="(item, index) in menuItems" :key="index">
            <v-btn
              :key="i"
              text
              plain
              block
              :to="item.to"
            >
              {{ item.title }}
            </v-btn>
          </v-list-item>

        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>
  </div>
</template>

<script>
import { greeting } from "../shared/portfolio";

export default {
  name: "AppBar",
  data() {
    return {
      title: greeting.logo_name,
      drawer: false,
      tab: null,
      menuItems: [
        {
          title: 'Home',
          to: '/',
        },
        {
          title: 'Education',
          to: '/education',
        },
        {
          title: 'Experience',
          to: '/experience',
        },
        {
          title: 'Project',
          to: '/projects',
        },
        {
          title: 'Contact',
          to: '/contact',
        },
      ],
    };
  },
  methods:{
    darkMode() {
      this.$vuetify.theme.dark = !this.$vuetify.theme.dark;
    },
  }
};
</script>
<style scoped>
span
{
  font-family: Agustina, 'Babylonica', cursive;
  font-weight: 500;
  font-size: 25px;
}
</style>
