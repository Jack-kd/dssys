package com.sigmob.sdk.base.common;

import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.models.BaseAdUnit;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* renamed from: com.sigmob.sdk.base.common.v, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1282v implements ah {

    /* renamed from: a, reason: collision with root package name */
    public static final String f36034a = "ExternalViewAbilitySessionManager";

    /* renamed from: b, reason: collision with root package name */
    private final Set<InterfaceC1281u> f36035b;

    /* renamed from: c, reason: collision with root package name */
    private BaseAdUnit f36036c;

    public C1282v() {
        HashSet hashSet = new HashSet();
        this.f36035b = hashSet;
        hashSet.add(new af());
    }

    @Override // com.sigmob.sdk.base.common.ah
    public void a() {
        SigmobLog.d("endDisplaySession() called");
        if (this.f36036c == null) {
            SigmobLog.e("endDisplaySession() called mAdUnit is null");
            return;
        }
        Iterator<InterfaceC1281u> it = this.f36035b.iterator();
        while (it.hasNext()) {
            it.next().b(this.f36036c);
        }
        this.f36036c.setSessionManager(null);
        this.f36036c.destroy();
        this.f36036c = null;
    }

    public void a(int i2, int i3) {
        if (this.f36036c == null) {
            SigmobLog.e("onVideoPrepared() called mAdUnit is null");
            return;
        }
        Iterator<InterfaceC1281u> it = this.f36035b.iterator();
        while (it.hasNext()) {
            it.next().a(this.f36036c, i2, i3);
        }
    }

    @Override // com.sigmob.sdk.base.common.ah
    public void a(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            SigmobLog.e("createDisplaySession() called adUnit is null");
            return;
        }
        this.f36036c = baseAdUnit;
        baseAdUnit.setSessionManager(this);
        Iterator<InterfaceC1281u> it = this.f36035b.iterator();
        while (it.hasNext()) {
            it.next().a(baseAdUnit);
        }
    }

    @Override // com.sigmob.sdk.base.common.ah
    public void a(String str, int i2) {
        SigmobLog.d("ExternalViewAbilitySessionManager#recordDisplayEvent: event = " + str + ", currentPosition = " + i2);
        if (this.f36036c == null) {
            SigmobLog.e("recordDisplayEvent() called mAdUnit is null");
            return;
        }
        Iterator<InterfaceC1281u> it = this.f36035b.iterator();
        while (it.hasNext()) {
            it.next().a(this.f36036c, str, i2);
        }
    }

    public void a(boolean z2, int i2) {
        if (this.f36036c == null) {
            SigmobLog.e("onVideoShowSkip() called mAdUnit is null");
            return;
        }
        Iterator<InterfaceC1281u> it = this.f36035b.iterator();
        while (it.hasNext()) {
            it.next().a(this.f36036c, z2, i2);
        }
    }
}
