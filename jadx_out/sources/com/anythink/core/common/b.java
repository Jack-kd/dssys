package com.anythink.core.common;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static final String f2280a = "1";

    /* renamed from: c, reason: collision with root package name */
    private static volatile b f2281c;

    /* renamed from: b, reason: collision with root package name */
    ConcurrentHashMap<String, List<a>> f2282b = new ConcurrentHashMap<>();

    public interface a {
        void a(Object obj);
    }

    private b() {
    }

    public static b a() {
        if (f2281c == null) {
            synchronized (b.class) {
                try {
                    if (f2281c == null) {
                        f2281c = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f2281c;
    }

    public final synchronized void b(final String str, final a aVar) {
        if (!TextUtils.isEmpty(str) && aVar != null) {
            com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8128k, new Runnable() { // from class: com.anythink.core.common.b.2
                @Override // java.lang.Runnable
                public final void run() {
                    synchronized (b.this) {
                        try {
                            List<a> list = b.this.f2282b.get(str);
                            if (list != null) {
                                list.remove(aVar);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }));
        }
    }

    public final synchronized void a(final String str, final a aVar) {
        if (!TextUtils.isEmpty(str) && aVar != null) {
            com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8127j, new Runnable() { // from class: com.anythink.core.common.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    synchronized (b.this) {
                        try {
                            List<a> arrayList = b.this.f2282b.get(str);
                            if (arrayList == null) {
                                arrayList = new ArrayList<>();
                                b.this.f2282b.put(str, arrayList);
                            }
                            arrayList.add(aVar);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }));
        }
    }

    private synchronized void a(final String str, final Object obj) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.anythink.core.common.v.b.c.a().a(new com.anythink.core.common.v.b.d(com.anythink.core.common.v.b.e.f8126i, new Runnable() { // from class: com.anythink.core.common.b.3
            @Override // java.lang.Runnable
            public final void run() {
                synchronized (b.this) {
                    try {
                        List<a> list = b.this.f2282b.get(str);
                        if (list == null) {
                            return;
                        }
                        for (a aVar : list) {
                            if (aVar != null) {
                                aVar.a(obj);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }));
    }
}
