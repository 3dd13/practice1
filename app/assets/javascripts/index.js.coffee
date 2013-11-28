$ ->
  pageBody = $("#content")

#add
  showPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET',
      dataType: 'json',
      success: (data) ->
        $("#content").html(templateFunc(data))

  $("section").on "click", "ul li span", (e) ->
    id = $(@).parent().data('id')
    showPage "/api/rares/#{id}", practice1.rareTemplate

  $("section").on "click", "#back-to-rares", (e) ->
    showPage "/api/rares/", practice1.raresTemplate

  showPage "/api/rares", practice1.raresTemplate

#create
  $("#submit_button").on "click", (e) ->
    rare_name = $("#new_rare_name").val()
    rare_family = $("#new_rare_family").val()
    longitude = $("#new_longitude").val()
    latitude = $("#new_latitude").val()
    $.ajax "/api/rares.json",
      type: 'POST'
      contentType: 'application/json'
      dataType: 'text'
      data: JSON.stringify({rare: {rare_name: rare_name, rare_family: rare_family, longitude: longitude, latitude: latitude}})
      success: (x) ->
        console.log("success")
        showPage '/api/rares', practice1.raresTemplate
#edit
  # $("#edit").on "click", (e) ->
  pageBody.on 'click', 'ul li button.edit', (e) ->
    id = $(@).parent().data('id')
    showPage "/api/rares/#{id}", practice1.editRareTemplate

  pageBody.on 'submit', 'form#rare-edit-form', (e) ->
    e.preventDefault()
    id = $(@).data('id')
    $.ajax "/api/rares/#{id}",
      type: 'PUT'
      data: $(@).serialize()
      dataType: 'text'
      success: (x) ->
        showPage '/api/rares', practice1.raresTemplate

#delete
  pageBody.on 'click', 'ul li button.del', (e) ->
    console.log("anything")
    id = $(@).parent().data('id')
    console.log(id)
    $.ajax "/api/rares/"+id,
      type: 'DELETE'
      dataType: 'text'
      success: ->
        console.log("We win!")
        showPage '/api/rares', practice1.raresTemplate

