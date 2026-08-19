package com.ubix.ssp.ad.e.a0.y.d;

import android.app.Instrumentation;
import android.content.Context;
import com.ubix.ssp.ad.e.a0.n;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.w.f;
import java.lang.reflect.Field;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static c f46506a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f46507b;

    /* renamed from: c, reason: collision with root package name */
    private final String f46508c = new String(n.a().a("YW5kcm9pZC5hcHAuQWN0aXZpdHlUaHJlYWQ="));

    /* renamed from: d, reason: collision with root package name */
    private final String f46509d = new String(n.a().a("c0N1cnJlbnRBY3Rpdml0eVRocmVhZA=="));

    /* renamed from: e, reason: collision with root package name */
    private final String f46510e = new String(n.a().a("bUluc3RydW1lbnRhdGlvbg=="));

    private c() {
    }

    public static c a() {
        if (f46506a == null) {
            f46506a = new c();
        }
        return f46506a;
    }

    public boolean b() {
        return this.f46507b;
    }

    public void a(Context context) throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, SecurityException, IllegalArgumentException {
        try {
            if (b()) {
                return;
            }
            Class<?> cls = Class.forName(this.f46508c);
            Field declaredField = cls.getDeclaredField(this.f46509d);
            declaredField.setAccessible(true);
            Object obj = declaredField.get(null);
            Field declaredField2 = cls.getDeclaredField(this.f46510e);
            declaredField2.setAccessible(true);
            declaredField2.set(obj, new b((Instrumentation) declaredField2.get(obj)));
            u.e("guard", "on");
            this.f46507b = true;
            f.a(context.getApplicationContext()).b(new HashMap<>(), "09000", "succ");
        } catch (Exception e2) {
            this.f46507b = false;
            if (u.a()) {
                e2.printStackTrace();
            }
            HashMap<String, Object> map = new HashMap<>();
            map.put("EVENT_CODE_ERROR", e2.getMessage());
            f.a(context.getApplicationContext()).b(map, "09000", "fail");
        }
    }
}
