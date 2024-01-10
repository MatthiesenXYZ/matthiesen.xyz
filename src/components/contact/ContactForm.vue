<template>
    <form @submit.prevent="submitForm">
        <div class="mb-5">
            <input type="text" placeholder="Full Name" required class="w-full px-4 py-3 border-2 placeholder:text-gray-900 text-gray-800 rounded-md outline-none focus:ring-4 border-gray-600 focus:border-gray-200 ring-gray-800 bg-slate-300" name="name" v-model="name"/>
        </div>
        <div class="mb-5">
            <input id="email_address" type="email" placeholder="Email Address" name="email" required class="w-full px-4 py-3 border-2 placeholder:text-gray-900 text-gray-800 rounded-md outline-none focus:ring-4 border-gray-600 focus:border-gray-200 ring-gray-800 bg-slate-300" v-model="email"/> 
        </div>
        <div class="mb-3">
            <textarea name="message" required placeholder="Your Message" class="w-full px-4 py-3 border-2 placeholder:text-gray-900 text-gray-800 rounded-md outline-none h-36 focus:ring-4 border-gray-600 focus:border-gray-200 ring-gray-800 bg-slate-300" v-model="message"></textarea>
        </div>
        <button class="rounded text-center transition focus-visible:ring-2 ring-offset-2 ring-gray-800 px-6 py-3 bg-black text-white hover:bg-slate-900  border-2 border-transparent w-full" type="submit">Send Message</button>
        <div class="text-green-500 mt-2" id="success" v-if="success">{{ success }}</div>
    </form>
  </template>
  
  <script>
  const WEB3FORMS_ACCESS_KEY = "7cb460b0-427f-439a-95cd-4fe99d078601";
  const successMessage = "Message Sent";

  export default {
    data() {
      return {
        name: "",
        email: "",
        message: "",
        success: "",
        subject: "New Ticket Submission",
        from_name: "MXYZ-Web3Form"
      };
    },
    methods: {
      async submitForm() {
        const response = await fetch("https://api.web3forms.com/submit", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
            Accept: "application/json",
          },
          body: JSON.stringify({
            access_key: WEB3FORMS_ACCESS_KEY,
            name: this.name,
            email: this.email,
            subject: this.subject,
            from_name: this.from_name,
            message: this.message,
          }),
        });
        const result = await response.json();
        if (result.success) {
          this.success=successMessage;
        }
      },
    },
  };
  </script>