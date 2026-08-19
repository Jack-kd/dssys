package com.anythink.core.common.inner.ui.d;

import android.text.TextUtils;
import com.anythink.core.basead.b.c;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static volatile a f5161a;

    /* renamed from: b, reason: collision with root package name */
    private Map<String, c> f5162b = new HashMap();

    private a() {
    }

    public static a a() {
        if (f5161a == null) {
            synchronized (a.class) {
                try {
                    if (f5161a == null) {
                        f5161a = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f5161a;
    }

    public final void a(String str, c cVar) {
        if (TextUtils.isEmpty(str) || cVar == null) {
            return;
        }
        this.f5162b.put(str, cVar);
    }

    public final c a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f5162b.remove(str);
    }
}
