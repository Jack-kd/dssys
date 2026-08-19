package com.anythink.china.a;

import android.content.Context;
import com.anythink.core.common.v.j;
import com.anythink.core.e.b;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class b implements d {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1374a = "Y29tLmFlZ2lzLmd1YXJkLlRETkFIYW5kbGVy";

    /* renamed from: b, reason: collision with root package name */
    private Object f1375b;

    /* renamed from: c, reason: collision with root package name */
    private Method f1376c;

    public b() {
        try {
            Class<?> cls = Class.forName(j.b(f1374a));
            Method method = cls.getMethod("getInstance", null);
            method.setAccessible(true);
            this.f1375b = method.invoke(null, null);
            Method method2 = cls.getMethod(b.a.f8698A, Context.class, Long.TYPE);
            this.f1376c = method2;
            method2.setAccessible(true);
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.china.a.d
    public final byte[] a(Context context, long j2) {
        try {
            Object obj = this.f1375b;
            if (obj != null) {
                return (byte[]) this.f1376c.invoke(obj, context, Long.valueOf(j2));
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
