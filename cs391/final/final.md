---
header-includes:
- \usepackage{setspace}
- \doublespacing
fontsize: 11pt

title: AI In The Classroom
date: 8 June 2020
author: Robert Detjens

bibliography: final.bib
csl: apa.csl
---

$\vspace{\fill}$

## Introduction

Education during the COVID pandemic has proven challenging for some. While some students have made the transition to
online learning with minor issues, some students have struggled to engage, whether due to technical difficulties,
distractions, or other issues. Instructors have also struggled; some difficulties include student engagement,
trustworthy exam proctoring, and teaching material reliant on physical hardware. These difficulties have presented
opportunities to improve the virtual classroom experience with artificial intelligence and machine learning, and
possibly the in-person experience as well.

AI has large potential to help with these problems. @mckinsey provides several example uses of AI in the classroom:
Computer vision can recognize the emotional state of students and relay the class mood to the instructor, allowing them
to gauge interest in the current material and adjust accordingly. Language processing can provide accurate real-time
transcriptions to students who need them, or determine the author of a paper through handwriting or structure analysis
to further plagiarism detection (@mckinsey).

$\pagebreak$

## Application 1: Exam Proctoring

### Overview

One major problem brought about by the sudden transition to remote learning is how to proctor an exam. In-person
classes that perform proctored exams do so in-person, with the instructor, learning assistants, or other personnel
physically in the same room as the students taking the exam. With remote learning, in-person exams are not possible.
Some classes have opted for unproctored exams instead, trusting the students taking it to not cheat -- the honor
system. Other classes have turned to proctoring software such as Proctorio, edX, or Canvas's quiz tools.

Some proctoring software such as ProctorU and Examity have used human proctors to watch a group of students virtually
(e.g. over Zoom) during the exam period [@proctorio_sue]. Humans are fallible, however, and this is not a perfect
solution; the proctor can be distracted by a student or other factor and miss a different student performing some
unwanted action, or not pick up on a student using other materials to cheat.

### Stakeholders

Failing to catch dishonest test taking affects both students and faculty of the class. Academic dishonesty undermines
the validity of a course, as cheating on an exam reflects that the student did not learn the material. Cheating is also
unfair to the students who took the exam honestly. Proctoring software providers and the institutions using the
software need to hire or provide human proctors to sit in on the exam sessions and watch the students.

Universities are responsible for deciding if proctoring software is required for all classes, and the instructor for
deciding on a class level.

### AI Solution

Artificial intelligence can solve this problem, as it can examine all students all the time. Facial recognition and
other AI categories can be trained to recognize possibly suspicious behavior such as glancing away from the screen,
taking the exam in a public setting, or switching away from the test window. The AI can then raise a warning for the
teacher or proctor to examine the incident more closely [@clp_proctor].

### Impact

Students benefit from accurate proctoring by knowing that they will not be flagged from false positives, instructors
from accurate cheating detection [todo:phrasing], and proctoring companies from not needing to hire a large amount of
human proctors to sit in on exam sessions, instead using the AI as the proctor examining the students.

However, in order for the AI to have enough data to perform correctly, the student must allow the software to access
many aspects of the device being used to take the exam, including the ability to "capture screen images, access web
page content, block browser tabs, analyze keyboard strokes, and change privacy settings" [@big_brother]. Students may
also be required to show their entire room to the proctor or proctoring software via their webcam [@big_brother]. This
invasion of privacy has been the subject of concern by students, with some OSU students compiling their grievances on
the invasive nature of Proctorio's monitoring and sending it to their teachers [@osu_against]. Proctoring software also
restricts student autonomy, flagging bathroom breaks or talking to yourself as potential cheating -- things students
would be able to do in in-person exams [@big_brother].

### Ethics

Examining the ethics of AI proctoring according to virtue theory shows AI proctoring is unethical. The privacy
violations that online proctoring software requires violates the virtues of liberty and autonomy by restricting what
one can do in a private setting such as the home. Facial recognition used by proctoring software may also discriminate
against people with colored skin, violating the virtue of justice by discriminating against a group unfairly. This
virtue may be further violated for people who act differently than the "norm" that the AI was trained to recognize and
may be flagged as false positives.

$\pagebreak$

## Application 2: Student Engagement

### Overview

Not all students learn in the same style. Some students work faster than others, and providing instruction at the best
pace for the student helps them learn the best. When asked what "superpowers" would help improve their teaching,
teachers interviewed by @ai_teacher shared several common wants, including knowing which students are stuck and not
asking for help, which are close to fully understanding the content, and knowing which students may need motivation
instead of instruction (along with several others) [@ai_teacher].

### Stakeholders

Introducing AI tutors into the classroom will affect both students and instructors. The teaching curriculum may need to
be adjusted in order to best include the tutor, which may involve the institution(s) responsible for creating it, e.g.
the state Board of Education or university professors.

### AI Solution

"Intelligent tutoring systems" can provide personalized material to each student, adapting to each student's needs
based on several factors like estimates of student knowledge and metacognitive skills [@ai_teacher]. Using AI to
provide automated instruction to students frees the instructor to provide one-on-one help to the students who need it
while the other students work on material presented by the AI tutor. In a study performed by Schofield et al., students
preferred this instruction manner verses traditional classes, helped by the increase in personalized interactions from
the AI tutor and instructor [@ai_teacher].

### Impact

Students benefit from the more engaging and tailored content that can adapt to how each student learns. Instructors
benefit from the analytics collected to see which students are struggling, what each student is struggling with, and
having the time to work closer with those struggling students.

### Ethics

Examining AI tutors with virtue ethics shows that AI tutors are ethical. The tutor is working to explicitly follow the
virtue of justice, providing a fair education to all students and adapting to their needs instead of letting
struggling students fall behind.

## Conclusion

While AI has potential benefits with student learning, its use in proctoring software raises many ethical questions.
Student's privacy is infringed upon with the data collection needed for AI processing to detect possible cheating,
leading to high stress and anxiety when given a proctored exam. As universities move beyond the traditional class
structure of mass lectures and proctored exams, incorporating AI into the classroom in a benevolent role instead of an
unsympathetic proctor has many benefits.

$\pagebreak$

## References

::: {#refs}
:::
