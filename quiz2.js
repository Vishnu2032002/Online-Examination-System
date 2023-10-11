/**
 * 
 */
let questions = [
    {
        id: 1,
        question: "console.log(3 + 2);",
        answer:"5",
        options: [
            "24",
		 	"14",		
			"5",
			"12"
        ]   
    },
    {
        id: 2,
        question: "Which of the following is NOT a primitive data type in Java?",
        answer: "string",
        options: [
          "int",
          "string",
          "boolean",
          "double"
        ]
      },
      {
        id: 3,
        question: "Which programming language is used for building Android applications?",
        answer: "Java",
        options: [
          "Java",
          "C#",
          "Python",
          "Swift"
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
        question: "Which data structure uses LIFO (Last-In, First-Out) ordering?",
        answer: "Stack",
        options: [
          "Queue",
          "Tree",
          "Stack",
          "Linked list"
        ]
      },
      {
        id: 6,
        question: "What does CSS stand for?",
        answer: "Cascading Style Sheets",
        options: [
          "Cascading Style Sheets",
          " Computer Style Sheets",
          "Creative Style Sheets",
          "Colorful Style Sheets"
        ]
      },
      {
        id: 7,
        question: " Which programming language is used to develop iOS applications?",
        answer: "Swift",
        options: [
          "Java",
          "Swift",
          "Python",
          "C++"
        ]
      },
      {
        id: 8,
        question: "What does the acronym SQL stand for?",
        answer: "  20π units",
        options: [
          "Simple Query Language",
          "Structured Query Language",
          "Standard Query Language",
          "Sequential Query Language"
        ]
      },
      {
        id: 9,
        question: " What is the file extension for a Python source code file?",

        answer: ".py",
        options: [
          ".java",
          ".c",
          ".html",
          ".py"
        ]
      },
      {
        id: 10,
        question: "What does the acronym IDE stand for?",
        answer: "Integrated Development Environment",
        options: [
          "Interactive Design Environment",
          "Interactive Design Environment",
          "Integrated Development Environment",
          "Intelligent Debugging Environment"
          
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
}function uploadInDB(points){
	let myElement = document.getElementById("myElement2");
	let emailId = myElement.getAttribute("data-jsp-variable");
	window.location.href = "score_db.jsp?email_id="+emailId+"&score="+points+"&category=Programming Based";		 
}