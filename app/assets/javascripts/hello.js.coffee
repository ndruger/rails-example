# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class Friend extends Backbone.Model
  neko: "neko"

class FiendC extends Backbone.Collection
  model: Friend
  url: '/fiend'

$().ready(=>
  console.log('neko2')
  friendC = new FriendC();
  friendC.fetch(
    success: =>
      console.log('success')
    error: =>
      console.log('error')
  )
)
