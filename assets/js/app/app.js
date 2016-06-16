(function () {
    var model = {
    	getAllPerson: function () {
    		var deferred = $.Deferred();

    		$.get(BASE_URL + CURRENT_CONTROLLER + "/get_all_persons", { }, function (data) {
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
            var personsAgeNineToTwelve = [];
            var personsAgeThirteenToSeventeen = [];
            var personsAgeEighteenUp = [];
            
            model.getAllPerson().done(function (persons) {
                for(var i=0; i<persons.length; i++){
                    if(persons[i].age >=9 && persons[i].age <=12){
                        personsAgeNineToTwelve.push({
                            first_name: persons[i]['first_name'],
                            middle_name: persons[i]['middle_name'],
                            last_name: persons[i]['last_name'],
                            time: persons[i]['time']
                        });
                    }
                    else if(persons[i].age >=13 && persons[i].age <=17){
                        personsAgeThirteenToSeventeen.push({
                            first_name: persons[i]['first_name'],
                            middle_name: persons[i]['middle_name'],
                            last_name: persons[i]['last_name'],
                            time: persons[i]['time']
                        });
                    }
                    else if(persons[i].age >= 18){
                        personsAgeEighteenUp.push({
                            first_name: persons[i]['first_name'],
                            middle_name: persons[i]['middle_name'],
                            last_name: persons[i]['last_name'],
                            time: persons[i]['time']
                        });
                    }
                }
                
                personsAgeNineToTwelve = personsAgeNineToTwelve.slice(0,10);
                personsAgeThirteenToSeventeen = personsAgeThirteenToSeventeen.slice(0,10);
                personsAgeEighteenUp = personsAgeEighteenUp.slice(0,10);

                self.ageNineToTwelveTable.empty();
                self.ageThirteenToSeventeenTable.empty();
                self.ageEighteenUpTable.empty();

                for(var j=0; j<personsAgeNineToTwelve.length; j++){
                    var ranking = j + 1;
                    self.ageNineToTwelveTable.append(
                        '<tr>'+
                            '<td scope="row">'+ ranking +'</td>'+
                            '<td>'+ personsAgeNineToTwelve[j].first_name +" "+ personsAgeNineToTwelve[j].middle_name +" "+ personsAgeNineToTwelve[j].last_name  +'</td>'+
                            '<td>'+ personsAgeNineToTwelve[j].time.substring(3) +'</td>'+

                        '</tr>'
                    );
                }

                for(var k=0; k<personsAgeThirteenToSeventeen.length; k++){
                    var ranking = k + 1;
                    self.ageThirteenToSeventeenTable.append(
                        '<tr>'+
                            '<td scope="row">'+ ranking +'</td>'+
                            '<td>'+ personsAgeThirteenToSeventeen[k].first_name +" "+ personsAgeThirteenToSeventeen[k].middle_name +" "+ personsAgeThirteenToSeventeen[k].last_name  +'</td>'+
                            '<td>'+ personsAgeThirteenToSeventeen[k].time.substring(3) +'</td>'+
                        '</tr>'
                    );
                }

                for(var l=0; l<personsAgeEighteenUp.length; l++){
                    var ranking = l + 1;
                    self.ageEighteenUpTable.append(
                        '<tr>'+
                            '<td scope="row">'+ ranking +'</td>'+
                            '<td>'+ personsAgeEighteenUp[l].first_name +" "+ personsAgeEighteenUp[l].middle_name +" "+ personsAgeEighteenUp[l].last_name  +'</td>'+
                            '<td>'+ personsAgeEighteenUp[l].time.substring(3) +'</td>'+
                        '</tr>'
                    );
                }

            });


    		return this;
    	}
    };

    controller.init();
})();