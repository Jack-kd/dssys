package com.smartdigimkt.b1;

import android.hardware.display.DisplayManager;

/* loaded from: classes5.dex */
public final class h implements DisplayManager.DisplayListener {

    /* renamed from: a, reason: collision with root package name */
    public final DisplayManager f39529a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f39530b;

    public h(j jVar, DisplayManager displayManager) {
        this.f39530b = jVar;
        this.f39529a = displayManager;
    }

    public final void a() {
        this.f39529a.registerDisplayListener(this, null);
    }

    public final void b() {
        this.f39529a.unregisterDisplayListener(this);
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i2) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i2) {
        if (i2 == 0) {
            this.f39530b.a();
        }
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i2) {
    }
}
