# gail-transcribe
Transcribes interview audio files using Google Speech-to-Text

### Instructions:
Within terminal

1. `git clone https://github.com/cygao/gail-transcribe/`

2. `cd gail-transcribe`

3. `export API_KEY=[your api key here]`
Using whatever your API key is

4. `nano request.json`
Replace audio:uri with the path to your audio file
'
{
  "config": {
      "encoding":"LINEAR16",
      "enableAutomaticPunctuation": true,
      "language_code": "en-US"
  },
  "audio": {
      "uri":"gs://path/to/file"
  }
}
'
5. `curl -s -X POST -H "Content-Type: application/json" --data-binary @request.json "https://speech.googleapis.com/v1beta1/speech:longrunningrecognize?key=${API_KEY}"`

It should spit a 'Name' back at you

6. `curl "https://speech.googleapis.com/v1/operations/your-operation-name?key=${API_KEY}"`
Using the provided name in the last step


You’re done! This will spit out a .json file with the transcription. Cool!
