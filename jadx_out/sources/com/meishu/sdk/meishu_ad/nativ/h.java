package com.meishu.sdk.meishu_ad.nativ;

/* loaded from: classes4.dex */
public class h extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NormalMediaView f32417a;

    public h(NormalMediaView normalMediaView) {
        this.f32417a = normalMediaView;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        a aVar;
        NormalMediaView normalMediaView = this.f32417a;
        if (normalMediaView.f32320F || (aVar = normalMediaView.f32319E) == null) {
            return;
        }
        aVar.onADExposure();
    }
}
