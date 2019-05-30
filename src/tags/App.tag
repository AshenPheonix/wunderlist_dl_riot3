<App>
    
    <section>
        <List tasks={tasks}/>
    </section>
    <section class="drawer">
        {state}
    </section>

    <script>
        this.watcher.on('finishTask',(e)=>{
            let temp=this.tasks.map(i=>(i.id===e)?{name:i.name,id:i.id,date:i.date,done:!i.done}:i)
            this.update({tasks:temp})
        })
    </script>
    <style>
        section{
            width:100%;
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