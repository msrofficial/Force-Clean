<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Boost Tool</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            color: #333;
        }

        header {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
        }

        header h1 {
            margin: 0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .section-title {
            color: #333;
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        .content {
            margin-bottom: 20px;
        }

        pre {
            background-color: #282c34;
            color: #f1f1f1;
            padding: 10px;
            border-radius: 5px;
            font-size: 1rem;
            overflow-x: auto;
            white-space: pre-wrap;
            word-wrap: break-word;
        }

        a {
            color: #0091ea;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        footer {
            text-align: center;
            padding: 10px;
            background-color: #333;
            color: white;
        }

    </style>
</head>
<body>
    <header>
        <h1>Boost Tool</h1>
    </header>

    <div class="container">
        <section class="content">
            <h2 class="section-title">Developed by: <a href="https://github.com/msrofficial">MD Sakibur Rahman</a></h2>
            <p>GitHub: <a href="https://github.com/msrofficial">msrofficial</a></p>
            <p>Website: <a href="https://msrsakibur.netlify.app">msrsakibur.netlify.app</a></p>
        </section>

        <section class="content">
            <h2 class="section-title">What is the Boost Tool?</h2>
            <p>The <strong>Boost Tool</strong> is a Termux-based utility for <strong>rooted Android devices</strong>. It automates two key functions to enhance device performance:</p>
            <ul>
                <li><strong>Force-stop non-essential apps</strong> to free up RAM.</li>
                <li><strong>Clean cache</strong> for all installed apps to free up storage.</li>
            </ul>
        </section>

        <section class="content">
            <h2 class="section-title">Why Use This Tool?</h2>
            <ul>
                <li>Boosts phone performance by cleaning and stopping apps.</li>
                <li>Saves time with an easy-to-use one-word command (<code>boost</code>).</li>
                <li>Works on rooted devices and can be customized for advanced users.</li>
            </ul>
        </section>

        <section class="content">
            <h2 class="section-title">How to Set Up?</h2>
            <p>Follow the steps below to set up the Boost Tool:</p>
            <pre><code>git clone https://github.com/msrofficial/boost-tool.git
cd boost-tool</code></pre>
            <p>Then, run the installer:</p>
            <pre><code>bash install.sh</code></pre>
            <p>Follow the prompts to set up the <code>boost</code> command in Termux.</p>
        </section>

        <section class="content">
            <h2 class="section-title">How to Use It?</h2>
            <p>Once the setup is complete, just type <code>boost</code> in Termux and it will:</p>
            <ul>
                <li>Force-stop non-essential apps.</li>
                <li>Clean the cache for all apps.</li>
            </ul>
        </section>

        <footer>
            <p>&copy; 2025 MD Sakibur Rahman</p>
        </footer>
    </div>

</body>
</html>
