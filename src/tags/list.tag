<List>
    
    <ListItem each={opts.tasks} taskdata={this}/>
    <h1 if={!opts.tasks || opts.tasks.length==0}>
        Nothing to display
    </h1>

    <script>
        this.on('mount',()=>{
            console.log(this.opts.tasks)
            this.update()
        })
    </script>
    
    <style>
        section{
            border:1px black solid;
        }
        
    </style>
</List>