import riot from "riot";

export default riot.observable({
    tasks:[
        {
            name:'Show off',
            date:new Date(),
            done:false
        }
    ]
})