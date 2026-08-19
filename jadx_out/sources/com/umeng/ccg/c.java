package com.umeng.ccg;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: A, reason: collision with root package name */
    public static final int f49781A = 316;

    /* renamed from: B, reason: collision with root package name */
    public static final int f49782B = 401;

    /* renamed from: C, reason: collision with root package name */
    public static final int f49783C = 402;

    /* renamed from: D, reason: collision with root package name */
    private static HandlerThread f49784D = null;

    /* renamed from: E, reason: collision with root package name */
    private static HashMap<Integer, a> f49785E = null;

    /* renamed from: F, reason: collision with root package name */
    private static final int f49786F = 256;

    /* renamed from: a, reason: collision with root package name */
    public static Handler f49787a = null;

    /* renamed from: b, reason: collision with root package name */
    public static final int f49788b = 101;

    /* renamed from: c, reason: collision with root package name */
    public static final int f49789c = 102;

    /* renamed from: d, reason: collision with root package name */
    public static final int f49790d = 103;

    /* renamed from: e, reason: collision with root package name */
    public static final int f49791e = 104;

    /* renamed from: f, reason: collision with root package name */
    public static final int f49792f = 105;

    /* renamed from: g, reason: collision with root package name */
    public static final int f49793g = 106;

    /* renamed from: h, reason: collision with root package name */
    public static final int f49794h = 107;

    /* renamed from: i, reason: collision with root package name */
    public static final int f49795i = 0;

    /* renamed from: j, reason: collision with root package name */
    public static final int f49796j = 1;

    /* renamed from: k, reason: collision with root package name */
    public static final int f49797k = 2;

    /* renamed from: l, reason: collision with root package name */
    public static final int f49798l = 201;

    /* renamed from: m, reason: collision with root package name */
    public static final int f49799m = 202;

    /* renamed from: n, reason: collision with root package name */
    public static final int f49800n = 203;

    /* renamed from: o, reason: collision with root package name */
    public static final int f49801o = 204;

    /* renamed from: p, reason: collision with root package name */
    public static final int f49802p = 301;

    /* renamed from: q, reason: collision with root package name */
    public static final int f49803q = 302;

    /* renamed from: r, reason: collision with root package name */
    public static final int f49804r = 303;

    /* renamed from: s, reason: collision with root package name */
    public static final int f49805s = 304;

    /* renamed from: t, reason: collision with root package name */
    public static final int f49806t = 305;

    /* renamed from: u, reason: collision with root package name */
    public static final int f49807u = 310;

    /* renamed from: v, reason: collision with root package name */
    public static final int f49808v = 311;

    /* renamed from: w, reason: collision with root package name */
    public static final int f49809w = 312;

    /* renamed from: x, reason: collision with root package name */
    public static final int f49810x = 313;

    /* renamed from: y, reason: collision with root package name */
    public static final int f49811y = 314;

    /* renamed from: z, reason: collision with root package name */
    public static final int f49812z = 315;

    public interface a {
        void a(Object obj, int i2);
    }

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Message message) {
        int i2 = message.arg1;
        Object obj = message.obj;
        Integer numValueOf = Integer.valueOf(i2 / 100);
        HashMap<Integer, a> map = f49785E;
        if (map == null) {
            return;
        }
        a aVar = map.containsKey(numValueOf) ? f49785E.get(numValueOf) : null;
        if (aVar != null) {
            aVar.a(obj, i2);
        }
    }

    public static void a(Context context, int i2, int i3, a aVar, Object obj, long j2) {
        if (context == null || aVar == null) {
            return;
        }
        if (f49785E == null) {
            f49785E = new HashMap<>();
        }
        Integer numValueOf = Integer.valueOf(i3 / 100);
        if (!f49785E.containsKey(numValueOf)) {
            f49785E.put(numValueOf, aVar);
        }
        if (f49784D == null || f49787a == null) {
            a();
        }
        try {
            Handler handler = f49787a;
            if (handler != null) {
                Message messageObtainMessage = handler.obtainMessage();
                messageObtainMessage.what = i2;
                messageObtainMessage.arg1 = i3;
                messageObtainMessage.obj = obj;
                f49787a.sendMessageDelayed(messageObtainMessage, j2);
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
            if (f49784D == null) {
                HandlerThread handlerThread = new HandlerThread("ccg_dispatch");
                f49784D = handlerThread;
                handlerThread.start();
                if (f49787a == null) {
                    f49787a = new Handler(f49784D.getLooper()) { // from class: com.umeng.ccg.c.1
                        @Override // android.os.Handler
                        public void handleMessage(Message message) {
                            if (message.what != 256) {
                                return;
                            }
                            c.b(message);
                        }
                    };
                }
            }
        } catch (Throwable unused) {
        }
    }
}
