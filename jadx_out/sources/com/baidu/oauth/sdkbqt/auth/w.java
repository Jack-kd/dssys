package com.baidu.oauth.sdkbqt.auth;

/* loaded from: classes2.dex */
public class w implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f11839b;

    public w(i iVar) {
        this.f11839b = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f11839b.f11802j != null) {
            this.f11839b.f11802j.setVisibility(8);
        }
        if (this.f11839b.f11797e != null) {
            this.f11839b.f11797e.setVisibility(0);
        }
    }
}
