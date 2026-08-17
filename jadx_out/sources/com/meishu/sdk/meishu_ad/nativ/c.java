package com.meishu.sdk.meishu_ad.nativ;

import android.view.View;
import android.view.ViewGroup;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.i0;

/* loaded from: classes4.dex */
public class c extends com.meishu.sdk.core.safe.o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f32368a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.platform.ms.recycler.d f32369b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d f32370c;

    public c(d dVar, ViewGroup viewGroup, com.meishu.sdk.platform.ms.recycler.d dVar2) {
        this.f32370c = dVar;
        this.f32368a = viewGroup;
        this.f32369b = dVar2;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        f fVar = this.f32370c.f32379i;
        if (fVar == null || !fVar.f32386B) {
            LogUtil.dev("NativeAdDataImpl", "is`not FeedAdExposure");
            return;
        }
        if (this.f32368a != null) {
            for (int i2 = 0; i2 < this.f32370c.f32379i.getClickUrl().length; i2++) {
                try {
                    int width = this.f32368a.getWidth();
                    int height = this.f32368a.getHeight();
                    if (width > 0 && height > 0) {
                        this.f32370c.f32379i.getClickUrl()[i2] = i0.a(this.f32370c.f32379i.getClickUrl()[i2], width, height);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        com.meishu.sdk.platform.ms.recycler.d dVar = this.f32369b;
        dVar.getClass();
        try {
            if (dVar.f32920a != null && dVar.f32921b.a().getCbc() == 0) {
                dVar.f32920a.onAdClicked();
            }
            dVar.f32921b.a().setClkActType(1);
            com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) dVar.f32921b, true);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
