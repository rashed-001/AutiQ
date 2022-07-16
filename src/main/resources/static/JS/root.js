const box1 = document.querySelector('.box1');
const box2 = document.querySelector('.box2');
const learning = document.querySelector('.learning');
const IqQuiz = document.querySelector('.IqQuiz');

box1.addEventListener('click', ()=>{
	
	box1.classList.add('activeColor');
	box2.classList.remove('activeColor');
	learning.classList.add('active');
	IqQuiz.classList.remove('active');
});
box2.addEventListener('click', ()=>{
	
	box1.classList.remove('activeColor');
	box2.classList.add('activeColor');
	learning.classList.remove('active');
	IqQuiz.classList.add('active');
});