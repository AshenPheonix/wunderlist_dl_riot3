import riot from "riot";

export default{
    tasks:[
        {
            name:'Show off',
            date:new Date(),
            done:false
        },{
            name:"More Showing Off",
            date:new Date(),
            done:false
        }
    ],
    watcher:riot.observable()
}