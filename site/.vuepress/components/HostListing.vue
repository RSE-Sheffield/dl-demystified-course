<script setup>
import awsHosts from "./aws_ec2_hosts.json"

function getHostUrls(){
  let hostUrls = [];
  for( let i = 0 ;i < awsHosts.aws_ec2.hosts.length; i++){
    const hostName = awsHosts.aws_ec2.hosts[i];
    hostUrls.push(`http://${hostName}/lab`);
  }
  return hostUrls;
}

</script>

<template>
  <div>
    <ul>
      <li v-for="(hostUrl, index) in getHostUrls()">
        <a :href="hostUrl" target="_blank">Machine {{index}} - {{hostUrl}}</a>
      </li>
    </ul>
  </div>

</template>

<style scoped>

</style>
