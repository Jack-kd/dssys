package com.anythink.core.common.h;

import android.text.TextUtils;
import com.anythink.core.api.ATSDKUtils;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.f.g;
import com.anythink.core.common.f.s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class at {

    /* renamed from: a, reason: collision with root package name */
    private final String f3827a = at.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private String f3828b;

    /* renamed from: c, reason: collision with root package name */
    private List<c> f3829c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f3830d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f3831e;

    public final synchronized void a(String str, List<c> list) {
        boolean z2;
        if (TextUtils.equals(this.f3828b, str) && this.f3831e) {
            return;
        }
        this.f3828b = str;
        if (list == null || list.size() <= 0) {
            z2 = false;
        } else {
            for (int i2 = 0; i2 < list.size(); i2++) {
                by unitGroupInfo = list.get(i2).e().getUnitGroupInfo();
                if (unitGroupInfo.n() == 8 && unitGroupInfo.bd() && unitGroupInfo.bg() == 1) {
                    z2 = true;
                    break;
                }
            }
            z2 = false;
        }
        this.f3830d = z2;
        if (z2) {
            this.f3829c = list;
            this.f3831e = false;
        } else {
            this.f3829c = null;
            this.f3831e = true;
        }
    }

    public final synchronized void a(String str, String str2, String str3) {
        List<c> list;
        double d2;
        String str4;
        Map<String, Object> networkInfoMap;
        Object obj;
        if (TextUtils.equals(this.f3828b, str2) && this.f3830d && !this.f3831e && (list = this.f3829c) != null && list.size() > 0) {
            this.f3831e = true;
            try {
                ArrayList arrayList = new ArrayList();
                Collections.sort(this.f3829c);
                String strAS = "";
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                int i2 = 0;
                int i3 = 0;
                double dA = 0.0d;
                while (i2 < this.f3829c.size()) {
                    c cVar = this.f3829c.get(i2);
                    if (cVar.e() == null || cVar.e().getUnitGroupInfo() == null) {
                        d2 = 0.0d;
                    } else {
                        by unitGroupInfo = cVar.e().getUnitGroupInfo();
                        d2 = 0.0d;
                        if (TextUtils.equals(str3, unitGroupInfo.G())) {
                            strAS = cVar.i().aS();
                            jSONObject.put("nw_firm_id", unitGroupInfo.n());
                            jSONObject.put("price", a(unitGroupInfo.K()));
                            BaseAd baseAdF = cVar.f();
                            if (baseAdF != null) {
                                jSONObject.put("advertiser_name", baseAdF.getAdvertiserName());
                                jSONObject.put(g.a.f3271h, baseAdF.getTitle());
                                jSONObject.put("image_url", baseAdF.getMainImageUrl());
                                jSONObject.put("desc", baseAdF.getDescriptionText());
                                jSONObject.put(s.a.f3400b, baseAdF.getVideoUrl());
                            }
                            i3 = i2;
                        }
                    }
                    if (i2 < i3 || cVar.e() == null || cVar.e().getUnitGroupInfo() == null) {
                        str4 = strAS;
                    } else {
                        by unitGroupInfo2 = cVar.e().getUnitGroupInfo();
                        if (cVar.f() != null) {
                            networkInfoMap = cVar.f().getNetworkInfoMap();
                        } else {
                            networkInfoMap = cVar.e().getNetworkInfoMap();
                        }
                        String networkPlacementId = cVar.e().getNetworkPlacementId();
                        str4 = strAS;
                        if (unitGroupInfo2.n() == 8) {
                            if (dA == d2) {
                                dA = a(unitGroupInfo2.K());
                            }
                            if (!TextUtils.isEmpty(networkPlacementId)) {
                                String string = "";
                                if (networkInfoMap != null && (obj = networkInfoMap.get("request_id")) != null) {
                                    string = obj.toString();
                                }
                                jSONObject2.put(networkPlacementId, string + "," + String.valueOf(cVar.d() - cVar.i().ac()) + "," + a(unitGroupInfo2.K()));
                            }
                        } else if (!arrayList.contains(Integer.valueOf(unitGroupInfo2.n()))) {
                            arrayList.add(Integer.valueOf(unitGroupInfo2.n()));
                            StringBuilder sb = new StringBuilder();
                            sb.append(unitGroupInfo2.n());
                            jSONObject3.put(sb.toString(), a(unitGroupInfo2.K()));
                        }
                    }
                    i2++;
                    strAS = str4;
                }
                com.anythink.core.common.u.f.a(str, str2, strAS, dA, jSONObject2.toString(), jSONObject.toString(), jSONObject3.toString());
                this.f3829c = null;
            } catch (Throwable unused) {
            }
        }
    }

    private static double a(double d2) {
        return ATSDKUtils.getUsdChangeToRmbRate() > 0.0d ? d2 * ATSDKUtils.getUsdChangeToRmbRate() : d2;
    }
}
