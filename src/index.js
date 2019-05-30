import riot from 'riot';
import route from 'riot-route/lib/tag'
import 'riot-hot-reload'
import './tags/App.tag'
import './tags/list.tag'
import './tags/list-item.tag'
import obs from './data/tasks'

riot.mixin(obs)
riot.mount('App')