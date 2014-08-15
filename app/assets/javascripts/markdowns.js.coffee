$ ->
  post_preview_api = ->
    $.ajax
      url: '/markdowns/preview_api'
      type: 'POST'
      data:
        markdown:
          content: $('#markdown_content').val()
      success: (data) ->
        eval data
      error: ->
        console.log 'error'

  $('#markdown_content').keyup post_preview_api

  if $('#preview_box')[0]
    post_preview_api()


