package com.meishu.sdk.platform.ms.draw;

import android.view.View;
import com.meishu.sdk.core.safe.o;
import com.meishu.sdk.platform.ms.draw.f;

/* loaded from: classes4.dex */
public class c extends o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f.a f32863a;

    public c(f.a aVar) {
        this.f32863a = aVar;
    }

    @Override // com.meishu.sdk.core.safe.o
    public void safeOnClick(View view) {
        if (f.this.f32868a.f32873e.getInteractionListener() != null) {
            f.this.f32868a.f32873e.getInteractionListener().onAdClosed();
        }
    }
}
