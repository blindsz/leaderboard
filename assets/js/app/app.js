(function () {
    var model = {
    	getAllSwimmers: function () {
    		var deferred = $.Deferred();

    		$.get(BASE_URL + CURRENT_CONTROLLER + "/get_all_swimmers", { }, function (data) {
				deferred.resolve(data);
			});

			return deferred.promise();
    	}
    };

    var controller = {
        init: function () {
            var self = this;
            self.leaderBoardCarousel = $(".leader_board_carousel");

            BoardView.init().render();
            setInterval(function(){ BoardView.init().render() }, 3000);
            self.leaderBoardCarousel.carousel({
                interval: 3000
            });
	    }
    };

    var BoardView = {
    	init: function () {
    		this.ageNineToTwelveTable = $("#age_nine_to_twelve_table");
            this.ageThirteenToSeventeenTable = $("#age_thirteen_to_seventeen_table");
            this.ageEighteenUpTable = $("#age_eighteen_up_table");
            this.leaderBoardCarousel = $("#leader_board_carousel");

    		return this;
    	},
    	render: function () {
    		var self = this;
            var swimmersAgeNineToTwelve = [];
            var swimmersAgeThirteenToSeventeen = [];
            var swimmersAgeEighteenUp = [];
            
            model.getAllSwimmers().done(function (swimmers) {

                swimmers = JSON.parse(swimmers);
                
                for(var i=0; i<swimmers.length; i++){
                    if(swimmers[i].age >=9 && swimmers[i].age <=12){
                        swimmersAgeNineToTwelve.push({
                            first_name: swimmers[i]['first_name'],
                            last_initial: swimmers[i]['last_initial'],
                            challenge_time: swimmers[i]['challenge_time']
                        });
                    }
                    else if(swimmers[i].age >=13 && swimmers[i].age <=17){
                        swimmersAgeThirteenToSeventeen.push({
                            first_name: swimmers[i]['first_name'],
                            last_initial: swimmers[i]['last_initial'],
                            challenge_time: swimmers[i]['challenge_time']
                        });
                    }
                    else if(swimmers[i].age >= 18){
                        swimmersAgeEighteenUp.push({
                            first_name: swimmers[i]['first_name'],
                            last_initial: swimmers[i]['last_initial'],
                            challenge_time: swimmers[i]['challenge_time']
                        });
                    }
                }
                
                swimmersAgeNineToTwelve = swimmersAgeNineToTwelve.slice(0,10);
                swimmersAgeThirteenToSeventeen = swimmersAgeThirteenToSeventeen.slice(0,10);
                swimmersAgeEighteenUp = swimmersAgeEighteenUp.slice(0,10);

                self.ageNineToTwelveTable.empty();
                self.ageThirteenToSeventeenTable.empty();
                self.ageEighteenUpTable.empty();

                for(var j=0; j<swimmersAgeNineToTwelve.length; j++){
                    var ranking = j + 1;
                    self.ageNineToTwelveTable.append(
                        '<tr>'+
                            '<td scope="row">'+ ranking +'</td>'+
                            '<td>'+ swimmersAgeNineToTwelve[j].first_name +" "+ swimmersAgeNineToTwelve[j].last_initial +"."+'</td>'+
                            '<td>'+ swimmersAgeNineToTwelve[j].challenge_time.substring(3) +'</td>'+

                        '</tr>'
                    );
                }

                for(var k=0; k<swimmersAgeThirteenToSeventeen.length; k++){
                    var ranking = k + 1;
                    self.ageThirteenToSeventeenTable.append(
                        '<tr>'+
                            '<td scope="row">'+ ranking +'</td>'+
                            '<td>'+ swimmersAgeThirteenToSeventeen[k].first_name +" "+ swimmersAgeThirteenToSeventeen[k].last_initial  +"."+'</td>'+
                            '<td>'+ swimmersAgeThirteenToSeventeen[k].challenge_time.substring(3) +'</td>'+
                        '</tr>'
                    );
                }

                for(var l=0; l<swimmersAgeEighteenUp.length; l++){
                    var ranking = l + 1;
                    self.ageEighteenUpTable.append(
                        '<tr>'+
                            '<td scope="row">'+ ranking +'</td>'+
                            '<td>'+ swimmersAgeEighteenUp[l].first_name +" "+ swimmersAgeEighteenUp[l].last_initial  +"."+'</td>'+
                            '<td>'+ swimmersAgeEighteenUp[l].challenge_time.substring(3) +'</td>'+
                        '</tr>'
                    );
                }

            });


    		return this;
    	}
    };

    controller.init();
})();