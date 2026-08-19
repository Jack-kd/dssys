package com.baidu.oauth.sdkbqt.auth;

import android.app.Activity;

/* loaded from: classes2.dex */
public class u implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f11837b;

    public u(i iVar) {
        this.f11837b = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f11837b.f11806n != null) {
            o.g.f((Activity) this.f11837b.getContext());
            this.f11837b.f11806n.a();
        }
    }
}
