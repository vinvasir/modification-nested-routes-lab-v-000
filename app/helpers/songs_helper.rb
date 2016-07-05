module SongsHelper
  def artist_select(artist_id, song)
    if song.artist.nil?
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name) 
    else
      hidden_field_tag "song[artist_id]", artist_id
    end
  end
end
