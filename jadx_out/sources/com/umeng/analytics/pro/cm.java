package com.umeng.analytics.pro;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class cm {

    /* renamed from: a, reason: collision with root package name */
    public static Handler f49066a = null;

    /* renamed from: b, reason: collision with root package name */
    public static final int f49067b = 101;

    /* renamed from: c, reason: collision with root package name */
    public static final int f49068c = 102;

    /* renamed from: d, reason: collision with root package name */
    public static final int f49069d = 103;

    /* renamed from: e, reason: collision with root package name */
    public static final int f49070e = 104;

    /* renamed from: f, reason: collision with root package name */
    public static final int f49071f = 105;

    /* renamed from: g, reason: collision with root package name */
    public static final int f49072g = 106;

    /* renamed from: h, reason: collision with root package name */
    public static final int f49073h = 107;

    /* renamed from: i, reason: collision with root package name */
    public static final int f49074i = 0;

    /* renamed from: j, reason: collision with root package name */
    public static final int f49075j = 1;

    /* renamed from: k, reason: collision with root package name */
    public static final int f49076k = 2;

    /* renamed from: l, reason: collision with root package name */
    public static final int f49077l = 201;

    /* renamed from: m, reason: collision with root package name */
    public static final int f49078m = 202;

    /* renamed from: n, reason: collision with root package name */
    public static final int f49079n = 203;

    /* renamed from: o, reason: collision with root package name */
    public static final int f49080o = 204;

    /* renamed from: p, reason: collision with root package name */
    public static final int f49081p = 305;

    /* renamed from: q, reason: collision with root package name */
    public static final int f49082q = 306;

    /* renamed from: r, reason: collision with root package name */
    private static HandlerThread f49083r = null;

    /* renamed from: s, reason: collision with root package name */
    private static HashMap<Integer, a> f49084s = null;

    /* renamed from: t, reason: collision with root package name */
    private static final int f49085t = 256;

    public interface a {
        void a(Object obj, int i2);
    }

    private cm() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Message message) {
        int i2 = message.arg1;
        Object obj = message.obj;
        Integer numValueOf = Integer.valueOf(i2 / 100);
        HashMap<Integer, a> map = f49084s;
        if (map == null) {
            return;
        }
        a aVar = map.containsKey(numValueOf) ? f49084s.get(numValueOf) : null;
        if (aVar != null) {
            aVar.a(obj, i2);
        }
    }

    public static void a(Context context, int i2, int i3, a aVar, Object obj, long j2) {
        if (context == null || aVar == null) {
            return;
        }
        if (f49084s == null) {
            f49084s = new HashMap<>();
        }
        Integer numValueOf = Integer.valueOf(i3 / 100);
        if (!f49084s.containsKey(numValueOf)) {
            f49084s.put(numValueOf, aVar);
        }
        if (f49083r == null || f49066a == null) {
            a();
        }
        try {
            Handler handler = f49066a;
            if (handler != null) {
                Message messageObtainMessage = handler.obtainMessage();
                messageObtainMessage.what = i2;
                messageObtainMessage.arg1 = i3;
                messageObtainMessage.obj = obj;
                f49066a.sendMessageDelayed(messageObtainMessage, j2);
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
            if (f49083r == null) {
                HandlerThread handlerThread = new HandlerThread("ncc_dispatch");
                f49083r = handlerThread;
                handlerThread.start();
                if (f49066a == null) {
                    f49066a = new Handler(f49083r.getLooper()) { // from class: com.umeng.analytics.pro.cm.1
                        @Override // android.os.Handler
                        public void handleMessage(Message message) {
                            if (message.what != 256) {
                                return;
                            }
                            cm.b(message);
                        }
                    };
                }
            }
        } catch (Throwable unused) {
        }
    }
}
