package com.umeng.analytics.pro;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class ba {

    /* renamed from: a, reason: collision with root package name */
    public static Handler f48766a = null;

    /* renamed from: b, reason: collision with root package name */
    public static final int f48767b = 101;

    /* renamed from: c, reason: collision with root package name */
    private static HandlerThread f48768c = null;

    /* renamed from: d, reason: collision with root package name */
    private static HashMap<Integer, a> f48769d = null;

    /* renamed from: e, reason: collision with root package name */
    private static final int f48770e = 256;

    public interface a {
        void a(Object obj, int i2);
    }

    private ba() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Message message) {
        int i2 = message.arg1;
        Object obj = message.obj;
        Integer numValueOf = Integer.valueOf(i2 / 100);
        HashMap<Integer, a> map = f48769d;
        if (map == null) {
            return;
        }
        a aVar = map.containsKey(numValueOf) ? f48769d.get(numValueOf) : null;
        if (aVar != null) {
            aVar.a(obj, i2);
        }
    }

    public static void a(Context context, int i2, int i3, a aVar, Object obj, long j2) {
        if (context == null || aVar == null) {
            return;
        }
        if (f48769d == null) {
            f48769d = new HashMap<>();
        }
        Integer numValueOf = Integer.valueOf(i3 / 100);
        if (!f48769d.containsKey(numValueOf)) {
            f48769d.put(numValueOf, aVar);
        }
        if (f48768c == null || f48766a == null) {
            a();
        }
        try {
            Handler handler = f48766a;
            if (handler != null) {
                Message messageObtainMessage = handler.obtainMessage();
                messageObtainMessage.what = i2;
                messageObtainMessage.arg1 = i3;
                messageObtainMessage.obj = obj;
                f48766a.sendMessageDelayed(messageObtainMessage, j2);
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(Context context, int i2, a aVar, Object obj) {
        a(context, 256, i2, aVar, obj, 0L);
    }

    public static void a(Context context, int i2, a aVar, Object obj, long j2) {
        a(context, 256, i2, aVar, obj, j2);
    }

    private static synchronized void a() {
        try {
            if (f48768c == null) {
                HandlerThread handlerThread = new HandlerThread("ck_dispatch");
                f48768c = handlerThread;
                handlerThread.start();
                if (f48766a == null) {
                    f48766a = new Handler(f48768c.getLooper()) { // from class: com.umeng.analytics.pro.ba.1
                        @Override // android.os.Handler
                        public void handleMessage(Message message) {
                            if (message.what != 256) {
                                return;
                            }
                            ba.b(message);
                        }
                    };
                }
            }
        } catch (Throwable unused) {
        }
    }
}
