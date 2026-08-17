package com.meishu.sdk.core.webview;

/* loaded from: classes4.dex */
public class c extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f32107a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f32108b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f32109c;

    public c(b bVar, boolean z2, int i2) {
        this.f32109c = bVar;
        this.f32107a = z2;
        this.f32108b = i2;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        b.a(this.f32109c, this.f32107a, this.f32108b);
    }
}
