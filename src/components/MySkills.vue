<template>
  <v-container>
    <v-row justify="center">
      <h1 class="text-h3 font-weight-regular mb-5">
        Skill
      </h1>
    </v-row>
    <v-row>
      <v-col>
        <p class="text-body-1 font-weight-regular justify-center">
          {{ greeting.subTitle }}
        </p>

        <v-card flat>
          <v-list
            disabled
            dense
          >
            <v-list-item
              v-for="(item, i) in items"
              :key="i"
            >
              <v-list-item-icon>
                <v-icon v-text="item.icon"></v-icon>
              </v-list-item-icon>
              <v-list-item-title v-text="item.title"></v-list-item-title>
              <v-list-item-subtitle v-text="item.value"></v-list-item-subtitle>
            </v-list-item>
          </v-list>
        </v-card>
      </v-col>
      <v-col
        md="5"
        sm="12"
      >
        <FullStack
          :theme="theme"
          width="480px"
          height="350px"
        />
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
  import FullStack from "@/svg/FullStack.vue";

  export default {
    name: 'MySkill',

    components: {
      FullStack,
    },

    props: {
      greeting: {
        type: Object,
      },
      theme: {
        type: Object,
      },
    },

    data: () => ({
      items: [
        {
          icon: 'mdi-account-circle',
          title: 'Full Name',
          value: 'Shubham Sharma',
        },
        {
          icon: 'mdi-calendar-account',
          title: 'Date of Birth',
          value: '17 November 1995',
        },
        {
          icon: 'mdi-cake-variant',
          title: 'Age',
          value: '29',
        },
        {
          icon: 'mdi-phone',
          title: 'Phone',
          value: '+91 9098727192',
        },
        {
          icon: 'mdi-email',
          title: 'Email',
          value: 'ssharma0834@gmail.com',
        },
        {
          icon: 'mdi-school',
          title: 'Higher Education',
          value: `Bachelor's of Engineering`,
        },
      ],
    }),
  }
</script>
