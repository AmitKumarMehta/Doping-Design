document.addEventListener('DOMContentLoaded', () => {
    const quizBox = document.getElementById('quiz-box');
    const questionElement = document.getElementById('question');
    const answerButtonsElement = document.getElementById('answer-buttons');
    const submitButton = document.getElementById('submit-btn');
    const badgeDisplay = document.getElementById('badge-display');
    const badgeCard = document.getElementById('badge-card');
    const certificateElement = document.getElementById('certificate');
    const questionNumberElement = document.getElementById('question-number');

    let questions = [];
    let correctAnswers = [];
    let userAnswers = [];
    let currentQuestionIndex = 0;

    fetch('/get_questions')
        .then(response => response.json())
        .then(data => {
            questions = data;
            correctAnswers = questions.map(q => q.correct);
            loadQuestion(0);
        });

    function loadQuestion(index) {
        if (index < questions.length) {
            const question = questions[index];
            questionElement.textContent = question.question;
            questionNumberElement.textContent = `Question ${index + 1} of ${questions.length}`; 
            answerButtonsElement.innerHTML = '';
            question.answers.forEach(answer => {
                const button = document.createElement('button');
                button.textContent = answer;
                button.addEventListener('click', () => {
                    userAnswers[index] = answer;
                    if (index < questions.length - 1) {
                        loadQuestion(index + 1);
                    } else {
                        showSubmitButton();
                    }
                });
                answerButtonsElement.appendChild(button);
            });
        }
    }

    function showSubmitButton() {
        submitButton.style.display = 'block';
        submitButton.addEventListener('click', submitAnswers);
    }

    function submitAnswers() {
        fetch('/submit_answers', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                answers: userAnswers,
                correct_answers: correctAnswers
            })
        })
        .then(response => response.json())
        .then(data => {
            displayBadge(data.badge);
            displayCertificate(data.certificate);
        });
    }

    function displayBadge(badge) {
        const badgeHtml = {
            "Golden": "<img src='https://ambotte.com/wp-content/uploads/2021/03/Gold.png' alt='Golden Badge' style='width: 120px; height: 120px;'>",
            "Silver": "<img src='https://www.vvivahkapumatrimony.com/public/uploads/all/8I4lel5KAs8ctkdwg98TgeVNSDU8cZuTZ6ksZXL0.png' alt='Silver Badge' style='width: 120px; height: 120px;'>",
            "Bronze": "<img src='https://www.sweatboxdundee.co.uk/wp-content/uploads/2019/03/Bronze.png' alt='Bronze Badge' style='width: 120px; height: 120px;'>"
        }[badge];
        
        badgeCard.innerHTML = badgeHtml;
        badgeDisplay.style.display = 'block';
    }
    

    function displayCertificate(certificate) {
        certificateElement.textContent = certificate;
    }
});
