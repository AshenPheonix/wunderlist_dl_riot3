let path=require('path')
let webpack=require('webpack')
const HTMLWebpackPlugin=require('html-webpack-plugin')
const CleanWebpack=require('clean-webpack-plugin')

module.exports={
    mode:'development',
    plugins:[
        new HTMLWebpackPlugin({
            title:'Wunderlist 2.0',
            template:'src/index.html'
        }),
        new CleanWebpack()
    ],
    module:{
        rules:[
            {
                test:/\.tag$/,
                exclude:/node_modules/,
                use:[{
                    loader:'riot-tag-loader',
                    options:{
                        hot:true
                    }
                }]
            },{
                test:/\.js/,
                exclude:/node_modules/,
                use:{
                    loader:'babel-loader',
                    options:{
                        presets:['@babel/preset-env']
                    }
                }
            }
        ]
    },
    entry:'./src/index.js',
    output:{
        path:path.resolve(__dirname,'dist'),
        filename:'main.js'
    },
    devtool:'inline-source-map',
    devServer:{
        contentBase:path.join(__dirname,'dist'),
        compress:true,
        filename:'main.js'
    }
}