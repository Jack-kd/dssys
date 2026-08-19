package com.smartdigimkt.g2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes5.dex */
public final class b extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f40318a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(d dVar, Looper looper) {
        super(looper);
        this.f40318a = dVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        d dVar = this.f40318a;
        dVar.a(dVar.f40331l);
    }
}
