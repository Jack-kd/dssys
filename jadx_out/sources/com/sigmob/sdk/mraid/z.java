package com.sigmob.sdk.mraid;

import android.os.Handler;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.AbstractC1285y;
import com.sigmob.sdk.base.common.C1282v;
import com.sigmob.sdk.base.views.C1295g;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes4.dex */
public class z {

    /* renamed from: a, reason: collision with root package name */
    static final int f38072a = 50;

    /* renamed from: b, reason: collision with root package name */
    static final long f38073b = 3000000;

    /* renamed from: d, reason: collision with root package name */
    private static final long f38075d = 3000000;

    /* renamed from: e, reason: collision with root package name */
    private static final Map<String, a> f38076e = Collections.synchronizedMap(new HashMap());

    /* renamed from: c, reason: collision with root package name */
    static final b f38074c = new b();

    /* renamed from: f, reason: collision with root package name */
    private static Handler f38077f = new Handler();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final C1295g f38078a;

        /* renamed from: b, reason: collision with root package name */
        private final WeakReference<AbstractC1285y> f38079b;

        /* renamed from: c, reason: collision with root package name */
        private final C1282v f38080c;

        /* renamed from: d, reason: collision with root package name */
        private final C1316h f38081d;

        public a(C1295g c1295g, AbstractC1285y abstractC1285y, C1282v c1282v, C1316h c1316h) {
            this.f38078a = c1295g;
            this.f38079b = new WeakReference<>(abstractC1285y);
            this.f38080c = c1282v;
            this.f38081d = c1316h;
        }

        public C1295g a() {
            return this.f38078a;
        }

        public WeakReference<AbstractC1285y> b() {
            return this.f38079b;
        }

        public C1282v c() {
            return this.f38080c;
        }

        public C1316h d() {
            return this.f38081d;
        }
    }

    public static class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.a();
        }
    }

    private z() {
    }

    public static a a(String str) {
        Preconditions.checkNotNull(str);
        return f38076e.remove(str);
    }

    @Deprecated
    public static void b() {
        f38076e.clear();
        f38077f.removeCallbacks(f38074c);
    }

    @Deprecated
    public static Map<String, a> c() {
        return f38076e;
    }

    public static synchronized void a() {
        try {
            Iterator<Map.Entry<String, a>> it = f38076e.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, a> next = it.next();
                if (next.getValue().b().get() == null) {
                    next.getValue().c().a();
                    it.remove();
                }
            }
            if (f38076e.isEmpty()) {
                return;
            }
            Handler handler = f38077f;
            b bVar = f38074c;
            handler.removeCallbacks(bVar);
            f38077f.postDelayed(bVar, 3000000L);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Deprecated
    public static void a(Handler handler) {
        f38077f = handler;
    }

    public static void a(String str, C1317i c1317i, C1295g c1295g, C1282v c1282v, C1316h c1316h) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(c1317i);
        Preconditions.checkNotNull(c1295g);
        a();
        Map<String, a> map = f38076e;
        if (map.size() >= 50) {
            SigmobLog.w("Unable to cache web view. Please destroy some via #destroy() and try again.");
        } else {
            map.put(str, new a(c1295g, c1317i, c1282v, c1316h));
        }
    }
}
