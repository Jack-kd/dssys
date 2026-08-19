package com.sigmob.sdk.nativead;

import java.lang.ref.WeakReference;

/* renamed from: com.sigmob.sdk.nativead.u, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1364u implements InterfaceC1363t {

    /* renamed from: a, reason: collision with root package name */
    private final WeakReference<com.sigmob.sdk.videoplayer.f> f38477a;

    /* renamed from: b, reason: collision with root package name */
    private InterfaceC1356l f38478b;

    public C1364u(com.sigmob.sdk.videoplayer.f fVar) {
        this.f38477a = new WeakReference<>(fVar);
    }

    private com.sigmob.sdk.videoplayer.f k() {
        return this.f38477a.get();
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1363t
    public void a() {
        com.sigmob.sdk.videoplayer.f fVarK = k();
        if (fVarK == null) {
            return;
        }
        fVarK.D();
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1363t
    public void b() {
        com.sigmob.sdk.videoplayer.f fVarK = k();
        if (fVarK == null) {
            return;
        }
        fVarK.C();
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1363t
    public void c() {
        com.sigmob.sdk.videoplayer.f fVarK = k();
        if (fVarK == null) {
            return;
        }
        fVarK.C();
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1363t
    public void d() {
        com.sigmob.sdk.videoplayer.f fVarK = k();
        if (fVarK == null) {
            return;
        }
        fVarK.E();
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1363t
    public int e() {
        com.sigmob.sdk.videoplayer.f fVarK = k();
        if (fVarK == null || fVarK.getDuration() == 0) {
            return 0;
        }
        return (int) (fVarK.getDuration() / 1000);
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1363t
    public int f() {
        com.sigmob.sdk.videoplayer.f fVarK = k();
        if (fVarK == null || fVarK.getCurrentPositionWhenPlaying() == 0) {
            return 0;
        }
        return (int) ((fVarK.getCurrentPositionWhenPlaying() * 100) / fVarK.getDuration());
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1363t
    public InterfaceC1356l g() {
        return this.f38478b;
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1363t
    public void h() {
        com.sigmob.sdk.videoplayer.f fVarK = k();
        if (fVarK == null) {
            return;
        }
        fVarK.d();
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1363t
    public void i() {
        com.sigmob.sdk.videoplayer.f fVar = this.f38477a.get();
        if (fVar != null) {
            fVar.a();
        }
        this.f38477a.clear();
        this.f38478b = null;
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1363t
    public int j() {
        com.sigmob.sdk.videoplayer.f fVarK = k();
        if (fVarK == null) {
            return 0;
        }
        return (int) (fVarK.getCurrentPositionWhenPlaying() / 1000);
    }

    public void a(int i2) {
        com.sigmob.sdk.videoplayer.f fVarK = k();
        if (fVarK == null) {
            return;
        }
        fVarK.setHolderImageResource(i2);
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1363t
    public void a(InterfaceC1356l interfaceC1356l) {
        this.f38478b = interfaceC1356l;
    }

    @Override // com.sigmob.sdk.nativead.InterfaceC1363t
    public void a(boolean z2) {
        com.sigmob.sdk.videoplayer.f fVarK = k();
        if (fVarK == null) {
            return;
        }
        fVarK.setSoundChange(z2);
    }
}
