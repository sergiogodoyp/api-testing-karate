function fn() {   
  var env = karate.env; // get java system property 'karate.env'
  karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev'; // default to dev
    }
  var config = { // base config JSON
    appId: 'my.app.id',
    appSecret: 'my.secret',
    apiKey: 'reqres-free-v1',
    urlBase: 'https://reqres.in/api/'

  };
  if (env == 'dev') {
    // over-ride only those that need to be
    config.urlBase = 'https://reqres.in/api/';
    config.apiKey = 'reqres-free-v1';
  } else if (env == 'cert') {
    config.urlBase = 'https://reqres.in/api-cert/';
    config.apiKey = 'reqres-free-v1';
  }
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}