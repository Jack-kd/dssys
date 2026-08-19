package com.beizi.fusion;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public abstract class lq extends Handler {

    /* renamed from: a, reason: collision with root package name */
    private final WeakReference f14955a;

    public lq(Context context) {
        super(Looper.getMainLooper());
        this.f14955a = new WeakReference(context.getApplicationContext());
    }

    public Context a() {
        WeakReference weakReference = this.f14955a;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return (Context) this.f14955a.get();
    }

    public abstract void a(Message message);

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        if (this.f14955a.get() != null) {
            a(message);
        }
    }
}
