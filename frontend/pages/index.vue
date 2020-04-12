<template>
  <section class="hero is-medium">
    <div class="hero-body">
      <div class="container">
        <nav class="panel">
          <p class="panel-heading ">
            Todo
          </p>
          <div class="panel-block">
            <p class="control has-icons-left">
              <input class="input" type="text" placeholder="Create Todo" />
              <span class="icon is-left">
                <i class="fas fa-search" aria-hidden="true"></i>
              </span>
            </p>
          </div>
          <a class="panel-block" v-for="user in users" :key="user.name">
            <span class="panel-icon">
              <i class="fas fa-book" aria-hidden="true"></i>
            </span>
            {{ user.email }}
          </a>
          <div class="panel-block">
            <button class="button is-link is-outlined is-fullwidth">
              CREATE
            </button>
          </div>
        </nav>
      </div>
    </div>
  </section>
</template>

<script>
import gql from "graphql-tag";

export default {
  components: {},
  data() {
    return {
      users: []
    };
  },
  apollo: {
    users: gql`
      query users {
        users {
          id
          name
          email
        }
      }
    `
  }
};
</script>
