package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.MraidBannerATView;

/* loaded from: classes5.dex */
public final class o3 implements u3 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MraidBannerATView f44566a;

    public o3(MraidBannerATView mraidBannerATView) {
        this.f44566a = mraidBannerATView;
    }

    @Override // com.smartdigimkt.v1.u3
    public final void a(String str) {
        MraidBannerATView mraidBannerATView = this.f44566a;
        mraidBannerATView.f43217c.f41821l = str;
        mraidBannerATView.a(1, 13);
    }

    @Override // com.smartdigimkt.v1.u3
    public final void b() {
    }

    @Override // com.smartdigimkt.v1.u3
    public final void c() {
    }

    @Override // com.smartdigimkt.v1.u3
    public final void a() {
        MraidBannerATView mraidBannerATView = this.f44566a;
        mraidBannerATView.f43474K = true;
        synchronized (mraidBannerATView) {
            if (mraidBannerATView.f43474K && mraidBannerATView.f43475L && !mraidBannerATView.f43476M) {
                mraidBannerATView.f43476M = true;
                com.smartdigimkt.y3.h.a(mraidBannerATView.f43217c, mraidBannerATView.f43216b);
            }
        }
        try {
            this.f44566a.n();
        } catch (Throwable unused) {
        }
    }
}
