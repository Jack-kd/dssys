package com.smartdigimkt.w4;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public final class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final String f44983a;

    /* renamed from: b, reason: collision with root package name */
    public final o f44984b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f44985c = new AtomicBoolean();

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ p f44986d;

    public n(p pVar, String str, o oVar) {
        this.f44986d = pVar;
        this.f44983a = str;
        this.f44984b = oVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f44984b.a(this.f44985c);
        } finally {
            this.f44986d.f44987a.remove(this.f44983a);
        }
    }
}
