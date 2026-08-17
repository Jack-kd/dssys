package com.smartdigimkt.j0;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import java.util.Iterator;

/* loaded from: classes5.dex */
public final class i0 implements com.smartdigimkt.b1.t, com.smartdigimkt.l0.m, com.smartdigimkt.r0.g, SurfaceHolder.Callback, TextureView.SurfaceTextureListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j0 f40887a;

    public i0(j0 j0Var) {
        this.f40887a = j0Var;
    }

    @Override // com.smartdigimkt.b1.t
    public final void a(int i2, long j2) {
        Iterator it = this.f40887a.f40904g.iterator();
        while (it.hasNext()) {
            ((com.smartdigimkt.b1.t) it.next()).a(i2, j2);
        }
    }

    @Override // com.smartdigimkt.b1.t
    public final void b(String str, long j2, long j3) {
        Iterator it = this.f40887a.f40904g.iterator();
        while (it.hasNext()) {
            ((com.smartdigimkt.b1.t) it.next()).b(str, j2, j3);
        }
    }

    @Override // com.smartdigimkt.b1.t
    public final void c(com.smartdigimkt.m0.c cVar) {
        this.f40887a.getClass();
        Iterator it = this.f40887a.f40904g.iterator();
        while (it.hasNext()) {
            ((com.smartdigimkt.b1.t) it.next()).c(cVar);
        }
    }

    @Override // com.smartdigimkt.b1.t
    public final void d(com.smartdigimkt.m0.c cVar) {
        Iterator it = this.f40887a.f40904g.iterator();
        while (it.hasNext()) {
            ((com.smartdigimkt.b1.t) it.next()).d(cVar);
        }
        this.f40887a.getClass();
        this.f40887a.getClass();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
        this.f40887a.a(new Surface(surfaceTexture), true);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.f40887a.a(null, true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.f40887a.a(surfaceHolder.getSurface(), false);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f40887a.a(null, false);
    }

    @Override // com.smartdigimkt.b1.t
    public final void a(int i2, int i3, int i4, float f2) {
        Iterator it = this.f40887a.f40902e.iterator();
        while (it.hasNext()) {
            ((com.smartdigimkt.b1.k) it.next()).a(i2, i3);
        }
        Iterator it2 = this.f40887a.f40904g.iterator();
        while (it2.hasNext()) {
            ((com.smartdigimkt.b1.t) it2.next()).a(i2, i3, i4, f2);
        }
    }

    @Override // com.smartdigimkt.b1.t
    public final void b(s sVar) {
        this.f40887a.getClass();
        Iterator it = this.f40887a.f40904g.iterator();
        while (it.hasNext()) {
            ((com.smartdigimkt.b1.t) it.next()).b(sVar);
        }
    }

    @Override // com.smartdigimkt.l0.m
    public final void b(com.smartdigimkt.m0.c cVar) {
        this.f40887a.getClass();
        Iterator it = this.f40887a.f40905h.iterator();
        while (it.hasNext()) {
            ((com.smartdigimkt.l0.m) it.next()).b(cVar);
        }
    }

    @Override // com.smartdigimkt.b1.t
    public final void a(Surface surface) {
        j0 j0Var = this.f40887a;
        if (j0Var.f40907j == surface) {
            Iterator it = j0Var.f40902e.iterator();
            while (it.hasNext()) {
                ((com.smartdigimkt.b1.k) it.next()).getClass();
            }
        }
        Iterator it2 = this.f40887a.f40904g.iterator();
        while (it2.hasNext()) {
            ((com.smartdigimkt.b1.t) it2.next()).a(surface);
        }
    }

    @Override // com.smartdigimkt.l0.m
    public final void b(int i2) {
        this.f40887a.getClass();
        Iterator it = this.f40887a.f40905h.iterator();
        while (it.hasNext()) {
            ((com.smartdigimkt.l0.m) it.next()).b(i2);
        }
    }

    @Override // com.smartdigimkt.l0.m
    public final void a(String str, long j2, long j3) {
        Iterator it = this.f40887a.f40905h.iterator();
        while (it.hasNext()) {
            ((com.smartdigimkt.l0.m) it.next()).a(str, j2, j3);
        }
    }

    @Override // com.smartdigimkt.l0.m
    public final void a(s sVar) {
        this.f40887a.getClass();
        Iterator it = this.f40887a.f40905h.iterator();
        while (it.hasNext()) {
            ((com.smartdigimkt.l0.m) it.next()).a(sVar);
        }
    }

    @Override // com.smartdigimkt.l0.m
    public final void a(int i2, long j2, long j3) {
        Iterator it = this.f40887a.f40905h.iterator();
        while (it.hasNext()) {
            ((com.smartdigimkt.l0.m) it.next()).a(i2, j2, j3);
        }
    }

    @Override // com.smartdigimkt.l0.m
    public final void a(com.smartdigimkt.m0.c cVar) {
        Iterator it = this.f40887a.f40905h.iterator();
        while (it.hasNext()) {
            ((com.smartdigimkt.l0.m) it.next()).a(cVar);
        }
        this.f40887a.getClass();
        this.f40887a.getClass();
        this.f40887a.getClass();
    }

    @Override // com.smartdigimkt.r0.g
    public final void a(com.smartdigimkt.r0.c cVar) {
        Iterator it = this.f40887a.f40903f.iterator();
        while (it.hasNext()) {
            ((com.smartdigimkt.r0.g) it.next()).a(cVar);
        }
    }
}
