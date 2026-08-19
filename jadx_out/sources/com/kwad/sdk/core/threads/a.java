package com.kwad.sdk.core.threads;

import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public final class a {
    private static Map<String, WeakReference<C0616a>> aYp = new ConcurrentHashMap();

    /* renamed from: com.kwad.sdk.core.threads.a$a, reason: collision with other inner class name */
    public static class C0616a {
        private HandlerThread aYq;
        private Handler jk;

        public C0616a(String str) {
            String str2;
            if (TextUtils.isEmpty(str)) {
                str2 = "ksad-HT";
            } else {
                str2 = "ksad-" + str;
            }
            HandlerThread handlerThread = new HandlerThread(str2);
            this.aYq = handlerThread;
            handlerThread.start();
            this.jk = new Handler(this.aYq.getLooper());
        }

        public final Handler getHandler() {
            return this.jk;
        }
    }

    public static synchronized Handler NR() {
        return fp("reportHT").getHandler();
    }

    @NonNull
    private static C0616a fp(String str) {
        WeakReference<C0616a> weakReference = aYp.get(str);
        if (weakReference != null && weakReference.get() != null) {
            return weakReference.get();
        }
        C0616a c0616a = new C0616a(str);
        aYp.put(str, new WeakReference<>(c0616a));
        return c0616a;
    }
}
