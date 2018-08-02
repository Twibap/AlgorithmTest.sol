const AlgorithmStudy = artifacts.require("AlgorithmStudy");

contract('AlgorithmStudy', function() {

	var testSize = 1024;
	var randomRange = 2**16;
	var data = [];

	for(var i = 0; i < testSize; i++){
		data.push(Math.floor( Math.random()*randomRange -1) );
	}

	var study;

	AlgorithmStudy.deployed().then(function(inst){
		study = inst;
	});

	it("compareToMax", function(){
		return study.compareToMax(data);
	});
//	it("compareToAll", function() {
//		return study.compareToAll(data);
//	});
});
