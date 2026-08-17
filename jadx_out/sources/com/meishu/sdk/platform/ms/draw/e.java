package com.meishu.sdk.platform.ms.draw;

import android.view.View;
import com.meishu.sdk.core.safe.o;
import com.meishu.sdk.platform.ms.draw.f;

/* loaded from: classes4.dex */
public class e extends o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.nativ.b f32866a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f.a f32867b;

    public e(f.a aVar, com.meishu.sdk.meishu_ad.nativ.b bVar) {
        this.f32867b = aVar;
        this.f32866a = bVar;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        g gVar = f.this.f32868a;
        if (gVar.f32871c) {
            T t2 = gVar.f32888a;
            if (t2 != 0 && ((com.meishu.sdk.meishu_ad.nativ.f) t2).getCbc() == 0 && f.this.f32868a.f32873e.getInteractionListener() != null) {
                f.this.f32868a.f32873e.getInteractionListener().onAdClicked();
            }
            this.f32866a.setInteractionListener(f.this.f32868a.f32873e.getInteractionListener());
            this.f32866a.a().setClkActType(1);
            com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f32866a, true);
        }
    }
}
