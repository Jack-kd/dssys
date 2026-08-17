package com.baidu.oauth.sdkbqt.auth;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes2.dex */
public class n extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f11827a;

    public n(i iVar) {
        this.f11827a = iVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what == 1) {
            this.f11827a.J();
        }
    }
}
