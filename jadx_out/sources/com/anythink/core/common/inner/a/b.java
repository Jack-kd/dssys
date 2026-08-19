package com.anythink.core.common.inner.a;

import com.anythink.core.common.d.s;
import com.anythink.core.common.res.d;
import com.anythink.core.common.v.n;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final String f4554a = "b";

    /* renamed from: b, reason: collision with root package name */
    private static volatile b f4555b;

    private b() {
    }

    public static b a() {
        if (f4555b == null) {
            synchronized (b.class) {
                try {
                    if (f4555b == null) {
                        f4555b = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4555b;
    }

    public static String a(String str) throws NoSuchAlgorithmException {
        return d.a(s.b().g()).b(2, n.a(str));
    }
}
