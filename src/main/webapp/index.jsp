<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Gopu Varshini | Portfolio</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            background: #f4f6f9;
            color: #333;
        }


        /* Navigation */

        header {
            background: #24243e;
            color: white;
            padding: 20px 60px;

            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h2 {
            color: white;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-left: 25px;
            font-size: 16px;
        }

        nav a:hover {
            color: #00d4ff;
        }


        /* Hero Section */

        .hero {
            text-align: center;
            padding: 100px 20px;

            background: linear-gradient(
                135deg,
                #24243e,
                #302b63,
                #0f0c29
            );

            color: white;
        }

        .hero h1 {
            font-size: 50px;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 21px;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            padding: 13px 28px;

            background: #00d4ff;
            color: #111;

            text-decoration: none;
            border-radius: 25px;

            font-weight: bold;
        }

        .btn:hover {
            background: white;
        }


        /* Common Section */

        .section {
            padding: 60px 10%;
            text-align: center;
        }

        .section h2 {
            margin-bottom: 30px;
            font-size: 32px;
            color: #302b63;
        }

        .section p {
            font-size: 17px;
            line-height: 1.7;
        }


        /* Skills */

        .cards {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
        }

        .card {
            background: white;

            width: 250px;

            padding: 30px;

            border-radius: 15px;

            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);

            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-8px);
        }

        .card h3 {
            margin-bottom: 15px;
            color: #302b63;
        }

        .card p {
            font-size: 15px;
        }


        /* Projects */

        .projects {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
        }

        .project {
            background: white;

            width: 280px;

            padding: 25px;

            border-radius: 15px;

            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);

            transition: transform 0.3s;
        }

        .project:hover {
            transform: translateY(-8px);
        }

        .project h3 {
            color: #302b63;
            margin-bottom: 15px;
        }

        .project p {
            font-size: 15px;
        }


        /* Contact */

        .contact-box {
            background: white;

            max-width: 500px;

            margin: auto;

            padding: 30px;

            border-radius: 15px;

            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .contact-box p {
            margin: 10px 0;
        }


        /* Footer */

        footer {
            background: #24243e;

            color: white;

            text-align: center;

            padding: 20px;
        }


        /* Mobile */

        @media (max-width: 700px) {

            header {
                flex-direction: column;
                padding: 20px;
            }

            nav {
                margin-top: 15px;
            }

            nav a {
                margin: 8px;
            }

            .hero h1 {
                font-size: 36px;
            }

            .hero p {
                font-size: 17px;
            }

        }

    </style>

</head>


<body>


    <!-- Navigation -->

    <header>

        <h2>Gopu Varshini</h2>

        <nav>

            <a href="#home">Home</a>

            <a href="#about">About</a>

            <a href="#skills">Skills</a>

            <a href="#projects">Projects</a>

            <a href="#contact">Contact</a>

        </nav>

    </header>



    <!-- Home -->

    <section class="hero" id="home">

        <h1>Hello, I'm Gopu Varshini</h1>

        <p>
            B.Tech CSE (AI & ML) Student | AI & ML Enthusiast
        </p>

        <a href="#about" class="btn">
            Explore My Profile
        </a>

    </section>



    <!-- About -->

    <section class="section" id="about">

        <h2>About Me</h2>

        <p>

            I am a B.Tech Computer Science student specializing in
            Artificial Intelligence and Machine Learning.

            I am passionate about technology, programming,
            Artificial Intelligence and building innovative projects.

        </p>

    </section>



    <!-- Skills -->

    <section class="section" id="skills">

        <h2>My Skills</h2>

        <div class="cards">


            <div class="card">

                <h3>Java</h3>

                <p>
                    Object-Oriented Programming,
                    Data Structures and Algorithms.
                </p>

            </div>



            <div class="card">

                <h3>Web Development</h3>

                <p>
                    HTML, CSS, JavaScript and
                    JSP-based web applications.
                </p>

            </div>



            <div class="card">

                <h3>AI & ML</h3>

                <p>
                    Machine Learning,
                    Deep Learning and AI projects.
                </p>

            </div>



            <div class="card">

                <h3>Database</h3>

                <p>
                    Database management and
                    backend application development.
                </p>

            </div>


        </div>

    </section>



    <!-- Projects -->

    <section class="section" id="projects">

        <h2>My Projects</h2>

        <div class="projects">


            <div class="project">

                <h3>Instagram Clone</h3>

                <p>

                    A social media application developed
                    using modern web technologies with
                    frontend and backend integration.

                </p>

            </div>



            <div class="project">

                <h3>Marine Debris Detection</h3>

                <p>

                    An AI-based project for detecting
                    marine debris from underwater images
                    using computer vision techniques.

                </p>

            </div>



            <div class="project">

                <h3>AI in Drug Discovery</h3>

                <p>

                    <strong>Macro-Equivariant Diffusion</strong>
                    for generating novel molecular structures
                    for drug discovery using AI and diffusion
                    models.

                </p>

            </div>


        </div>

    </section>



    <!-- Contact -->

    <section class="section" id="contact">

        <h2>Contact Me</h2>

        <div class="contact-box">


            <p>

                <strong>Name:</strong>
                Gopu Varshini

            </p>


            <p>

                <strong>Course:</strong>
                B.Tech CSE (AI & ML)

            </p>


            <p>

                <strong>Email:</strong>
                varshinigopu14@gmail.com

            </p>


            <p>

                Feel free to connect with me!

            </p>


        </div>

    </section>



    <!-- Footer -->

    <footer>

        <p>

            © 2026 Gopu Varshini | B.Tech CSE (AI & ML)

        </p>

    </footer>


</body>

</html>