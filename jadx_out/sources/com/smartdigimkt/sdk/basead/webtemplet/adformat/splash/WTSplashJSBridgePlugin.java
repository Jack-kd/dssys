package com.smartdigimkt.sdk.basead.webtemplet.adformat.splash;

import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;
import com.smartdigimkt.sdk.basead.webtemplet.adformat.WTCommonJSBridgePlugin;
import com.smartdigimkt.z2.a;

/* loaded from: classes5.dex */
public class WTSplashJSBridgePlugin extends WTCommonJSBridgePlugin {
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
