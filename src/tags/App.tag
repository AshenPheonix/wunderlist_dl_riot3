<App>
    
    <section>
        <List tasks={tasks}/>
    </section>
    <section class="drawer">
        {state}
    </section>

    <script>

    </script>
    <style>
        section{
            width:500px;
            height:500px;
            margin:auto;
            border: black 1px solid;
            border-radius:10px 0 0 0;
        }
        section.drawer{
            height:0;
            overflow:hidden;
        }
    </style>
</App>