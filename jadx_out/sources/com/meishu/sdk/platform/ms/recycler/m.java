package com.meishu.sdk.platform.ms.recycler;

import android.view.ViewGroup;
import com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.view.FeedAdOverlayManager;

/* loaded from: classes4.dex */
public class m implements FeedAdOverlayManager.OnOverlayTriggerAction {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f33050a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f33051b;

    public m(l lVar, ViewGroup viewGroup) {
        this.f33051b = lVar;
        this.f33050a = viewGroup;
    }

    @Override // com.meishu.sdk.core.view.FeedAdOverlayManager.OnOverlayTriggerAction
    public void onOverlayAttached() {
        try {
            p1.a(this.f33051b.f33015b.a().getEventUrl(), 29, 0, null);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.core.view.FeedAdOverlayManager.OnOverlayTriggerAction
    public void onTrigger(boolean z2, boolean z3, float f2, float f3, long j2, float f4, float f5, int i2) {
        RecylcerAdInteractionListener recylcerAdInteractionListener;
        l lVar = this.f33051b;
        if (lVar.f33018e) {
            if (!z3) {
                try {
                    p1.a(lVar.f33015b.a().getEventUrl(), 30, 0, null);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            i0.a(this.f33051b.f33015b, this.f33050a);
            if (z2) {
                this.f33051b.a(this.f33050a, f2, f3, j2, f4, f5, i2, true);
                return;
            }
            try {
                if (this.f33051b.f33015b.a().getCbc() == 0 && (recylcerAdInteractionListener = this.f33051b.f33017d) != null) {
                    recylcerAdInteractionListener.onAdClicked();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            s.a(this.f33051b.f33015b, f2, f3, j2, f4, f5);
            this.f33051b.f33015b.a().setClkActType(1);
            com.meishu.sdk.core.utils.f.a((com.meishu.sdk.platform.ms.c) this.f33051b.f33015b, true);
        }
    }
}
