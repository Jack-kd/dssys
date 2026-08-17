package com.meishu.sdk.platform.ms.draw;

import android.view.View;
import com.meishu.sdk.core.safe.o;
import com.meishu.sdk.platform.ms.draw.f;

/* loaded from: classes4.dex */
public class d extends o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.nativ.b f32864a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f.a f32865b;

    public d(f.a aVar, com.meishu.sdk.meishu_ad.nativ.b bVar) {
        this.f32865b = aVar;
        this.f32864a = bVar;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        g gVar = f.this.f32868a;
        if (gVar.f32871c) {
            T t2 = gVar.f32888a;
            if (t2 != 0 && ((com.meishu.sdk.meishu_ad.nativ.f) t2).getCbc() == 0 && f.this.f32868a.f32873e.getInteractionListener() != null) {
                f.this.f32868a.f32873e.getInteractionListener().onAdClicked();
            }
            this.f32864a.setInteractionListener(f.this.f32868a.f32873e.getInteractionListener());
            this.f32864a.a().setClkActType(2);
            com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f32864a, true);
        }
    }
}
