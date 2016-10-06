# Phkite

This is not an another PHP Project, it's me who likes kites.

To start your new PhKite app:
  * Install deps with `mix deps.get`
  * Create database and migrate data `mix ecto.setup`
  * Install NPM packages `npm install`
  * Just start this shit 💩

What it can do (or will do):
  * ✅ Grab social link and return download link (twitter video, instagram, youtube)
  * ✅ Convert media from link/file to format (twitter `gif` to actual gif, 4chan webm to mp4/gif)
  * ✅ Authorize to save and share results (Twitter/Facebook/Telegram)
  * ✅ Present actual API for this (get, convert, share)
  * ✅ Telegram Bot (Maybe)

#### Grabbing social links

API Endpoint:

````bash
curl -x POST `/api/grab` -d '{"link": "youtube"}'
````
Response:
````javascript
{"links": link1,link2,...}
````

#### Converting

API Endpoint:

**Link**
````bash
curl -x POST '/api/convert' -d `{"link": "linktotweet", "format": "mp4/gif"}`
````

**File**
````bash
curl -x POST '/api/convert' -d `{"file": true, "format": "mp4/gif"}` --data-binary "file"
````

Response:
````javascript
{"link": link}
````

#### Sharing

Word "Sharing" is implying that You have to authorize in app before uploading to Twitter/FB/Telegram.

And of course You have to know what You are uploading

API Endpoint:

````bash
curl -x POST '/api/share' -d `{"id": "result_id", "service": "twitter/facebook/telegram"}`
````
