package com.sigmob.sdk.base.common;

import android.os.Bundle;
import com.sigmob.sdk.base.models.BaseAdUnit;
import java.util.Map;

/* renamed from: com.sigmob.sdk.base.common.y, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public abstract class AbstractC1285y {

    /* renamed from: a, reason: collision with root package name */
    protected InterfaceC1274p f36054a;

    /* renamed from: b, reason: collision with root package name */
    protected BaseAdUnit f36055b;

    /* renamed from: c, reason: collision with root package name */
    private EventForwardingBroadcastReceiver f36056c;

    public AbstractC1285y(InterfaceC1274p interfaceC1274p) {
        this.f36054a = interfaceC1274p;
    }

    public abstract void a(InterfaceC1274p interfaceC1274p);

    public void a(BaseAdUnit baseAdUnit, Bundle bundle) {
        if (baseAdUnit == null) {
            if (com.sigmob.sdk.base.utils.v.b(this.f36054a)) {
                this.f36054a.b(null, "ad unit is unavailable.");
            }
        } else {
            EventForwardingBroadcastReceiver eventForwardingBroadcastReceiver = new EventForwardingBroadcastReceiver(baseAdUnit, this.f36054a, baseAdUnit.getUuid());
            this.f36056c = eventForwardingBroadcastReceiver;
            eventForwardingBroadcastReceiver.a(eventForwardingBroadcastReceiver);
        }
    }

    public abstract boolean a(BaseAdUnit baseAdUnit);

    public void b(BaseAdUnit baseAdUnit) {
        if (com.sigmob.sdk.base.utils.v.b(baseAdUnit)) {
            C1258h.b(baseAdUnit);
            baseAdUnit.destroy();
        }
        this.f36055b = null;
        if (com.sigmob.sdk.base.utils.v.b(this.f36056c)) {
            EventForwardingBroadcastReceiver eventForwardingBroadcastReceiver = this.f36056c;
            eventForwardingBroadcastReceiver.b(eventForwardingBroadcastReceiver);
        }
    }

    public void a(Map<String, Object> map, BaseAdUnit baseAdUnit) {
        this.f36055b = baseAdUnit;
        a(this.f36054a);
    }
}
