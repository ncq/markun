$ ->
  $('#markdown_content').keyup ->
    $.ajax
      url: '/markdowns/preview_api'
      type: 'POST'
      data:
        markdown:
          content: $(this).val()
      success: (data) ->
        eval data
      error: ->
        console.log 'error'
