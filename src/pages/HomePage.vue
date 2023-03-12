<template>
  <v-container>
    <v-row
      align="center"
      justify="center"
    >
      <v-col
        md="6"
        sm="12"
      >
        <h3 class="text-h1 font-weight-bold mb-4">
          Hi! I'm {{ greeting.nickname }}
        </h3>
        <SocialMedia />
      </v-col>
      <v-col
        lg="6"
        md="12"
      >
        <FeelingProud
          :theme="theme"
          width="550px"
          height="550px"
        />
      </v-col>
    </v-row>
    <v-row>
      <v-col>
        <AboutMe
          :greeting="greeting"
          :theme="theme"
        />
      </v-col>
    </v-row>
    <v-row>
      <v-col>
        <MySkills
          :greeting="greeting"
          :theme="theme"
        />
      </v-col>
    </v-row>
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
