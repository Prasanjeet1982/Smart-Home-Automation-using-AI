import speech_recognition as sr

def listen_for_commands():
    try:
        recognizer = sr.Recognizer()
        microphone = sr.Microphone()

        with microphone as source:
            print("Listening for commands...")
            audio = recognizer.listen(source)

        command = recognizer.recognize_google(audio)
        print("You said:", command)
        return command

    except sr.UnknownValueError:
        print("Could not understand audio")
        return None
    except sr.RequestError:
        print("Speech recognition request failed")
        return None
