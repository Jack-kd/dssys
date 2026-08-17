package com.sigmob.sdk.nativead;

import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.common.ah;
import com.sigmob.sdk.base.models.BaseAdUnit;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: com.sigmob.sdk.nativead.i, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1353i implements ah {

    /* renamed from: a, reason: collision with root package name */
    public static final String f38407a = "NativeAdViewAbilitySessionManager";

    /* renamed from: b, reason: collision with root package name */
    private final HashSet<C1352h> f38408b;

    /* renamed from: c, reason: collision with root package name */
    private BaseAdUnit f38409c = null;

    public C1353i() {
        HashSet<C1352h> hashSet = new HashSet<>();
        this.f38408b = hashSet;
        hashSet.add(new C1352h());
    }

    @Override // com.sigmob.sdk.base.common.ah
    public void a() {
        if (this.f38409c == null) {
            SigmobLog.e("endDisplaySession() called mAdUnit is null");
            return;
        }
        Iterator<C1352h> it = this.f38408b.iterator();
        while (it.hasNext()) {
            it.next().b(this.f38409c);
        }
        this.f38409c.setSessionManager(null);
        this.f38409c.destroy();
        this.f38409c = null;
    }

    @Override // com.sigmob.sdk.base.common.ah
    public void a(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            SigmobLog.e("createDisplaySession() called mAdUnit is null");
            return;
        }
        Iterator<C1352h> it = this.f38408b.iterator();
        while (it.hasNext()) {
            it.next().a(baseAdUnit);
        }
        this.f38409c = baseAdUnit;
        baseAdUnit.setSessionManager(this);
    }

    @Override // com.sigmob.sdk.base.common.ah
    public void a(String str, int i2) {
        SigmobLog.d("NativeAdViewAbilitySessionManager#recordDisplayEvent: event = " + str + ", currentPosition = " + i2);
        if (this.f38409c == null) {
            SigmobLog.e("createDisplaySession() called mAdUnit is null");
            return;
        }
        Iterator<C1352h> it = this.f38408b.iterator();
        while (it.hasNext()) {
            it.next().a(this.f38409c, str, i2);
        }
    }
}
