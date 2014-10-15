# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class Friend extends Backbone.Model
  neko: "neko"
  move: (opts) =>
    url = this.url() + '/move'
    options = 
      url: url
      type: 'POST'
    _.extend(options, opts);
    (@sync || Backbone.sync).call(@, null, @, options);

class FriendC extends Backbone.Collection
  model: Friend
  url: '/friends'


$.ajaxPrefilter((options, originalOptions, xhr) ->
  debugger
)


friendC = undefined

test = ->
  f = friendC.first()
  f.set('neko', 'test')
  f.move()
  console.log(f)

$().ready(=>
  console.log('neko2')
  friendC = new FriendC();
  friendC.fetch(
    success: =>
      test()
    error: =>
      console.log('error')
  )
)
