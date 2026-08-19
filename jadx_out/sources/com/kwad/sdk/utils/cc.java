package com.kwad.sdk.utils;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* loaded from: classes4.dex */
public final class cc extends Handler {
    private WeakReference<a> brA;

    public interface a {
        void a(Message message);
    }

    public cc(a aVar) {
        this.brA = new WeakReference<>(aVar);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        WeakReference<a> weakReference;
        a aVar;
        try {
            weakReference = this.brA;
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
        }
        if (weakReference == null || (aVar = weakReference.get()) == null) {
            return;
        }
        aVar.a(message);
        super.handleMessage(message);
    }
}
