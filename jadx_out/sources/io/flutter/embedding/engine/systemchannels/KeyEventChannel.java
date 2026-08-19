package io.flutter.embedding.engine.systemchannels;

import android.view.KeyEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.sigmob.sdk.base.n;
import io.flutter.Log;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.JSONMessageCodec;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class KeyEventChannel {
    private static final String TAG = "KeyEventChannel";

    @NonNull
    public final BasicMessageChannel<Object> channel;

    public interface EventResponseHandler {
        void onFrameworkResponse(boolean z2);
    }

    public static class FlutterKeyEvent {

        @Nullable
        public final Character complexCharacter;
        public final KeyEvent event;

        public FlutterKeyEvent(@NonNull KeyEvent keyEvent) {
            this(keyEvent, null);
        }

        public FlutterKeyEvent(@NonNull KeyEvent keyEvent, @Nullable Character ch) {
            this.event = keyEvent;
            this.complexCharacter = ch;
        }
    }

    public KeyEventChannel(@NonNull BinaryMessenger binaryMessenger) {
        this.channel = new BasicMessageChannel<>(binaryMessenger, "flutter/keyevent", JSONMessageCodec.INSTANCE);
    }

    public static /* synthetic */ void a(EventResponseHandler eventResponseHandler, Object obj) throws JSONException {
        boolean z2 = false;
        if (obj != null) {
            try {
                z2 = ((JSONObject) obj).getBoolean("handled");
            } catch (JSONException e2) {
                Log.e(TAG, "Unable to unpack JSON message: " + e2);
            }
        }
        eventResponseHandler.onFrameworkResponse(z2);
    }

    private static BasicMessageChannel.Reply<Object> createReplyHandler(@NonNull final EventResponseHandler eventResponseHandler) {
        return new BasicMessageChannel.Reply() { // from class: io.flutter.embedding.engine.systemchannels.e
            @Override // io.flutter.plugin.common.BasicMessageChannel.Reply
            public final void reply(Object obj) throws JSONException {
                KeyEventChannel.a(eventResponseHandler, obj);
            }
        };
    }

    private Map<String, Object> encodeKeyEvent(@NonNull FlutterKeyEvent flutterKeyEvent, boolean z2) {
        HashMap map = new HashMap();
        map.put("type", z2 ? "keyup" : "keydown");
        map.put("keymap", "android");
        map.put("flags", Integer.valueOf(flutterKeyEvent.event.getFlags()));
        map.put("plainCodePoint", Integer.valueOf(flutterKeyEvent.event.getUnicodeChar(0)));
        map.put("codePoint", Integer.valueOf(flutterKeyEvent.event.getUnicodeChar()));
        map.put("keyCode", Integer.valueOf(flutterKeyEvent.event.getKeyCode()));
        map.put("scanCode", Integer.valueOf(flutterKeyEvent.event.getScanCode()));
        map.put("metaState", Integer.valueOf(flutterKeyEvent.event.getMetaState()));
        Character ch = flutterKeyEvent.complexCharacter;
        if (ch != null) {
            map.put("character", ch.toString());
        }
        map.put(n.f36449l, Integer.valueOf(flutterKeyEvent.event.getSource()));
        map.put("deviceId", Integer.valueOf(flutterKeyEvent.event.getDeviceId()));
        map.put("repeatCount", Integer.valueOf(flutterKeyEvent.event.getRepeatCount()));
        return map;
    }

    public void sendFlutterKeyEvent(@NonNull FlutterKeyEvent flutterKeyEvent, boolean z2, @NonNull EventResponseHandler eventResponseHandler) {
        this.channel.send(encodeKeyEvent(flutterKeyEvent, z2), createReplyHandler(eventResponseHandler));
    }
}
