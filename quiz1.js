/**
 * 
 */
let questions = [
    {
        id: 1,
        question: "What is the square root of 144?",
        answer:"12",
        options: [
            "24",
		 	"14",		
			"18",		
			"12"
        ]   
    },
    {
        id: 2,
        question: "Find the missing number in the series: 2, 5, 11, 20, ?",
        answer: "30",
        options: [
          "29",
          "30",
          "31",
          "32"
        ]
      },
      {
        id: 3,
        question: "What is 25% of 200?",
        answer: "50",
        options: [
          "30",
          "45",
          "50",
          "20"
        ]
      },
      {
        id: 4,
        question: "If x + 3 = 8, what is the value of x?",
        answer: "5",
        options: [
          "2",
          "5",
          "18",
          "4"
        ]
      },
      {
        id: 5,
        question: "Simplify the expression: 4(3 + 7) - 2",
        answer: "40",
        options: [
          "34",
          "42",
          "55",
          "40"
        ]
      },
      {
        id: 6,
        question: "If 5x + 3y = 22 and 2x - y = 4, what is the value of x + y?",
        answer: "6",
        options: [
          "12",
          "16",
          "6",
          "9"
        ]
      },
      {
        id: 7,
        question: " If a rectangle has a length of 8 units and width of 5 units,what its area?",
        answer: "40 units",
        options: [
          "16 units",
          "40 units",
          "46 units",
          "25 units"
        ]
      },
      {
        id: 8,
        question: "If the radius of a circle is 5 units, what is circumference?",
        answer: "  20π units",
        options: [
          " 20π units",
          " 60π units",
          " 30π units",
          " 70π units"
        ]
      },
      {
        id: 9,
        question: "Find the missing number in the series: 3, 8, 18, 38, ?",

        answer: "98",
        options: [
          "68",
          "78",
          "88",
          "98"
        ]
      },
      {
        id: 10,
        question: "What is 30% of 150?",
        answer: "45",
        options: [
          "80",
          "30",
          "45",
          "28"
          
        ]
      },
];

let question_count = 0;
let points = 0;

 
window.onload = function(){
    show(question_count);
};

function show(count){
    let question = document.getElementById("questions");
    let[first, second, third, fourth] = questions[count].options;

    question.innerHTML = `<h2>Q${count + 1}. ${questions[count].question}</h2>
    <ul class="option_group">
    <li class="option">${first}</li>
    <li class="option">${second}</li>
    <li class="option">${third}</li>
    <li class="option">${fourth}</li>
    </ul>`;
    toggleActive();  
}

function toggleActive(){
    let option = document.querySelectorAll("li.option");
    for(let i=0; i < option.length; i++){
        option[i].onclick = function(){
            for(let i=0; i < option.length; i++){
                if(option[i].classList.contains("active")){
                    option[i].classList.remove("active");
                }
            }
            option[i].classList.add("active");
        }
    }
}

function next(){

    if(question_count == questions.length -1){
        uploadInDB(points);
    }
    console.log(question_count);


let user_answer = document.querySelector("li.option.active").innerHTML;

if(user_answer == questions[question_count].answer){
    points += 10;
    sessionStorage.setItem("points",points);
}
console.log(points);

question_count++;
show(question_count);
}
function uploadInDB(points){
	let myElement = document.getElementById("myElement1");
	let emailId = myElement.getAttribute("data-jsp-variable");
	window.location.href = "score_db.jsp?email_id="+emailId+"&score="+points+"&category=Aptitude Reasoning";		 
}