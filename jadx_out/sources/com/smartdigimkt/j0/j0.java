package com.smartdigimkt.j0;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.TextureView;
import java.util.ArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

/* loaded from: classes5.dex */
public final class j0 implements h {

    /* renamed from: a, reason: collision with root package name */
    public final a[] f40898a;

    /* renamed from: b, reason: collision with root package name */
    public final k f40899b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f40900c;

    /* renamed from: d, reason: collision with root package name */
    public final i0 f40901d;

    /* renamed from: e, reason: collision with root package name */
    public final CopyOnWriteArraySet f40902e;

    /* renamed from: f, reason: collision with root package name */
    public final CopyOnWriteArraySet f40903f;

    /* renamed from: g, reason: collision with root package name */
    public final CopyOnWriteArraySet f40904g;

    /* renamed from: h, reason: collision with root package name */
    public final CopyOnWriteArraySet f40905h;

    /* renamed from: i, reason: collision with root package name */
    public final com.smartdigimkt.k0.c f40906i;

    /* renamed from: j, reason: collision with root package name */
    public Surface f40907j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f40908k;

    /* renamed from: l, reason: collision with root package name */
    public TextureView f40909l;

    /* renamed from: m, reason: collision with root package name */
    public com.smartdigimkt.w0.j f40910m;

    public j0(f fVar, com.smartdigimkt.y0.g gVar, c cVar) {
        i0 i0Var = new i0(this);
        this.f40901d = i0Var;
        this.f40902e = new CopyOnWriteArraySet();
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        this.f40903f = copyOnWriteArraySet;
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        this.f40904g = copyOnWriteArraySet2;
        CopyOnWriteArraySet copyOnWriteArraySet3 = new CopyOnWriteArraySet();
        this.f40905h = copyOnWriteArraySet3;
        Handler handler = new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.f40900c = handler;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.smartdigimkt.b1.g(fVar.f40878a, 5000L, handler, i0Var));
        Context context = fVar.f40878a;
        com.smartdigimkt.l0.e[] eVarArr = new com.smartdigimkt.l0.e[0];
        com.smartdigimkt.l0.c cVar2 = com.smartdigimkt.l0.c.f41456c;
        Intent intentRegisterReceiver = context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        arrayList.add(new com.smartdigimkt.l0.d0(context, handler, i0Var, (intentRegisterReceiver == null || intentRegisterReceiver.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? com.smartdigimkt.l0.c.f41456c : new com.smartdigimkt.l0.c(intentRegisterReceiver.getIntArrayExtra("android.media.extra.ENCODINGS"), intentRegisterReceiver.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 0)), eVarArr));
        arrayList.add(new com.smartdigimkt.r0.h(i0Var, handler.getLooper()));
        a[] aVarArr = (a[]) arrayList.toArray(new a[arrayList.size()]);
        this.f40898a = aVarArr;
        k kVar = new k(aVarArr, gVar, cVar);
        this.f40899b = kVar;
        com.smartdigimkt.k0.c cVar3 = new com.smartdigimkt.k0.c(kVar);
        this.f40906i = cVar3;
        kVar.f40917g.add(cVar3);
        copyOnWriteArraySet2.add(cVar3);
        copyOnWriteArraySet3.add(cVar3);
        copyOnWriteArraySet.add(cVar3);
    }

    public final void a(float f2) {
        for (a aVar : this.f40898a) {
            if (aVar.f40842a == 1) {
                k kVar = this.f40899b;
                e0 e0Var = new e0(kVar.f40915e, aVar, kVar.f40926p.f41047a, kVar.c(), kVar.f40916f);
                if (e0Var.f40875f) {
                    throw new IllegalStateException();
                }
                e0Var.f40872c = 2;
                Float fValueOf = Float.valueOf(f2);
                if (e0Var.f40875f) {
                    throw new IllegalStateException();
                }
                e0Var.f40873d = fValueOf;
                e0Var.b();
            }
        }
    }

    @Override // com.smartdigimkt.j0.h
    public final long b() {
        return this.f40899b.b();
    }

    @Override // com.smartdigimkt.j0.h
    public final int c() {
        return this.f40899b.c();
    }

    @Override // com.smartdigimkt.j0.h
    public final long d() {
        return this.f40899b.d();
    }

    @Override // com.smartdigimkt.j0.h
    public final n0 e() {
        return this.f40899b.f40926p.f41047a;
    }

    @Override // com.smartdigimkt.j0.h
    public final long f() {
        return this.f40899b.f();
    }

    @Override // com.smartdigimkt.j0.h
    public final int g() {
        return this.f40899b.g();
    }

    public final long h() {
        try {
            return this.f40899b.h();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public final boolean i() {
        k kVar = this.f40899b;
        return kVar.f40926p.f41052f == 3 && kVar.f40921k;
    }

    public final void j() {
        k kVar = this.f40899b;
        kVar.getClass();
        Integer.toHexString(System.identityHashCode(kVar));
        int i2 = com.smartdigimkt.a1.t.f39303a;
        synchronized (q.class) {
            String str = q.f40984a;
        }
        kVar.f40915e.f();
        kVar.f40914d.removeCallbacksAndMessages(null);
        TextureView textureView = this.f40909l;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() == this.f40901d) {
                this.f40909l.setSurfaceTextureListener(null);
            }
            this.f40909l = null;
        }
        Surface surface = this.f40907j;
        if (surface != null) {
            if (this.f40908k) {
                surface.release();
            }
            this.f40907j = null;
        }
        com.smartdigimkt.w0.j jVar = this.f40910m;
        if (jVar != null) {
            jVar.a(this.f40906i);
        }
    }

    public final void k() {
        k kVar = this.f40899b;
        int i2 = 0;
        z zVarA = kVar.a(false, false, 1);
        kVar.f40922l++;
        kVar.f40915e.f40963f.f39298a.obtainMessage(6, 0, 0).sendToTarget();
        kVar.a(zVarA, false, 4, 1, false, false);
        com.smartdigimkt.w0.j jVar = this.f40910m;
        if (jVar != null) {
            jVar.a(this.f40906i);
            this.f40910m = null;
            com.smartdigimkt.k0.c cVar = this.f40906i;
            cVar.getClass();
            ArrayList arrayList = new ArrayList(cVar.f41252d.f41241a);
            int size = arrayList.size();
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                com.smartdigimkt.k0.b bVar = (com.smartdigimkt.k0.b) obj;
                cVar.b(bVar.f41247a, bVar.f41248b);
            }
        }
    }

    public final void a(com.smartdigimkt.w0.j jVar) {
        com.smartdigimkt.w0.j jVar2 = this.f40910m;
        if (jVar2 != jVar) {
            if (jVar2 != null) {
                jVar2.a(this.f40906i);
                com.smartdigimkt.k0.c cVar = this.f40906i;
                cVar.getClass();
                ArrayList arrayList = new ArrayList(cVar.f41252d.f41241a);
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    com.smartdigimkt.k0.b bVar = (com.smartdigimkt.k0.b) obj;
                    cVar.b(bVar.f41247a, bVar.f41248b);
                }
            }
            Handler handler = this.f40900c;
            com.smartdigimkt.k0.c cVar2 = this.f40906i;
            com.smartdigimkt.w0.x xVar = jVar.f44830b;
            xVar.getClass();
            if (handler != null && cVar2 != null) {
                xVar.f44871c.add(new com.smartdigimkt.w0.w(handler, cVar2));
                this.f40910m = jVar;
            } else {
                throw new IllegalArgumentException();
            }
        }
        k kVar = this.f40899b;
        z zVarA = kVar.a(true, true, 2);
        kVar.f40923m = true;
        kVar.f40922l++;
        kVar.f40915e.f40963f.f39298a.obtainMessage(0, 1, 1, jVar).sendToTarget();
        kVar.a(zVarA, false, 4, 1, false, false);
    }

    public final void a(boolean z2) {
        k kVar = this.f40899b;
        if (kVar.f40921k != z2) {
            kVar.f40921k = z2;
            kVar.f40915e.f40963f.f39298a.obtainMessage(1, z2 ? 1 : 0, 0).sendToTarget();
            kVar.a(kVar.f40926p, false, 4, 1, false, true);
        }
    }

    @Override // com.smartdigimkt.j0.h
    public final int a() {
        return this.f40899b.a();
    }

    public final void a(TextureView textureView) {
        TextureView textureView2 = this.f40909l;
        if (textureView2 != null) {
            if (textureView2.getSurfaceTextureListener() == this.f40901d) {
                this.f40909l.setSurfaceTextureListener(null);
            }
            this.f40909l = null;
        }
        this.f40909l = textureView;
        if (textureView == null) {
            a(null, true);
            return;
        }
        textureView.getSurfaceTextureListener();
        textureView.setSurfaceTextureListener(this.f40901d);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        a(surfaceTexture != null ? new Surface(surfaceTexture) : null, true);
    }

    public final void a(Surface surface, boolean z2) {
        ArrayList arrayList = new ArrayList();
        for (a aVar : this.f40898a) {
            if (aVar.f40842a == 2) {
                k kVar = this.f40899b;
                e0 e0Var = new e0(kVar.f40915e, aVar, kVar.f40926p.f41047a, kVar.c(), kVar.f40916f);
                boolean z3 = e0Var.f40875f;
                if (!z3) {
                    e0Var.f40872c = 1;
                    if (!z3) {
                        e0Var.f40873d = surface;
                        arrayList.add(e0Var.b());
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    throw new IllegalStateException();
                }
            }
        }
        Surface surface2 = this.f40907j;
        if (surface2 != null && surface2 != surface) {
            try {
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    ((e0) obj).a();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
                k kVar2 = this.f40899b;
                z zVarA = kVar2.a(false, false, 1);
                kVar2.f40922l++;
                kVar2.f40915e.f40963f.f39298a.obtainMessage(6, 0, 0).sendToTarget();
                kVar2.a(zVarA, false, 4, 1, false, false);
            }
            if (this.f40908k) {
                this.f40907j.release();
            }
        }
        this.f40907j = surface;
        this.f40908k = z2;
    }
}
