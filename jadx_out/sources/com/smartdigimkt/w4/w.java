package com.smartdigimkt.w4;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes5.dex */
public final class w extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z f44997a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(z zVar, Looper looper) {
        super(looper);
        this.f44997a = zVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 1) {
            this.f44997a.f45015L.execute(new v(this));
        } else {
            if (i2 != 2) {
                return;
            }
            z zVar = this.f44997a;
            zVar.f44963p.execute(new u(zVar));
        }
    }
}
