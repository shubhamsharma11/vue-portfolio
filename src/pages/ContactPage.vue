<template>
  <v-container>
    <v-row
      align="center"
      justify="center"
    >
      <v-col
        md="6"
        cols="12"
      >
        <v-img
          src="../../public/images/contact.svg"
        ></v-img>
      </v-col>
      <v-col
        md="5"
        offset-md="1"
        cols="12"
      >
        <v-form
          ref="form"
          v-model="valid"
          lazy-validation
        >
          <v-text-field
            v-model="name"
            outlined
            :counter="20"
            :rules="nameRules"
            label="Name"
            required
          ></v-text-field>

          <v-text-field
            v-model="email"
            outlined
            :rules="emailRules"
            label="E-mail"
            required
          ></v-text-field>

          <v-textarea
            v-model="message"
            outlined
            label="Comments"
            required
          ></v-textarea>

          <v-btn
            :disabled="!valid"
            color="success"
            class="mr-4"
            @click="submitForm"
          >
            Submit
          </v-btn>

          <v-btn
            color="error"
            class="mr-4"
            @click="reset"
          >
            Reset Form
          </v-btn>

        </v-form>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      name: '',
      email: '',
      message: '',

      valid: true,
      nameRules: [
        v => !!v || 'Name is required',
        v => (v && v.length <= 20) || 'Name must be less than 20 characters',
      ],
      emailRules: [
        v => !!v || 'E-mail is required',
        v => /.+@.+\..+/.test(v) || 'E-mail must be valid',
      ],
    };
  },
  methods: {
    submitForm() {
      if(this.$refs.form.validate())
      {
        const formUrl = 'https://docs.google.com/forms/d/e/1FAIpQLSdWEMAnahCcSj08FVyfk4pv3eSsNxaYGmwRnDqOvk6JI9d2qg/formResponse';
        const formData = new FormData();
        formData.append('entry.2005620554', this.name); // entry.2005620554: Name
        formData.append('entry.1045781291', this.email); // entry.1045781291: Email
        formData.append('entry.839337160', this.message); // entry.839337160: Comments

        fetch(formUrl, {
          method: 'POST',
          body: formData,
          mode: 'no-cors' // Required to avoid CORS issue
        })
          .then(() => {
            alert('Form submitted successfully!');
            this.reset();
          })
          .catch(error => {
            console.error(error);
            alert('Failed to submit form');
          });
      }
      else
      {
        alert('Validation Failed !!!');
      }
    },
    reset () {
      this.$refs.form.reset()
    },
  },
};
</script>
