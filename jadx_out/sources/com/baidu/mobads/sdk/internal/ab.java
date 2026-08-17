package com.baidu.mobads.sdk.internal;

/* loaded from: classes2.dex */
class ab implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ aa f10961a;

    public ab(aa aaVar) {
        this.f10961a = aaVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f10961a.a("加载dex超过5秒");
    }
}
