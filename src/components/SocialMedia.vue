<template>
  <v-row
    justify="center"
    no-gutters
  >
    <v-col
      cols="12"
      class="mt-5"
    >
      <v-btn
        v-for="(s, i) in social"
        :key="i"        
        fab
        small
        class="mr-3"
        :color="s.color"
        dark
      >
        <v-icon
          v-text="s.icon"
        />
      </v-btn>
    </v-col>
    <v-col
      cols="12"
    >
      <v-btn        
        x-large
        class="mt-5"
        color="primary"
      >
        <v-icon>
          mdi-download
        </v-icon>
        Download Resume
      </v-btn>
    </v-col>
  </v-row>
</template>

<script>
export default {
  name: 'SocialMedia',

  data: () => ({
    social: [
      {
        color: '#55ACEE',
        icon: 'mdi-twitter',
      },
      {
        color: '#3B5998',
        icon: 'mdi-facebook',
      },
      {
        color: '#DD4b39',
        icon: 'mdi-google',
      },
      {
        color: '#0976B4',
        icon: 'mdi-linkedin',
      },
      {
        color: '#333333',
        icon: 'mdi-github',
      },
      {
        color: '#e4405f',
        icon: 'mdi-instagram',
      },
    ],
  }),
}
</script>

<style>

</style>