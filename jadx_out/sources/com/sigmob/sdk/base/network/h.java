package com.sigmob.sdk.base.network;

import com.czhj.sdk.common.track.AdTracker;
import com.czhj.sdk.common.track.TrackManager;
import com.czhj.sdk.logger.SigmobLogger;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.VolleyError;
import com.sigmob.sdk.Sigmob;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.common.ai;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.SigMacroCommon;
import java.util.List;

/* loaded from: classes4.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36487a = "h";

    public static void a(AdTracker adTracker, BaseAdUnit baseAdUnit, boolean z2) {
        a(adTracker, baseAdUnit, z2, true, true, null);
    }

    public static int b(BaseAdUnit baseAdUnit, String str, boolean z2) {
        if (baseAdUnit == null || com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
            return -1;
        }
        List<ai> adTracker = baseAdUnit.getAdTracker(str);
        if (adTracker == null || adTracker.isEmpty()) {
            return -2;
        }
        for (ai aiVar : adTracker) {
            if (z2) {
                aiVar.setSource("js");
            }
            baseAdUnit.getMacroCommon().addMarcoKey(SigMacroCommon._PLAYFIRSTFRAME_, "1");
            a((AdTracker) aiVar, baseAdUnit, false);
        }
        return 0;
    }

    public static void a(AdTracker adTracker, final BaseAdUnit baseAdUnit, boolean z2, boolean z3, final boolean z4, final TrackManager.Listener listener) {
        if (adTracker == null) {
            return;
        }
        String source = adTracker.getSource();
        String event = adTracker.getEvent();
        String str = f36487a;
        com.sigmob.sdk.base.utils.k.b(str, "sendTracking: event = " + event, new Object[0]);
        if ((event.equals(C1244a.f35691s) || event.equals("click")) && (source.equals("js") || source.equals("native"))) {
            SigmobLogger.d(str, "sendTracking: source = " + source + ", event = " + event, new Object[0]);
        }
        if (adTracker.getMessageType() == AdTracker.MessageType.TRACKING_URL) {
            if (!adTracker.isTracked() || z2) {
                String url = adTracker.getUrl();
                SigMacroCommon macroCommon = Sigmob.getInstance().getMacroCommon();
                final String strMacroProcess = baseAdUnit == null ? macroCommon.macroProcess(url) : baseAdUnit.getMacroCommon().macroProcess(url, macroCommon.getMacroMap());
                adTracker.setUrl(strMacroProcess);
                TrackManager.sendTracking(adTracker, null, z2, z3, new TrackManager.Listener() { // from class: com.sigmob.sdk.base.network.h.1
                    @Override // com.czhj.sdk.common.track.TrackManager.Listener
                    public void onErrorResponse(AdTracker adTracker2, VolleyError volleyError) {
                        if (z4) {
                            ad.a(adTracker2, strMacroProcess, baseAdUnit, volleyError);
                        }
                        TrackManager.Listener listener2 = listener;
                        if (listener2 != null) {
                            listener2.onErrorResponse(adTracker2, volleyError);
                        }
                    }

                    @Override // com.czhj.sdk.common.track.TrackManager.Listener
                    public void onSuccess(AdTracker adTracker2, NetworkResponse networkResponse) {
                        if (z4) {
                            ad.a(adTracker2, strMacroProcess, baseAdUnit, networkResponse, (ad.a) null);
                        }
                        TrackManager.Listener listener2 = listener;
                        if (listener2 != null) {
                            listener2.onSuccess(adTracker2, networkResponse);
                        }
                    }
                });
            }
        }
    }

    public static void a(BaseAdUnit baseAdUnit, String str) {
        a(baseAdUnit, str, false);
    }

    public static void a(BaseAdUnit baseAdUnit, String str, boolean z2) {
        List<ai> adTracker;
        if (baseAdUnit == null || com.sigmob.sdk.base.utils.s.a((CharSequence) str) || (adTracker = baseAdUnit.getAdTracker(str)) == null || adTracker.isEmpty()) {
            return;
        }
        for (ai aiVar : adTracker) {
            baseAdUnit.getMacroCommon().addMarcoKey(SigMacroCommon._PLAYFIRSTFRAME_, "1");
            a(aiVar, baseAdUnit, z2);
        }
    }
}
