<template>
  <v-container fluid>
    <v-container class="mt-5">
      <v-row
        align="center"
        justify="center"
      >
        <v-col
          md="6"
          cols="12"
        >
          <h3 class="text-h1 font-weight-bold mb-4">
            Hi! I'm {{ greeting.nickname }}
          </h3>
          <SocialMedia />
        </v-col>
        <v-col
          md="6"
          cols="12"
        >
          <FeelingProud
            :theme="theme"
            width="100%"
          />
        </v-col>
      </v-row>
    </v-container>
    <AboutMe
      :greeting="greeting"
      :theme="theme"
    />
    <MySkills
      :greeting="greeting"
      :theme="theme"
    />
  </v-container>
</template>

<script>
  import "@/assets/css/Greeting.css";
  import FeelingProud from "@/svg/FeelingProud.vue";
  import SocialMedia from "@/components/SocialMedia.vue";
  import AboutMe from '@/components/AboutMe.vue';
  import MySkills from '@/components/MySkills.vue';
  import { chosenTheme } from "@/shared/theme";
  import { greeting } from "@/shared/portfolio";

  export default {
    name: 'HomePage',
    
    components: {
      FeelingProud,
      SocialMedia,
      AboutMe,
      MySkills,
    },

    data: () => ({
      theme: chosenTheme,
      greeting: greeting,
    }),
  }
</script>
