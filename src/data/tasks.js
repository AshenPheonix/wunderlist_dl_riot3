import riot from "riot";

export default{
    tasks:[
        {
            name:'Show off',
            date:new Date(),
            done:false,
            id:1
        },{
            name:"More Showing Off",
            date:new Date(),
            done:false,
            id:2
        }
    ],
    watcher:riot.observable()
}