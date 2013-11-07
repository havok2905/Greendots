def path_to page_name
  case page_name
  when /the homepage/
    root_path
  when /the beer page/
    beers_path
  when /the edit beer page for (".*")$/
          edit_beers_path(Beer.find($1))
  when /the view beer page for (".*")$/
          view_beers_path(Beer.find($1))
  else
    raise 'Cannot find the specified page'
  end
end 