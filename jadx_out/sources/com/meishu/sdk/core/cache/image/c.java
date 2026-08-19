package com.meishu.sdk.core.cache.image;

import android.graphics.Bitmap;
import com.meishu.sdk.core.cache.d;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class c implements a {

    /* renamed from: b, reason: collision with root package name */
    public final String f31536b;

    /* renamed from: a, reason: collision with root package name */
    public final List<SoftReference<d>> f31535a = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final Object f31537c = new Object();

    public c(String str, d dVar) {
        this.f31536b = str;
        a(dVar);
    }

    @Override // com.meishu.sdk.core.cache.image.a
    public c a(d dVar) {
        if (dVar != null) {
            try {
                synchronized (this.f31537c) {
                    try {
                        Iterator<SoftReference<d>> it = this.f31535a.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                this.f31535a.add(new SoftReference<>(dVar));
                                break;
                            }
                            if (it.next().get() == dVar) {
                            }
                        }
                    } finally {
                    }
                }
                return this;
            } catch (Throwable unused) {
            }
        }
        return this;
    }

    public static void a(c cVar, Bitmap bitmap, byte[] bArr) {
        synchronized (cVar.f31537c) {
            try {
                Iterator<SoftReference<d>> it = cVar.f31535a.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().get().a(bitmap, bArr, false);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                cVar.f31535a.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void a(c cVar, int i2) {
        synchronized (cVar.f31537c) {
            try {
                Iterator<SoftReference<d>> it = cVar.f31535a.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().get().a(i2);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                }
                cVar.f31535a.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
