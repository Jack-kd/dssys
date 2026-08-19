package com.bytedance.sdk.openadsdk;

import com.byazt.kj.hp;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 2482})
/* loaded from: classes3.dex */
public class TTLocation implements LocationProvider {
    private double hp;

    /* renamed from: l, reason: collision with root package name */
    private double f28898l;

    public TTLocation(double d2, double d3) {
        this.hp = d2;
        this.f28898l = d3;
    }

    @Override // com.bytedance.sdk.openadsdk.LocationProvider
    public double getLatitude() {
        return this.hp;
    }

    @Override // com.bytedance.sdk.openadsdk.LocationProvider
    public double getLongitude() {
        return this.f28898l;
    }

    public void setLatitude(double d2) {
        this.hp = d2;
    }

    public void setLongitude(double d2) {
        this.f28898l = d2;
    }
}
