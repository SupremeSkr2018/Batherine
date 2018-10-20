const Koa = require('koa')
const app = new Koa()
const views = require('koa-views')
const json = require('koa-json')
const onerror = require('koa-onerror')
const bodyparser = require('koa-bodyparser')
const logger = require('koa-logger')


const index = require('./routes/index')
const users = require('./routes/users')
const singer=require('./routes/singer')
const trend=require('./routes/trend')
const album=require('./routes/album')
const myMusic=require('./routes/myMusic')
const work=require('./routes/work')
const cors=require('koa2-cors')

// error handler
onerror(app)

// middlewares
app.use(cors({
    origin: function (ctx) {
        return 'http://localhost:8080'; //这样就能只允许 http://localhost:8080 这个域名的请求了
    },
    exposeHeaders: ['WWW-Authenticate', 'Server-Authorization'],
    maxAge: 5,
    credentials: true,
    allowMethods: ['GET', 'POST', 'DELETE'],
    allowHeaders: ['Content-Type', 'Authorization', 'Accept'],
}))

app.use(bodyparser({
  enableTypes:['json', 'form', 'text']
}))
app.use(json())
app.use(logger())
app.use(require('koa-static')(__dirname + '/public'))

app.use(views(__dirname + '/views', {
  extension: 'pug'
}))

// logger
app.use(async (ctx, next) => {
  const start = new Date()
  await next()
  const ms = new Date() - start
  console.log(`${ctx.method} ${ctx.url} - ${ms}ms`)
})

// routes
app.use(index.routes(), index.allowedMethods())
app.use(users.routes(), users.allowedMethods())
app.use(singer.routes(),singer.allowedMethods())
app.use(trend.routes(),trend.allowedMethods())
app.use(album.routes(),album.allowedMethods())
app.use(myMusic.routes(),myMusic.allowedMethods())
app.use(work.routes(),work.allowedMethods())
// error-handling
app.on('error', (err, ctx) => {
  console.error('server error', err, ctx)
});

module.exports = app
