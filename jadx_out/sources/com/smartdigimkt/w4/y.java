package com.smartdigimkt.w4;

import android.os.FileObserver;

/* loaded from: classes5.dex */
public final class y extends FileObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z f45002a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(z zVar, String str) {
        super(str, 2);
        this.f45002a = zVar;
    }

    @Override // android.os.FileObserver
    public final void onEvent(int i2, String str) {
        if (this.f45002a.f45018O.hasMessages(1)) {
            return;
        }
        this.f45002a.f45018O.sendEmptyMessageDelayed(1, 30L);
    }
}
