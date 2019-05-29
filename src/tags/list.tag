<List>
    
    <ListItem if={opts.tasks} each={opts.tasks} taskName={this}/>
    <h1 if={!opts.tasks || opts.tasks.length==0}>
        Nothing to display
    </h1>
    <script>
        this.on('mount',()=>{
            console.log(this.opts)
        })
    </script>
    
    <style>
        section{
            border:1px black solid;
        }
        
    </style>
</List>