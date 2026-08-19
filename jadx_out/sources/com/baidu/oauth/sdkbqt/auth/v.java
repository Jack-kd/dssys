package com.baidu.oauth.sdkbqt.auth;

/* loaded from: classes2.dex */
public class v implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f11838b;

    public v(i iVar) {
        this.f11838b = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f11838b.f11802j != null) {
            this.f11838b.f11802j.setVisibility(8);
        }
        this.f11838b.f11796d.f11820a = this.f11838b.f11805m.f11822b;
        if (this.f11838b.f11798f != null) {
            this.f11838b.f11798f.setVisibility(0);
        }
    }
}
