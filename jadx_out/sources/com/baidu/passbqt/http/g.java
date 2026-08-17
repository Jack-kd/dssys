package com.baidu.passbqt.http;

import android.content.Context;
import android.text.TextUtils;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import u.AbstractC1777a;

/* loaded from: classes2.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    public static final int f11874a;

    /* renamed from: b, reason: collision with root package name */
    public static final int f11875b;

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicInteger f11876c;

    /* renamed from: d, reason: collision with root package name */
    public static final ThreadFactory f11877d;

    /* renamed from: e, reason: collision with root package name */
    public static final ThreadPoolExecutor f11878e;

    /* renamed from: f, reason: collision with root package name */
    public static final g f11879f;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f11874a = iAvailableProcessors;
        int i2 = iAvailableProcessors > 64 ? iAvailableProcessors / 2 : 32;
        f11875b = i2;
        f11876c = new AtomicInteger();
        f fVar = new f();
        f11877d = fVar;
        f11879f = new g();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i2, i2, 60L, TimeUnit.SECONDS, new PriorityBlockingQueue(), fVar);
        f11878e = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    public static g a() {
        return f11879f;
    }

    public h b(Context context, j jVar, c cVar) {
        try {
            e(context, jVar);
            return d(Method.GET, context, jVar, cVar);
        } catch (Exception e2) {
            AbstractC1777a.b("PASSPORT", "get ex=" + e2.getMessage());
            if (cVar == null) {
                return null;
            }
            cVar.j(e2, e2.getMessage());
            return null;
        }
    }

    public final h c(Method method, Context context, j jVar, b bVar, c cVar) {
        h hVar = new h(method, context, jVar, f11876c.incrementAndGet(), bVar, cVar);
        f11878e.execute(hVar);
        return hVar;
    }

    public final h d(Method method, Context context, j jVar, c cVar) {
        return c(method, context, jVar, null, cVar);
    }

    public final void e(Context context, j jVar) {
        if (context == null) {
            throw new IllegalArgumentException("Invalid context argument");
        }
        if (jVar == null || TextUtils.isEmpty(jVar.f11887a)) {
            throw new IllegalArgumentException("paramDTO can't be null or paramDTO.url can't be empty");
        }
    }
}
