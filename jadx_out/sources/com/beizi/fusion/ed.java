package com.beizi.fusion;

import android.view.View;
import com.beizi.fusion.fd;

/* loaded from: classes2.dex */
public class ed implements xa {

    /* renamed from: a, reason: collision with root package name */
    private fd f13711a;

    /* renamed from: b, reason: collision with root package name */
    private volatile boolean f13712b = false;

    public void b() {
        synchronized (this) {
            this.f13712b = false;
        }
    }

    public void a(Object obj) {
        this.f13712b = false;
    }

    @Override // com.beizi.fusion.xa
    public void a() {
        synchronized (this) {
            this.f13712b = true;
        }
    }

    public void a(za zaVar, View view, Object obj) {
        fd fdVar;
        synchronized (this) {
            try {
                if (this.f13712b && (fdVar = this.f13711a) != null && (zaVar instanceof fd.a)) {
                    fdVar.a(view, (fd.a) zaVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.beizi.fusion.xa
    public void a(fd fdVar) {
        synchronized (this) {
            this.f13711a = fdVar;
            fdVar.a(this);
        }
    }
}
