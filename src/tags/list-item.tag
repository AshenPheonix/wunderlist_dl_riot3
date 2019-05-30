<ListItem>
    <section class={completed:opts.taskdata.done}>
        <div class={task:true}>
            {opts.taskdata.name} 
        </div>
        <div class="buttons">
            <button onclick={kill} class="del">Delete Task</button>
            <button onclick={finish} class="fin">{(!done)?"Finish Task":"Not Done"}</button>
            <button onclick={edit} class="edit">Edit Task</button>
        </div>
    </section>

    <script>
        this.done=this.opts.taskdata.done
        edit(e){
            this.watcher.trigger('test')
        }
        finish(e){
            this.update({done:!this.done})
        }
        
    </script>

    <style>
        
        section{
            display:flex;
            justify-content:space-between;
            align-items:center;
            height:120px;
            color:white;
            background-color:black;
            border:2px lightgray ridge;
            box-sizing:border-box;
            border-radius:10px 0 0 10px;
            margin-bottom:.25rem;
        }
        .buttons{
            display:flex;
            flex-direction:column;
            width:110px;
            position:relative;
            box-sizing:border-box;
        }
        .task{
            font-family: 'Abril Fatface', cursive;
            font-size:20pt;
            padding-left:1rem;
        }
        button{
            height:38px;
            box-sizing:border-box;
            font-family: 'Abril Fatface', cursive;
            font-size:16pt;
        }
        .del{
            background-color:red;
        }
        .fin{
            background-color:green;
            color:white;
        }
        .edit{
            background-color:yellow;
        }
        .completed{
            background-color:green;
            color:white;
        }
    </style>
</ListItem>