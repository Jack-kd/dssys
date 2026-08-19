package com.ubix.ssp.ad.e.b0;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.SurfaceHolder;
import android.view.TextureView;
import java.lang.ref.SoftReference;

/* loaded from: classes5.dex */
public abstract class b implements TextureView.SurfaceTextureListener, SurfaceHolder.Callback {

    /* renamed from: a, reason: collision with root package name */
    protected SurfaceTexture f46594a;

    /* renamed from: b, reason: collision with root package name */
    protected SurfaceHolder f46595b;

    /* renamed from: c, reason: collision with root package name */
    protected HandlerThread f46596c;

    /* renamed from: d, reason: collision with root package name */
    protected Handler f46597d;

    /* renamed from: e, reason: collision with root package name */
    protected Handler f46598e;

    /* renamed from: f, reason: collision with root package name */
    protected SoftReference<e> f46599f;

    public b(e eVar) {
        this.f46599f = new SoftReference<>(eVar);
    }

    public abstract long a();

    public abstract void a(float f2, float f3);

    public abstract void a(long j2);

    public abstract void a(a aVar);

    public abstract void a(boolean z2);

    public abstract long b();

    public abstract boolean c();

    public abstract void d();

    public abstract void e();
}
