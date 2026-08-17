package com.ubix.ssp.ad.e.a0.y.e;

import android.os.SystemClock;
import android.view.View;
import com.ubix.ssp.ad.e.a0.u;
import java.io.Serializable;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public class b implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private transient WeakReference<View> f46522a;

    /* renamed from: g, reason: collision with root package name */
    private int f46528g;

    /* renamed from: h, reason: collision with root package name */
    private float f46529h;

    /* renamed from: i, reason: collision with root package name */
    private a f46530i;

    /* renamed from: j, reason: collision with root package name */
    private a f46531j;

    /* renamed from: k, reason: collision with root package name */
    private long f46532k;

    /* renamed from: l, reason: collision with root package name */
    private long f46533l;

    /* renamed from: n, reason: collision with root package name */
    private int f46535n;

    /* renamed from: b, reason: collision with root package name */
    private boolean f46523b = false;

    /* renamed from: c, reason: collision with root package name */
    private boolean f46524c = false;

    /* renamed from: d, reason: collision with root package name */
    private boolean f46525d = true;

    /* renamed from: e, reason: collision with root package name */
    private String f46526e = null;

    /* renamed from: f, reason: collision with root package name */
    private boolean f46527f = false;

    /* renamed from: m, reason: collision with root package name */
    private boolean f46534m = false;

    public b(int i2, View view, float f2, int i3, a aVar, a aVar2) {
        this.f46535n = i2;
        this.f46522a = new WeakReference<>(view);
        this.f46528g = i3;
        this.f46530i = aVar;
        this.f46531j = aVar2;
        this.f46529h = f2;
    }

    private void c() {
        if (this.f46534m) {
            a aVar = this.f46531j;
            if (aVar != null) {
                aVar.b(this.f46535n);
                return;
            }
            return;
        }
        int i2 = this.f46528g;
        if (!(this.f46523b ? true : i2 > 0 && this.f46533l - this.f46532k > ((long) i2)) || this.f46531j == null) {
            return;
        }
        u.e("onViewAbility per " + this.f46535n);
        if (this.f46523b) {
            this.f46531j.a(this.f46535n);
        } else {
            this.f46531j.b(this.f46535n);
        }
    }

    public a a() {
        return this.f46530i;
    }

    public void b() {
        try {
            synchronized (b.class) {
                try {
                    if (this.f46532k == 0) {
                        this.f46532k = SystemClock.elapsedRealtime();
                    }
                    WeakReference<View> weakReference = this.f46522a;
                    if (weakReference != null && weakReference.get() != null) {
                        if (new d(this.f46522a.get()).a(this.f46529h)) {
                            this.f46523b = true;
                        }
                        this.f46533l = SystemClock.elapsedRealtime();
                    }
                    c();
                } finally {
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
