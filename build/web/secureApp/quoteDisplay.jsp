<%-- 
    Document   : quote
    Created on : 14-Jun-2017, 2:52:19 PM
    Author     : ET
--%>

<%@page language="java"
        session="true"
        isThreadSafe="true"
        contentType="text/html" pageEncoding="UTF-8"
        import="java.text.SimpleDateFormat,java.util.Date,java.util.Calendar"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quote of the Week</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="quotestyle.css"
    </head>
    <body>

        <%
            String[] quotes = {
                "You didn't pick a date. Go back.",
                "'Don't stay in bed, unless you can make money in bed.' - George Burns",
                "'The question of whether a computer can think is no more interesting than the question of whether a submarine can swim.' - Edsger W. Dijkstra",
                "'In the middle of every difficulty lies opportunity.' - Albert Einstein",
                "'You must be the change you wish to see in the world.' - Mahatma Gandhi",
                "'Don't cry because it's over, smile because it happened.' - Dr. Seuss",
                "'A journey of a thousand miles must begin with a single step.' - Lao Tzu",
                "'Give a man a fish and you feed him for a day; teach a man to fish and you feed him for a lifetime.' - Proverb",
                "'With great power comes great responsibility.' - Voltaire",
                "'Life is like a box of chocolates. You never know what you're gonna get.' - Forrest Gump",
                "'Familiarity breeds contempt.' - Aesop",
                "'If you are going through hell, keep going.' - Winston Churchill",
                "'A penny saved is a penny earned.' - Benjamin Franklin",
                "'I think, therefore I am.' - Descartes",
                "'Hell hath no fury like a woman scorned.' - William Congreve",
                "'If we wait until we're ready, we'll be waiting for the rest of our lives.' - Lemony Snicket",
                "'If you're making mistakes it means you're out there doing something.' - Neil Gaiman",
                "'No one can make you feel inferior without your consent.' - Eleanor Roosevelt",
                "'May the Force be with you.' - Star Wars",
                "'The fear of death follows from the fear of life. One who lives life fully is prepared to die at any time.' - Mark Twain",
                "'Always borrow money from a pessimist. He won't expect it back.' - Oscar Wilde",
                "'Life is a journey to be experienced, not a problem to be solved.' - Pooh, Winnie the Pooh",
                "'There is no greater agony than bearing an untold story inside you.' - Maya Angelou",
                "'We've all got light and dark inside us. What matters is the part we choose to act on.' - J. K. Rowling",
                "'I'll be back.' - The Terminator",
                "'Get busy living or get busy dying.' - Stephen King, The Shawshank Redemption",
                "'Even a stopped clock is right twice a day'. - Paulo Coelho",
                "'If you focus on what you left behind, you will never see what lies ahead.' - Gusteau, Ratatouille",
                "'The cake is a lie!.' - Portal",
                "'It's dangerous to go alone! Take this.' - Old Man, The Legend of Zelda",
                "'E.T. phone home.' - E. T.",
                "'Fake news!' - Donald Trump",
                "'Frankly, my dear, I don't give a damn.' - Rhett Butler, Gone with the Wind",
                "'Yabba dabba do!' - Fred Flintstone",
                "'That's one small step for man, a giant leap for mankind' - Neil Armstrong",
                "'Scooby-Dooby-Doo!' - Scooby-Doo",
                "'D'oh.' - Homer Simpson",
                "'Say hello to my little friend!' - Scarface",
                "'I am Groot.' - Groot",
                "'It's a trap!' - Admiral Ackbar",
                "'The best way out is always through.' - Robert Frost",
                "'To infinity, and beyond.' - Buzz Lightyear, Toy Story",
                "'Why so serious?' - The Joker",
                "'You're fired!' - Donald Trump",
                "'It is my chief duty to accomplish humble tasks as though they were great and noble.' - Helen Keller",
                "'When life gets you down, do you wanna know what you've gotta do? Just keep swimming!' - Dory, Finding Nemo",
                "'As you grow older, you will discover that you have two hands, one for helping yourself, the other for helping others.' - Audrey Hepburn",
                "'The people who give you their food give you their heart.' - Cesar Chavez",
                "'The more we share the more we have.' - Leonard Nemoy",
                "'The only limits for tomorrow are the doubts we have today.' - Pittacus Lore",
                "'All endings are also beginnings. We just don't know it at the time.' - Mitch Albom, The Five People You Meet in Heaven",
                "'There is some good in this world, and it's worth fighting for.' - Gandalf, Lord of the Rings",
                "'Hakuna matata.' - Timon and Pumbaa, The Lion King"
            };

            String dateInString = request.getParameter("hiddenField");
            int week_of_year;

            if (dateInString.length() != 1) {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-M-dd");
                Date date = sdf.parse(dateInString);

                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                week_of_year = calendar.get(Calendar.WEEK_OF_YEAR);
            } else {
                week_of_year = Integer.parseInt(dateInString);
            }
        %>
        <div class="bgimg w3-display-container w3-animate-opacity w3-text-white w3-center">
            <div class="w3-display-middle quoteHolder">
                <h1 class="w3-animate-top">Your quote of the week:</h1>
                <p class="w3-animate-top"><%=quotes[week_of_year]%></p>
                <hr class="w3-animate-top w3-border-grey" style="margin:auto;width:50%">
            </div>
        </div>
    </body>
</html>
