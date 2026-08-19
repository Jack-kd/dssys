package com.anythink.core.common.n.b.a.b;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class h extends RuntimeException {

    /* renamed from: a, reason: collision with root package name */
    private IOException f6185a;

    /* renamed from: b, reason: collision with root package name */
    private IOException f6186b;

    public h(IOException iOException) {
        super(iOException);
        this.f6185a = iOException;
        this.f6186b = iOException;
    }

    public final IOException a() {
        return this.f6185a;
    }

    public final IOException b() {
        return this.f6186b;
    }

    public final void a(IOException iOException) {
        com.anythink.core.common.n.b.a.c.a(this.f6185a, iOException);
        this.f6186b = iOException;
    }
}
