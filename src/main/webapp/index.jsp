<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cyber Hacker Web App</title>

    <style>
        body {
            margin: 0;
            overflow: hidden;
            background: black;
            font-family: Consolas, monospace;
            color: #00ffea;
            text-align: center;
        }

        /* Matrix Background */
        canvas {
            position: fixed;
            top: 0;
            left: 0;
            z-index: -1;
        }

        .container {
            position: relative;
            top: 150px;
        }

        h1 {
            font-size: 48px;
            text-shadow: 0 0 15px #00ffe5, 0 0 25px #00ffe5;
            animation: blink 1.5s infinite;
        }

        @keyframes blink {
            0% { opacity: 1; }
            50% { opacity: 0.6; }
            100% { opacity: 1; }
        }

        p {
            font-size: 22px;
            color: #b8fff6;
            text-shadow: 0 0 8px #00ffe5;
        }

        .box {
            display: inline-block;
            margin-top: 20px;
            padding: 20px 30px;
            background: rgba(0, 255, 230, 0.1);
            border: 2px solid #00ffe5;
            border-radius: 10px;
            box-shadow: 0 0 12px #00ffe5;
        }
    </style>
</head>

<body>

    <!-- Matrix Background Canvas -->
    <canvas id="matrix"></canvas>

    <div class="container">
        <div class="box">
            <h1>CYBER WEB APP</h1>
            <p>⚡ Powered by Java · Docker · Tomcat · Jenkins</p>
            <p>✔ Deployment Successful</p>
        </div>
    </div>

    <script>
        // Matrix effect JavaScript
        const canvas = document.getElementById("matrix");
        const ctx = canvas.getContext("2d");

        canvas.height = window.innerHeight;
        canvas.width = window.innerWidth;

        const chars = "01ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        const matrix = chars.split("");

        const fontSize = 14;
        const columns = canvas.width / fontSize;

        const drops = [];
        for (let i = 0; i < columns; i++) drops[i] = 1;

        function draw() {
            ctx.fillStyle = "rgba(0, 0, 0, 0.05)";
            ctx.fillRect(0, 0, canvas.width, canvas.height);

            ctx.fillStyle = "#00ffea";
            ctx.font = fontSize + "px monospace";

            for (let i = 0; i < drops.length; i++) {
                const text = matrix[Math.floor(Math.random() * matrix.length)];
                ctx.fillText(text, i * fontSize, drops[i] * fontSize);

                if (drops[i] * fontSize > canvas.height && Math.random() > 0.95) {
                    drops[i] = 0;
                }
                drops[i]++;
            }
        }

        setInterval(draw, 35);
    </script>

</body>
</html>
