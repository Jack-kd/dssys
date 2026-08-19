package com.sigmob.sdk.newInterstitial;

import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.ah;
import com.sigmob.sdk.base.models.BaseAdUnit;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes4.dex */
public class c implements ah {

    /* renamed from: a, reason: collision with root package name */
    public static final String f38560a = "InterstitialAdViewAbilitySessionManager";

    /* renamed from: b, reason: collision with root package name */
    private final HashSet<b> f38561b;

    /* renamed from: c, reason: collision with root package name */
    private BaseAdUnit f38562c = null;

    public c() {
        HashSet<b> hashSet = new HashSet<>();
        this.f38561b = hashSet;
        hashSet.add(new b());
    }

    @Override // com.sigmob.sdk.base.common.ah
    public void a() {
        if (this.f38562c == null) {
            SigmobLog.e("endDisplaySession() called mAdUnit is null");
            return;
        }
        Iterator<b> it = this.f38561b.iterator();
        while (it.hasNext()) {
            it.next().b(this.f38562c);
        }
        this.f38562c.setSessionManager(null);
        this.f38562c.destroy();
        C1258h.b(this.f38562c);
        this.f38562c = null;
    }

    @Override // com.sigmob.sdk.base.common.ah
    public void a(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            SigmobLog.e("createDisplaySession() called mAdUnit is null");
            return;
        }
        Iterator<b> it = this.f38561b.iterator();
        while (it.hasNext()) {
            it.next().a(baseAdUnit);
        }
        this.f38562c = baseAdUnit;
        baseAdUnit.setSessionManager(this);
    }

    @Override // com.sigmob.sdk.base.common.ah
    public void a(String str, int i2) {
        SigmobLog.d("InterstitialAdViewAbilitySessionManager#recordDisplayEvent: event = " + str + ", currentPosition = " + i2);
        if (this.f38562c == null) {
            SigmobLog.e("createDisplaySession() called mAdUnit is null");
            return;
        }
        Iterator<b> it = this.f38561b.iterator();
        while (it.hasNext()) {
            it.next().a(this.f38562c, str, i2);
        }
    }
}
