package com.sigmob.sdk.videoplayer;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.view.Surface;
import android.view.TextureView;

/* loaded from: classes5.dex */
public abstract class i implements TextureView.SurfaceTextureListener {

    /* renamed from: a, reason: collision with root package name */
    public SurfaceTexture f39095a;

    /* renamed from: b, reason: collision with root package name */
    public Handler f39096b;

    /* renamed from: c, reason: collision with root package name */
    public Handler f39097c;

    /* renamed from: d, reason: collision with root package name */
    public h f39098d;

    public i(h hVar) {
        this.f39098d = hVar;
    }

    public abstract void a();

    public abstract void a(float f2);

    public abstract void a(long j2);

    public abstract void a(Surface surface);

    public abstract void a(boolean z2);

    public abstract void b();

    public abstract void b(float f2);

    public abstract void c();

    public abstract void d();

    public abstract boolean e();

    public abstract void f();

    public abstract long g();

    public abstract int h();

    public abstract int i();

    public abstract long j();
}
