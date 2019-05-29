<App>
    
    <section>
        <List tasks={tasks}/>    
    </section>

    <script>
        import obs from '../data/tasks'
        this.on('mount',()=>{
            this.update({tasks:obs.tasks})
        })

    </script>
    <style>
        section{
            width:500px;
            height:500px;
            margin:auto;
            border: black 1px solid
        }
    </style>
</App>