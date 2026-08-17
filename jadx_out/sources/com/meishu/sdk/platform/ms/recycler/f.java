package com.meishu.sdk.platform.ms.recycler;

import com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.meishu.sdk.platform.ms.splash.ShakeResult;
import com.meishu.sdk.platform.ms.splash.ShakeUtil;

/* loaded from: classes4.dex */
public class f implements ShakeUtil.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f32923a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f32924b;

    public f(i iVar, long j2) {
        this.f32924b = iVar;
        this.f32923a = j2;
    }

    @Override // com.meishu.sdk.platform.ms.splash.ShakeUtil.c
    public void onShake(int i2, boolean z2, int i3, ShakeResult shakeResult) {
        RecylcerAdInteractionListener recylcerAdInteractionListener;
        ShakeUtil.getInstance().a(this.f32924b.f32947i);
        if (this.f32924b.f32939a.a().getCbc() == 0 && (recylcerAdInteractionListener = this.f32924b.f32942d) != null) {
            recylcerAdInteractionListener.onAdClicked();
        }
        if (shakeResult != null) {
            shakeResult.setTotalTurnTime(System.currentTimeMillis() - this.f32923a);
        }
        this.f32924b.f32939a.a().setClkActType(i2);
        this.f32924b.f32939a.a().setClkPower(i3);
        this.f32924b.f32939a.a().setShakeResult(shakeResult);
        com.meishu.sdk.core.utils.f.a(this.f32924b.f32939a, i3 >= 50);
    }
}
