<template>
  <div class="wrapper">
    <div class="md-layout">
      <md-field class="md-layout-item country-code">
        <label>Code</label>
        <md-input v-model="countryCode" v-on:keypress="validateCode"></md-input>
      </md-field>
      <md-field class="md-layout-item">
        <label>Your Phone Number:</label>
        <md-input v-model="phoneNumber" v-on:keypress="validatePhoneNumber"></md-input>
      </md-field>
    </div>
  </div>
</template>

<script>
export default {
  name: 'AppPhoneInput',
  data() {
    return {
      countryCode: '',
      phoneNumber: ''
    }
  },
  methods: {
    validateInputData(condition, ev, model, maxInputLength) {
      if (model.length >= maxInputLength || !condition.test(ev.key)) {
        ev.preventDefault();
        return false;
      }
    },

    validateCode(ev) {
      this.validateInputData(/[+0-9/]+/, ev, this.countryCode, 7);
    },

    validatePhoneNumber(ev) {
      this.validateInputData(/[0-9/]+/, ev, this.phoneNumber, 15);
    }
  }
}
</script>

<style scoped>
.wrapper {
  max-width: 300px;
  margin: 100px auto;
}
.country-code {
  max-width: 80px;
}
</style>
