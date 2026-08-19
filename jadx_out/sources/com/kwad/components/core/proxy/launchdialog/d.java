package com.kwad.components.core.proxy.launchdialog;

import androidx.view.Lifecycle;

/* loaded from: classes4.dex */
public final class d {
    private final Lifecycle.Event ajg;
    private final long ajh = System.currentTimeMillis();

    public d(Lifecycle.Event event) {
        this.ajg = event;
    }

    public final String toString() {
        return "LifecycleStamp{mEvent=" + this.ajg + ", mEventTimestamp=" + this.ajh + '}';
    }

    public final Lifecycle.Event vH() {
        return this.ajg;
    }

    public final long vI() {
        return this.ajh;
    }
}
