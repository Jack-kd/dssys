package com.smartdigimkt.w2;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;
import com.smartdigimkt.sdk.basead.webtemplet.adformat.WTCommonJSBridgePlugin;
import com.smartdigimkt.sdk.basead.webtemplet.adformat.intestitial.WTScreenJSBridgePlugin;
import com.smartdigimkt.sdk.basead.webtemplet.adformat.splash.WTSplashJSBridgePlugin;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class e {

    /* renamed from: b, reason: collision with root package name */
    public static HashMap f44881b = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final WTWebView f44882a;

    public e(WTWebView wTWebView) {
        this.f44882a = wTWebView;
        try {
            if (f44881b == null) {
                f44881b = new HashMap();
            }
            f44881b.put(com.anythink.core.common.m.f.f5776Z, WTCommonJSBridgePlugin.class);
            if (f44881b == null) {
                f44881b = new HashMap();
            }
            f44881b.put(MediationConstant.RIT_TYPE_SPLASH, WTSplashJSBridgePlugin.class);
            if (f44881b == null) {
                f44881b = new HashMap();
            }
            f44881b.put("inter", WTScreenJSBridgePlugin.class);
            if (f44881b == null) {
                f44881b = new HashMap();
            }
            f44881b.put("reward", WTScreenJSBridgePlugin.class);
        } catch (ClassNotFoundException unused) {
        }
    }
}
