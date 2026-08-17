package com.smartdigimkt.b1;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.WindowManager;

/* loaded from: classes5.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final WindowManager f39536a;

    /* renamed from: b, reason: collision with root package name */
    public final i f39537b;

    /* renamed from: c, reason: collision with root package name */
    public final h f39538c;

    /* renamed from: d, reason: collision with root package name */
    public long f39539d;

    /* renamed from: e, reason: collision with root package name */
    public long f39540e;

    /* renamed from: f, reason: collision with root package name */
    public long f39541f;

    /* renamed from: g, reason: collision with root package name */
    public long f39542g;

    /* renamed from: h, reason: collision with root package name */
    public long f39543h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f39544i;

    /* renamed from: j, reason: collision with root package name */
    public long f39545j;

    /* renamed from: k, reason: collision with root package name */
    public long f39546k;

    /* renamed from: l, reason: collision with root package name */
    public long f39547l;

    public j(Context context) {
        DisplayManager displayManager;
        h hVar = null;
        if (context != null) {
            context = context.getApplicationContext();
            this.f39536a = (WindowManager) context.getSystemService("window");
        } else {
            this.f39536a = null;
        }
        if (this.f39536a != null) {
            if (com.smartdigimkt.a1.t.f39303a >= 17 && (displayManager = (DisplayManager) context.getSystemService("display")) != null) {
                hVar = new h(this, displayManager);
            }
            this.f39538c = hVar;
            this.f39537b = i.f39531e;
        } else {
            this.f39538c = null;
            this.f39537b = null;
        }
        this.f39539d = -9223372036854775807L;
        this.f39540e = -9223372036854775807L;
    }

    public final void a() {
        try {
            if (this.f39536a.getDefaultDisplay() != null) {
                long refreshRate = (long) (1.0E9d / r0.getRefreshRate());
                this.f39539d = refreshRate;
                this.f39540e = (refreshRate * 80) / 100;
            }
        } catch (Throwable unused) {
        }
    }
}
