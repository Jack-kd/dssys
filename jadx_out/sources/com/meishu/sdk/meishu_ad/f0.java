package com.meishu.sdk.meishu_ad;

import com.meishu.sdk.core.loader.IAdLoadListener;
import com.meishu.sdk.meishu_ad.v;

/* loaded from: classes4.dex */
public class f0 extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v.c f32223a;

    public f0(v.c cVar) {
        this.f32223a = cVar;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        v.c cVar = this.f32223a;
        com.meishu.sdk.meishu_ad.nativ.a aVar = cVar.f32613c;
        if (aVar != null) {
            if (cVar.f32614d != 1) {
                aVar.onADLoaded(cVar.f32615e);
            }
            com.meishu.sdk.meishu_ad.nativ.a aVar2 = this.f32223a.f32613c;
            if (aVar2 instanceof com.meishu.sdk.platform.ms.reward.a) {
                com.meishu.sdk.platform.ms.reward.a aVar3 = (com.meishu.sdk.platform.ms.reward.a) aVar2;
                aVar3.getClass();
                Boolean bool = Boolean.TRUE;
                if (bool.equals(null) || bool.equals(aVar3.f33094e)) {
                    return;
                }
                com.meishu.sdk.platform.ms.reward.a aVar4 = (com.meishu.sdk.platform.ms.reward.a) this.f32223a.f32613c;
                aVar4.getClass();
                try {
                    IAdLoadListener iAdLoadListener = aVar4.f33090a;
                    if (iAdLoadListener instanceof com.meishu.sdk.core.ad.reward.a) {
                        ((com.meishu.sdk.core.ad.reward.a) iAdLoadListener).onVideoCached(aVar4.f33095f);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }
}
