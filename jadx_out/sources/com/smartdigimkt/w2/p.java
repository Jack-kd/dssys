package com.smartdigimkt.w2;

import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.anythink.core.e.m;
import com.smartdigimkt.sdk.basead.webtemplet.WTWebView;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f44897a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WTWebView f44898b;

    public p(WTWebView wTWebView, String str) {
        this.f44898b = wTWebView;
        this.f44897a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.smartdigimkt.l3.a aVar;
        WTWebView wTWebView = this.f44898b;
        com.smartdigimkt.m3.c cVar = wTWebView.f44076e;
        com.smartdigimkt.l3.a aVar2 = wTWebView.f44077f;
        String str = this.f44897a;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.smartdigimkt.q3.c cVar2 = new com.smartdigimkt.q3.c();
        if (TextUtils.isEmpty(str)) {
            aVar = aVar2;
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has(f.a.f3242b)) {
                    cVar2.f42817a = jSONObject.optString(f.a.f3242b, "");
                }
                if (jSONObject.has("requestid")) {
                    cVar2.f42818b = jSONObject.optString("requestid", "");
                }
                if (jSONObject.has("unitid")) {
                    cVar2.f42819c = jSONObject.optString("unitid", "");
                }
                if (jSONObject.has(com.anythink.core.common.d.f.f2470c)) {
                    cVar2.f42820d = jSONObject.optString(com.anythink.core.common.d.f.f2470c, "");
                }
                if (jSONObject.has("sessionid")) {
                    cVar2.f42821e = jSONObject.optString("sessionid", "");
                }
                if (jSONObject.has("groupid")) {
                    cVar2.f42822f = jSONObject.optString("groupid", "");
                }
                if (jSONObject.has("unitgroupid")) {
                    cVar2.f42823g = jSONObject.optString("unitgroupid", "");
                }
                if (jSONObject.has("timestamp")) {
                    cVar2.f42824h = jSONObject.optString("timestamp", "");
                }
                if (jSONObject.has("asid")) {
                    cVar2.f42825i = jSONObject.optString("asid", "");
                }
                if (jSONObject.has("refresh")) {
                    cVar2.f42826j = jSONObject.optString("refresh", "");
                }
                if (jSONObject.has(com.anythink.core.common.m.f.bh)) {
                    cVar2.f42809O = jSONObject.optInt(com.anythink.core.common.m.f.bh, 0);
                }
                if (jSONObject.has("traffic_group_id")) {
                    cVar2.f42827k = jSONObject.optString("traffic_group_id", "");
                }
                if (jSONObject.has("msg")) {
                    cVar2.f42828l = jSONObject.optString("msg", "");
                }
                if (jSONObject.has("msg1")) {
                    cVar2.f42829m = jSONObject.optString("msg1", "");
                }
                if (jSONObject.has("msg2")) {
                    cVar2.f42830n = jSONObject.optString("msg2", "");
                }
                if (jSONObject.has("msg3")) {
                    cVar2.f42831o = jSONObject.optString("msg3", "");
                }
                if (jSONObject.has("msg4")) {
                    cVar2.f42832p = jSONObject.optString("msg4", "");
                }
                if (jSONObject.has("msg5")) {
                    cVar2.f42833q = jSONObject.optString("msg5", "");
                }
                if (jSONObject.has("msg6")) {
                    cVar2.f42834r = jSONObject.optString("msg6", "");
                }
                if (jSONObject.has("msg7")) {
                    cVar2.f42835s = jSONObject.optString("msg7", "");
                }
                if (jSONObject.has("msg8")) {
                    cVar2.f42836t = jSONObject.optString("msg8", "");
                }
                if (jSONObject.has("msg9")) {
                    cVar2.f42837u = jSONObject.optString("msg9", "");
                }
                if (jSONObject.has("msg10")) {
                    cVar2.f42838v = jSONObject.optString("msg10", "");
                }
                if (jSONObject.has("msg11")) {
                    cVar2.f42839w = jSONObject.optString("msg11", "");
                }
                if (jSONObject.has("msg12")) {
                    cVar2.f42840x = jSONObject.optString("msg12", "");
                }
                if (jSONObject.has("msg13")) {
                    cVar2.f42841y = jSONObject.optString("msg13", "");
                }
                if (jSONObject.has("msg14")) {
                    cVar2.f42842z = jSONObject.optString("msg14", "");
                }
                if (jSONObject.has("msg15")) {
                    cVar2.f42795A = jSONObject.optString("msg15", "");
                }
                if (jSONObject.has(m.a.f8918T)) {
                    cVar2.f42803I = jSONObject.optString(m.a.f8918T, "");
                }
                if (jSONObject.has(com.anythink.core.common.m.f.aj)) {
                    cVar2.f42804J = jSONObject.optString(com.anythink.core.common.m.f.aj, "");
                }
                if (jSONObject.has(m.a.aa)) {
                    cVar2.f42805K = jSONObject.optJSONObject(m.a.aa);
                }
                if (jSONObject.has("adap_c")) {
                    cVar2.f42810P = jSONObject.optJSONObject("adap_c");
                }
                cVar2.f42806L = jSONObject.optString("real_p", "");
                cVar2.f42807M = jSONObject.optInt("real_g", -1);
                cVar2.f42808N = jSONObject.optInt("real_t", -1);
                if (jSONObject.has("x_c")) {
                    cVar2.f42811Q = jSONObject.optString("x_c");
                }
                if (jSONObject.has("tp_bid_id_req_id")) {
                    cVar2.f42813S = jSONObject.optString("tp_bid_id_req_id", "");
                }
                if (jSONObject.has("link_type")) {
                    cVar2.f42815U = jSONObject.optString("link_type", "");
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            aVar = aVar2;
        }
        cVar2.a(aVar);
        com.smartdigimkt.y3.h.a(cVar2);
    }
}
