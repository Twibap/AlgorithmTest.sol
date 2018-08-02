pragma solidity ^0.4.24;

contract AlgorithmStudy{

	function compareToMax(uint[] arr) public pure returns(uint){
		uint n = arr.length;
		uint max = 0;

		// 배열에 원소없는 경우 -1 리턴
		if (n <= 0) {
			return 0;
		}

		// 배열 첫번째 값을 최대값으로 설정
		max = arr[0];

		// 모든 값을 최대값과 비교
		for (uint i = 0; i < n; i++) {
			if (arr[i] > max) {
				max = arr[i];
			}
		}

		return max;
	}

	function compareToAll(uint[] arr) public pure returns(uint){
		uint n = arr.length;

		if (n <= 0) {
			return 0;
		}

		uint i;
		uint j;

		bool isMax;
		for (i = n - 1; i > 0; i--) {
			isMax = true;
			for (j = 0; j < n; j++) {
				if (arr[j] > arr[i]) {
					isMax = false;
				}
			}
			if (isMax) {
				break;
			}
		}

		return arr[i];
	}

}
