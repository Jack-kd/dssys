package com.smartdigimkt.b1;

/* loaded from: classes5.dex */
public final class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f39550a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f39551b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f39552c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ s f39553d;

    public m(s sVar, String str, long j2, long j3) {
        this.f39553d = sVar;
        this.f39550a = str;
        this.f39551b = j2;
        this.f39552c = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f39553d.f39569b.b(this.f39550a, this.f39551b, this.f39552c);
    }
}
