package com.sigmob.sdk.base.network;

import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequestUtil;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.windad.WindAdError;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36482a = "f";

    /* renamed from: b, reason: collision with root package name */
    private static final List<String> f36483b = new ArrayList<String>() { // from class: com.sigmob.sdk.base.network.f.1
        {
            add("998");
        }
    };

    public interface a {
        void a(int i2, String str, String str2, LoadAdRequest loadAdRequest);

        void a(List<BaseAdUnit> list, LoadAdRequest loadAdRequest);
    }

    public static void a(LoadAdRequest loadAdRequest, a aVar) {
        com.sigmob.sdk.base.utils.k.a(3, f36482a, "load", loadAdRequest, (Map<String, Object>) null);
        if (Networking.getSigRequestQueue() == null) {
            a(aVar, WindAdError.ERROR_SIGMOB_NETWORK.getErrorCode(), "request queue is null.", null, loadAdRequest);
            return;
        }
        try {
            String bidToken = loadAdRequest.getBidToken();
            String placementId = loadAdRequest.getPlacementId();
            String adx_id = loadAdRequest.getAdx_id();
            boolean z2 = com.sigmob.sdk.base.utils.s.b(adx_id) && f36483b.contains(adx_id);
            com.sigmob.sdk.base.o oVarA = com.sigmob.sdk.base.o.a();
            String strC = loadAdRequest.getAdType() == 5 ? oVarA.c(z2) : oVarA.a(z2);
            try {
                if (com.sigmob.sdk.base.utils.s.b(bidToken)) {
                    strC = oVarA.b(z2);
                }
            } catch (Throwable th) {
                com.sigmob.sdk.base.utils.k.f(f36482a, "loadAd: placementId = " + placementId + ", error = " + th.getMessage(), new Object[0]);
            }
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) strC)) {
                WindAdError windAdError = WindAdError.ERROR_SIGMOB_BAD_REQUEST;
                a(aVar, windAdError.getErrorCode(), windAdError.getMessage(), null, loadAdRequest);
            } else if (SigmobRequestUtil.isConnection(new URL(strC).getHost())) {
                Networking.getSigRequestQueue().add(new com.sigmob.sdk.base.network.a(strC, loadAdRequest, aVar));
            } else {
                a(aVar, WindAdError.ERROR_SIGMOB_NETWORK.getErrorCode(), "network is disconnection.", null, loadAdRequest);
            }
        } catch (Throwable th2) {
            a(aVar, WindAdError.ERROR_SIGMOB_NETWORK.getErrorCode(), th2.getMessage(), null, loadAdRequest);
        }
    }

    public static void a(a aVar, int i2, String str, String str2, LoadAdRequest loadAdRequest) {
        HashMap map = new HashMap();
        map.put("code", Integer.valueOf(i2));
        map.put("msg", str);
        com.sigmob.sdk.base.utils.k.a(6, f36482a, "load(failure)", loadAdRequest, map);
        if (aVar == null) {
            return;
        }
        aVar.a(i2, str, str2, loadAdRequest);
        com.sigmob.sdk.manager.d.a().a(loadAdRequest);
    }

    public static void a(a aVar, List<BaseAdUnit> list, LoadAdRequest loadAdRequest) {
        if (com.sigmob.sdk.base.utils.f.b(list)) {
            Iterator<BaseAdUnit> it = list.iterator();
            while (it.hasNext()) {
                com.sigmob.sdk.base.utils.k.a(3, f36482a, "onload", it.next(), (Map<String, Object>) null);
            }
        }
        if (aVar == null) {
            return;
        }
        aVar.a(list, loadAdRequest);
        com.sigmob.sdk.manager.d.a().a(loadAdRequest);
    }
}
