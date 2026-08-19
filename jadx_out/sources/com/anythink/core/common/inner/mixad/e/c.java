package com.anythink.core.common.inner.mixad.e;

import com.anythink.core.common.h.y;
import com.anythink.core.common.l.g.d;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class c extends y implements Serializable {

    /* renamed from: o, reason: collision with root package name */
    private final int f4751o;

    /* renamed from: p, reason: collision with root package name */
    private final int f4752p;

    /* renamed from: q, reason: collision with root package name */
    private final int f4753q;

    /* renamed from: r, reason: collision with root package name */
    private boolean f4754r;

    /* renamed from: s, reason: collision with root package name */
    private final int f4755s;

    public c(com.anythink.core.common.l.g.a aVar) {
        v(aVar.d());
        o(aVar.c());
        b(aVar.b() * 1000);
        p(aVar.a());
        x(aVar.f());
        w(aVar.g());
        e(aVar.p());
        this.f4753q = aVar.k();
        int iM = aVar.m();
        this.f4751o = iM;
        this.f4752p = aVar.o();
        this.f4755s = aVar.l();
        if (aVar instanceof d) {
            this.f4754r = ((d) aVar).r();
        }
        f(String.valueOf(iM));
        am(aVar.q());
        a(aVar.e());
    }

    public final boolean ae() {
        return this.f4753q == 1;
    }

    public final int af() {
        return this.f4751o;
    }

    public final int ag() {
        return this.f4752p;
    }

    public final boolean ah() {
        return this.f4754r;
    }

    public final int ai() {
        return this.f4755s;
    }

    public final String toString() {
        return "ThirdPartyAdSetting{adSourceInterType=" + this.f4751o + ", adSourceShakeType=" + this.f4752p + ", nativeRenderingType=" + this.f4753q + ", isShowCloseButton=" + this.f4754r + ", probabilityForDelayShowCloseButtonInEndCard=" + this.f4532e + ", MinDelayTimeWhenShowCloseButton=" + this.f4533f + ", MaxDelayTimeWhenShowCloseButton=" + this.f4534g + ", interstitialType='" + this.f4535h + "', rewardTime=" + this.f4536i + ", isRewardForPlayFail=" + this.f4537j + ", closeClickType=" + this.f4538k + ", splashImageScaleType=" + this.f4539l + ", impressionMonitorTime=" + this.f4540m + '}';
    }
}
