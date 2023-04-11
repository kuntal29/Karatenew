function fn() {

	var config = {
		
	};

	var env = karate.env
	karate.log('the value of env is : ', env);

	if (env == 'qa') {
		config.baseUrl = 'https://dummyapi.io/data/v1'
	}
	else {
		config.baseUrl = 'https://dummyapi.io/data/v1'
	}


	karate.configure('connectTimeout', 5000);
	karate.configure('readTimeout', 5000)


	return config;
}




