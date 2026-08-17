package com.kwad.components.core.h;

import android.os.Handler;
import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
public final class a implements Runnable {
    private InterfaceC0530a Sy;

    @Nullable
    private volatile Handler jk;
    private long Sv = 1000;
    private boolean Sw = true;
    private long Sx = 0;
    private float mSpeed = 1.0f;

    /* renamed from: com.kwad.components.core.h.a$a, reason: collision with other inner class name */
    public interface InterfaceC0530a {
        void G(long j2);
    }

    public a(Handler handler) {
        this.jk = handler;
    }

    public final void a(InterfaceC0530a interfaceC0530a) {
        this.Sy = interfaceC0530a;
    }

    public final void destroy() {
        stop();
        this.jk = null;
    }

    public final void pause() {
        this.Sw = true;
    }

    public final void resume() {
        this.Sw = false;
    }

    @Override // java.lang.Runnable
    public final synchronized void run() {
        InterfaceC0530a interfaceC0530a;
        try {
            if (this.jk != null) {
                if (!this.Sw && (interfaceC0530a = this.Sy) != null) {
                    interfaceC0530a.G(this.Sx);
                    this.Sx += this.Sv;
                }
                if (this.jk != null) {
                    this.jk.postDelayed(this, (long) (this.Sv / this.mSpeed));
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void setSpeed(float f2) {
        if (f2 > 0.0f) {
            this.mSpeed = f2;
        }
    }

    public final void start() {
        this.Sw = false;
        if (this.jk != null) {
            this.jk.post(this);
        }
    }

    public final void stop() {
        if (this.jk != null) {
            this.jk.removeCallbacks(this);
        }
    }
}
