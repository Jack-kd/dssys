package com.smartdigimkt.sdk.basead.webtemplet.adformat.intestitial;

import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;
import com.smartdigimkt.sdk.basead.webtemplet.adformat.WTCommonJSBridgePlugin;
import com.smartdigimkt.y2.a;

/* loaded from: classes5.dex */
public class WTScreenJSBridgePlugin extends WTCommonJSBridgePlugin {
    @Override // com.smartdigimkt.sdk.basead.webtemplet.adformat.WTCommonJSBridgePlugin
    public void initialize(WTWebView wTWebView) {
        super.initialize(wTWebView);
        try {
            if (wTWebView.getJsCommunicationObject() == null || !(wTWebView.getJsCommunicationObject() instanceof a)) {
                return;
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }
}
