<template>
  <div>
    <v-app-bar
      app
      color="transparent"
      class="pa-5"
      flat
      absolute
    >
    <span>&lt;</span>
      <span
        style="
          font-family: Agustina, 'Babylonica', cursive;
          font-size: 35px;
          margin: 0px;
          padding: 15px 0px 0px 10px;
        "
      >
        {{ title }}
      </span>
      <span> /&gt;</span>
      
      <v-spacer></v-spacer>

      <template v-for="(item, i) in menuItems">
        <v-btn
          :key="i"
          text
          :to="item.to"
        >
          {{ item.title }}
        </v-btn>
      </template>

      <v-menu
        :close-on-content-click="false"
        :nudge-width="200"
        offset-x
      >
        <template v-slot:activator="{ on, attrs }">
          <v-btn
            icon
            v-bind="attrs"
            v-on="on"
          >
            <v-icon>mdi-dots-vertical</v-icon>
          </v-btn>
        </template>

        <v-card>
          <v-list>
            <v-list-item>
              <v-list-item-content>
                <v-list-item-title>Settings</v-list-item-title>
              </v-list-item-content>
            </v-list-item>
            <v-divider></v-divider>
            <v-list-item>
              <v-switch
                v-model="$vuetify.theme.dark"
                hint="Toggle to change the theme"
                inset
                :label="`${$vuetify.theme.dark ? 'Dark' : 'Light'} Theme`"
                persistent-hint
              ></v-switch>
            </v-list-item>
          </v-list>
        </v-card>
      </v-menu>
    </v-app-bar>
  </div>
</template>

<script>
import { greeting } from "../shared/portfolio";

export default {
  name: "AppBar",
  data() {
    return {
      title: greeting.logo_name,
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
};
</script>
