<template>
  <div>
    <v-expansion-panels
      v-for="(expSection, index) in experience.sections"
      :key="index"
    >
      <v-expansion-panel>
        <v-expansion-panel-header hide-actions>
          <template v-slot:default="{ open }">
            {{ expSection.title }}
            <div class="d-flex flex-row-reverse">                  
              <template v-if="open">
                <v-icon color="error">
                  mdi-minus
                </v-icon>
              </template>
              <template v-else>
                <v-icon color="success">
                  mdi-plus
                </v-icon>
              </template>
            </div>
          </template>
        </v-expansion-panel-header>

        <v-expansion-panel-content>
          <v-card
            class="ma-2"
            outlined
            v-for="(exp, i) in expSection.experiences"
            :key="i"
          >
            <v-card-title>
              {{ exp.title }}
            </v-card-title>

            <v-card-subtitle>
              {{ exp.company }}
              <!-- <div class="d-flex flex-row-reverse text-primary">
                {{ exp.duration }}
              </div>
              <div class="d-flex flex-row-reverse text-primary">
                {{ exp.location }}
              </div> -->
            </v-card-subtitle>

            <v-card-text>
              {{ exp.description }}
            </v-card-text>
          </v-card>

        </v-expansion-panel-content>
      </v-expansion-panel>
    </v-expansion-panels>
  </div>
</template>

<script>
import { experience } from "../shared/portfolio";

  export default {
    data: () => ({
      experience: experience,
      items1: [
        {
          color: 'red lighten-2',
          icon: 'mdi-star',
        },
        {
          color: 'purple darken-1',
          icon: 'mdi-book-variant',
        },
        {
          color: 'green lighten-1',
          icon: 'mdi-airballoon',
        },
        {
          color: 'indigo',
          icon: 'mdi-buffer',
        },
      ],
    }),
  }
</script>

<style>

</style>