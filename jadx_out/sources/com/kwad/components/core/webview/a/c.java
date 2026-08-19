package com.kwad.components.core.webview.a;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.model.AdInfo;

@KsJson
/* loaded from: classes4.dex */
public class c extends com.kwad.sdk.core.response.a.a implements com.kwad.sdk.core.b {
    public String PC;
    public String apm;
    public String apn;
    public int apo;

    public final AdInfo.SmallAppJumpInfo bB(String str) {
        AdInfo.SmallAppJumpInfo smallAppJumpInfo = new AdInfo.SmallAppJumpInfo();
        smallAppJumpInfo.mediaSmallAppId = str;
        smallAppJumpInfo.originId = this.apm;
        smallAppJumpInfo.smallAppJumpUrl = this.apn;
        return smallAppJumpInfo;
    }
}
