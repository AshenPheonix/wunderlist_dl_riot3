<ListItem>
    <section>
        <div class="task">
            <input type="checkbox" ref="ItemCheck">: {this.opts.taskname} 
        </div>
        <div class="buttons">
            <button onclick={kill}>Delete Task</button>
            <button onclick={finish}>Finish Task</button>
            <button onclick={edit}>Edit Task</button>
        </div>
    </section>

    <script>
    </script>

    <style>
        section{
            display:flex;
            justify-content:space-between;
        }
    </style>
</ListItem>