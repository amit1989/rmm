module ApplicationHelper

  def date_diff_valid(event)
#    debugger
    d1 = Date.today.strftime("%d/%m/%Y")
    d2 = event.created_at.strftime("%d/%m/%Y")

    if (Date.parse(d1).mjd - Date.parse(d2).mjd )> 30
      return false
    end
    return true
  end
end
