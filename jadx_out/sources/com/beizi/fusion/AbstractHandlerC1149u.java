package com.beizi.fusion;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* renamed from: com.beizi.fusion.u, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractHandlerC1149u extends Handler {

    /* renamed from: a, reason: collision with root package name */
    private final WeakReference f16405a;

    public AbstractHandlerC1149u(Context context) {
        super(Looper.getMainLooper());
        this.f16405a = new WeakReference(context != null ? context.getApplicationContext() : null);
    }

    public abstract void a(Message message);

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        if (this.f16405a.get() != null) {
            a(message);
        }
    }
}
