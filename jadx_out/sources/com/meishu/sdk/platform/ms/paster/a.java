package com.meishu.sdk.platform.ms.paster;

import android.view.View;
import com.meishu.sdk.core.safe.o;
import com.meishu.sdk.meishu_ad.nativ.f;
import com.meishu.sdk.platform.ms.paster.d;

/* loaded from: classes4.dex */
public class a extends o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.meishu.sdk.meishu_ad.nativ.b f32892a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d.a f32893b;

    public a(d.a aVar, com.meishu.sdk.meishu_ad.nativ.b bVar) {
        this.f32893b = aVar;
        this.f32892a = bVar;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        d dVar = d.this;
        if (dVar.f32899d) {
            T t2 = dVar.f32888a;
            if (t2 != 0 && ((f) t2).getCbc() == 0 && d.this.f32901f.getInteractionListener() != null) {
                d.this.f32901f.getInteractionListener().onAdClicked();
            }
            this.f32892a.setInteractionListener(d.this.f32901f.getInteractionListener());
            this.f32892a.a().setClkActType(1);
            com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f32892a, true);
        }
    }
}
