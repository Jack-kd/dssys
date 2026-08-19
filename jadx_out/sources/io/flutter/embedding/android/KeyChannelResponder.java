package io.flutter.embedding.android;

import android.view.KeyEvent;
import androidx.annotation.NonNull;
import io.flutter.embedding.android.KeyboardManager;
import io.flutter.embedding.engine.systemchannels.KeyEventChannel;
import java.util.Objects;

/* loaded from: classes5.dex */
public class KeyChannelResponder implements KeyboardManager.Responder {
    private static final String TAG = "KeyChannelResponder";

    @NonNull
    private final KeyboardManager.CharacterCombiner characterCombiner = new KeyboardManager.CharacterCombiner();

    @NonNull
    private final KeyEventChannel keyEventChannel;

    public KeyChannelResponder(@NonNull KeyEventChannel keyEventChannel) {
        this.keyEventChannel = keyEventChannel;
    }

    @Override // io.flutter.embedding.android.KeyboardManager.Responder
    public void handleEvent(@NonNull KeyEvent keyEvent, @NonNull final KeyboardManager.Responder.OnKeyEventHandledCallback onKeyEventHandledCallback) {
        int action = keyEvent.getAction();
        if (action != 0 && action != 1) {
            onKeyEventHandledCallback.onKeyEventHandled(false);
            return;
        }
        KeyEventChannel.FlutterKeyEvent flutterKeyEvent = new KeyEventChannel.FlutterKeyEvent(keyEvent, this.characterCombiner.applyCombiningCharacterToBaseCharacter(keyEvent.getUnicodeChar()));
        boolean z2 = action != 0;
        KeyEventChannel keyEventChannel = this.keyEventChannel;
        Objects.requireNonNull(onKeyEventHandledCallback);
        keyEventChannel.sendFlutterKeyEvent(flutterKeyEvent, z2, new KeyEventChannel.EventResponseHandler() { // from class: io.flutter.embedding.android.p
            @Override // io.flutter.embedding.engine.systemchannels.KeyEventChannel.EventResponseHandler
            public final void onFrameworkResponse(boolean z3) {
                onKeyEventHandledCallback.onKeyEventHandled(z3);
            }
        });
    }
}
