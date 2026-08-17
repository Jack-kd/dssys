package androidx.core.os;

import android.os.Message;

/* loaded from: classes.dex */
public final class MessageCompat {
    private MessageCompat() {
    }

    public static boolean isAsynchronous(Message message) {
        return message.isAsynchronous();
    }

    public static void setAsynchronous(Message message, boolean z2) {
        message.setAsynchronous(z2);
    }
}
