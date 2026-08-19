package com.anythink.core.common.u;

import android.content.Context;
import android.os.SystemClock;
import android.view.MotionEvent;
import com.anythink.core.common.h.bx;
import com.anythink.core.common.h.n;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f7688a = "a";

    /* renamed from: b, reason: collision with root package name */
    private static final long f7689b = 500;

    /* renamed from: c, reason: collision with root package name */
    private static final Map<String, Long> f7690c = new WeakHashMap();

    public static void a(Context context, MotionEvent motionEvent, bx bxVar) {
        if (motionEvent == null || bxVar == null || context == null) {
            return;
        }
        try {
            if (motionEvent.getAction() == 0 && (bxVar instanceof n)) {
                String strA = ((n) bxVar).A();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                Map<String, Long> map = f7690c;
                Long l2 = map.get(strA);
                if (l2 == null || jElapsedRealtime - l2.longValue() >= 500) {
                    map.put(strA, Long.valueOf(jElapsedRealtime));
                    com.anythink.core.common.v.c.a().b().b(bxVar);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static void a(String str) {
        try {
            f7690c.remove(str);
        } catch (Throwable unused) {
        }
    }
}
