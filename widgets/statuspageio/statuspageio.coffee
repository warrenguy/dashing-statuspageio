class Dashing.Statuspageio extends Dashing.Widget

  onData: (data) ->
    if data.status
      if data.status == "green"
          $(@node).css( "background-color", "#8DD15A");
      if data.status == "yellow"
          $(@node).css( "background-color", "#D1CD5A");
      if data.status == "red"
          $(@node).css( "background-color", "#D15A5A");
