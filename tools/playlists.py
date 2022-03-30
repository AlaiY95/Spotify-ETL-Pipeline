import spotipy
from dotenv import load_dotenv

load_dotenv()

spotify = spotipy.Spotify(client_credentials_manager=spotipy.oauth2.SpotifyClientCredentials())

# Takes in a URI as a variable
def get_artists_from_playlist(playlist_uri):
    '''
    :param playlist_uri: Playlist to analyse
    :return: A dictionary(artist uri : artist name) of all primary artists in a playlist.
    '''
    artists = {}

    # Goes through the playlist_tracks from the spotipy object
    playlist_tracks = spotify.playlist_tracks(playlist_id=playlist_uri)

    # For every song that is a track
    for song in playlist_tracks['items']:
        if song['track']:
            # Pulls out the 0th artist from the track
            print(song['track']['artists'][0]['name'])
            artists[song['track']['artists'][0]['uri']] = song['track']['artists'][0]['name']
    return artists
