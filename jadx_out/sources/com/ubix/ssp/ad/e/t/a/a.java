package com.ubix.ssp.ad.e.t.a;

import android.graphics.Bitmap;
import android.util.LruCache;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f47119a;

    /* renamed from: b, reason: collision with root package name */
    LruCache<Integer, Bitmap> f47120b;

    private a() {
        this.f47120b = null;
        this.f47120b = new LruCache<>((int) (Runtime.getRuntime().maxMemory() / 40));
    }

    public Bitmap a(int i2) {
        return this.f47120b.get(Integer.valueOf(i2));
    }

    public static a a() {
        a aVar = f47119a;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        f47119a = aVar2;
        return aVar2;
    }

    public void a(int i2, Bitmap bitmap) {
        this.f47120b.put(Integer.valueOf(i2), bitmap);
    }

    public void a(Bitmap bitmap) {
        this.f47120b.put(Integer.valueOf(bitmap.hashCode()), bitmap);
    }
}
