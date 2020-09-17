<template>
  <v-app>
    <v-container grid-list-xl>
      <v-layout row wrap>
        <PostCard
          v-for="post in posts"
          v-bind:key="post.id"
          :post=post
        ></PostCard>
      </v-layout>
    </v-container>
  </v-app>
</template>

<script>
  import PostCard from "./components/PostCard";

  export default {
    name: "App",
    components: {
      PostCard,
    },
    data: () => ({
      posts: [
        {
          id: 1,
          createdAt: "2018/09/23",
          title: "sample post",
          description: "sample post description",
          contents: "sample post contents",
          thumbnail: {
            url: "https://picsum.photos/800/400?image=80"
          }
        },
        {
          id: 2,
          createdAt: "2018/09/24",
          title: "sample post2",
          description: "sample post description2",
          contents: "sample post contents2",
          thumbnail: {
            url: "https://picsum.photos/800/400?image=90"
          }
        },
        {
          id: 3,
          createdAt: "2018/09/24",
          title: "sample post3",
          description: "sample post description3",
          contents: "sample post contents3",
          thumbnail: {
            url: "https://picsum.photos/800/400?image=100"
          }
        },
      ]
    })
  }
</script>
