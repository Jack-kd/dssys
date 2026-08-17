package com.beizi.fusion;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public abstract class t4 extends Handler {

    /* renamed from: a, reason: collision with root package name */
    private WeakReference f16293a;

    public t4(Context context) {
        super(Looper.getMainLooper());
        this.f16293a = new WeakReference(context.getApplicationContext());
    }

    public Context a() {
        WeakReference weakReference = this.f16293a;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return (Context) this.f16293a.get();
    }

    public abstract void a(Message message);

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        WeakReference weakReference = this.f16293a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        a(message);
    }
}
