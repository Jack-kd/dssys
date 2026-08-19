package com.bytedance.sdk.openadsdk.mediation;

import com.byazt.kj.hp;
import com.bytedance.sdk.openadsdk.AdSlot;
import java.util.List;
import okhttp3.internal.ws.WebSocketProtocol;

@hp(hp = {0, 124, 125, WebSocketProtocol.PAYLOAD_SHORT, 127, 1448})
/* loaded from: classes3.dex */
public class MediationPreloadRequestInfo implements IMediationPreloadRequestInfo {
    private int hp;
    private List<String> jx;

    /* renamed from: l, reason: collision with root package name */
    private AdSlot f28970l;

    public MediationPreloadRequestInfo(int i2, AdSlot adSlot, List<String> list) {
        this.hp = i2;
        this.f28970l = adSlot;
        this.jx = list;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationPreloadRequestInfo
    public AdSlot getAdSlot() {
        return this.f28970l;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationPreloadRequestInfo
    public int getAdType() {
        return this.hp;
    }

    @Override // com.bytedance.sdk.openadsdk.mediation.IMediationPreloadRequestInfo
    public List<String> getPrimeRitList() {
        return this.jx;
    }
}
