package com.smartdigimkt.b5;

import android.text.TextUtils;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.k;
import com.anythink.core.e.m;
import com.meishu.sdk.platform.gdt.GDTConstants;
import com.smartdigimkt.a5.e;
import com.smartdigimkt.a5.f;
import com.smartdigimkt.g3.c;
import com.smartdigimkt.sdk.api.SDMAdConst;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f39594a = {"unit_id", "unitid", "slot_id", "placement_id", "zone_id", "ad_place_id", "position_id", GDTConstants.POS_ID, "placement_name", "spot_id", "ad_tag", "ad_id", "plid", "space_id", "location", "tagid", "adslot_id", ATAdConst.NETWORK_REQUEST_PARAMS_KEY.INSTANCE_ID, "pid"};

    public static ArrayList a(e eVar, JSONArray jSONArray, int i2, int i3) {
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < jSONArray.length(); i4++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i4);
                if (jSONObject != null) {
                    f fVarA = a(i3, i2, jSONObject, eVar);
                    if (fVarA.f39457r <= 0.0d) {
                        double d2 = eVar.f39429s;
                        if (d2 > 0.0d) {
                            fVarA.f39457r = d2;
                        }
                    }
                    arrayList.add(fVarA);
                }
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    public static f a(int i2, int i3, JSONObject jSONObject, e eVar) {
        JSONArray jSONArrayOptJSONArray;
        int i4 = (i3 == 0 || i3 == 4 || i3 == 8) ? 0 : 1;
        f fVar = new f(i2);
        fVar.f39453n = i3;
        fVar.f39446g = i4;
        if (!jSONObject.isNull(k.f5360E)) {
            jSONObject.optString(k.f5360E);
        }
        if (!jSONObject.isNull(k.f5357B)) {
            jSONObject.optInt(k.f5357B);
        }
        if (!jSONObject.isNull(k.f5358C)) {
            jSONObject.optInt(k.f5358C);
        }
        if (jSONObject.isNull("nw_firm_id")) {
            fVar.f39441b = -1;
        } else {
            fVar.f39441b = jSONObject.optInt("nw_firm_id");
        }
        if (jSONObject.isNull("content")) {
            fVar.f39443d = "";
            fVar.f39444e = new HashMap();
        } else {
            String strOptString = jSONObject.optString("content");
            LinkedHashMap linkedHashMapA = com.smartdigimkt.c5.k.a(strOptString);
            fVar.f39443d = strOptString;
            fVar.f39444e = linkedHashMapA;
            String str = eVar.f39415e;
            try {
                int i5 = fVar.f39453n;
                if (i5 != 3 && i5 != 7) {
                    String[] strArr = f39594a;
                    for (int i6 = 0; i6 < 19; i6++) {
                        if (!TextUtils.isEmpty((String) com.smartdigimkt.c5.k.a(linkedHashMapA, strArr[i6], ""))) {
                            break;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        if (jSONObject.isNull(k.f5356A)) {
            fVar.f39442c = "";
        } else {
            fVar.f39442c = jSONObject.optString(k.f5356A);
        }
        if (!jSONObject.isNull(k.f5361F)) {
            jSONObject.optString(k.f5361F);
        }
        if (!jSONObject.isNull(k.f5406y)) {
            jSONObject.optInt(k.f5406y);
        }
        if (!jSONObject.isNull(k.f5404w)) {
            jSONObject.optInt(k.f5404w);
        }
        if (!jSONObject.isNull(k.f5405x)) {
            jSONObject.optInt(k.f5405x);
        }
        if (!jSONObject.isNull(k.f5362G)) {
            jSONObject.optLong(k.f5362G);
        }
        if (jSONObject.isNull("unit_id")) {
            fVar.f39450k = "";
        } else {
            fVar.f39450k = jSONObject.optString("unit_id");
        }
        if (jSONObject.isNull("ecpm")) {
            fVar.f39445f = 0.0d;
        } else {
            fVar.f39445f = jSONObject.optDouble("ecpm", 0.0d);
        }
        if (!jSONObject.isNull(k.f5365J)) {
            jSONObject.optInt(k.f5365J);
        }
        if (!jSONObject.isNull(k.f5367L)) {
            jSONObject.optString(k.f5367L);
        }
        if (!jSONObject.isNull(k.f5368M)) {
            jSONObject.optInt(k.f5368M);
        }
        if (!jSONObject.isNull(k.f5369N)) {
            jSONObject.optInt(k.f5369N);
        }
        if (jSONObject.isNull("payload")) {
            fVar.f39447h = "";
        } else {
            fVar.f39447h = jSONObject.optString("payload");
        }
        if (jSONObject.isNull("error")) {
            fVar.f39448i = "";
        } else {
            fVar.f39448i = jSONObject.optString("error");
        }
        if (!jSONObject.isNull(k.f5370O)) {
            jSONObject.optLong(k.f5370O);
        }
        if (!jSONObject.isNull(k.f5371P)) {
            jSONObject.optLong(k.f5371P);
        }
        if (!jSONObject.isNull(k.f5372Q)) {
            jSONObject.optLong(k.f5372Q);
        }
        if (jSONObject.isNull(k.an)) {
            fVar.f39449j = i4 ^ 1;
        } else {
            fVar.f39449j = jSONObject.optInt(k.an);
        }
        if (!jSONObject.isNull(k.f5373R)) {
            jSONObject.optInt(k.f5373R);
        }
        if (!jSONObject.isNull(k.f5374S)) {
            jSONObject.optInt(k.f5374S);
        }
        if (!jSONObject.isNull(k.f5375T)) {
            jSONObject.optInt(k.f5375T);
        }
        if (jSONObject.isNull(k.f5376U)) {
            fVar.f39451l = "publisher_defined";
        } else {
            fVar.f39451l = jSONObject.optString(k.f5376U);
        }
        if (!jSONObject.isNull(k.f5377V)) {
            jSONObject.optLong(k.f5377V);
        }
        if (!jSONObject.isNull(k.f5378W)) {
            jSONObject.optLong(k.f5378W);
        }
        if (!jSONObject.isNull(k.f5379X)) {
            jSONObject.optDouble(k.f5379X, 0.0d);
        }
        if (!jSONObject.isNull(k.f5380Y)) {
            jSONObject.optInt(k.f5380Y);
        }
        if (!jSONObject.isNull(k.f5381Z)) {
            jSONObject.optInt(k.f5381Z);
        }
        if (jSONObject.isNull(k.aa)) {
            fVar.f39452m = 2;
        } else {
            fVar.f39452m = jSONObject.optInt(k.aa);
        }
        if (!jSONObject.isNull(k.ab)) {
            jSONObject.optInt(k.ab);
        }
        if (!jSONObject.isNull("s2s_sw")) {
            jSONObject.optInt("s2s_sw");
        }
        if (!jSONObject.isNull(k.ac)) {
            jSONObject.optInt(k.ac);
        }
        if (!jSONObject.isNull(k.ad)) {
            jSONObject.optInt(k.ad);
        }
        if (jSONObject.isNull(k.af)) {
            fVar.f39455p = 1;
        } else {
            fVar.f39455p = jSONObject.optInt(k.af);
        }
        if (jSONObject.isNull(k.ai)) {
            fVar.f39456q = "";
        } else {
            fVar.f39456q = jSONObject.optString(k.ai);
        }
        if (i3 == 7) {
            c.a(SDKContext.getInstance().d()).a(fVar.f39450k, fVar.f39456q);
        }
        if (!jSONObject.isNull(k.ag)) {
            jSONObject.optInt(k.ag);
        }
        if (!jSONObject.isNull(k.aj)) {
            jSONObject.optInt(k.aj, -1);
        }
        SDMAdConst.CURRENCY currency = SDMAdConst.CURRENCY.RMB;
        if (!jSONObject.isNull(k.ak)) {
            jSONObject.optInt(k.ak, 0);
        }
        if (jSONObject.isNull("bid_floor")) {
            fVar.f39457r = 0.0d;
        } else {
            fVar.f39457r = jSONObject.optDouble("bid_floor", 0.0d);
        }
        if (!jSONObject.isNull(k.ap)) {
            jSONObject.optInt(k.ap, -1);
        }
        if (jSONObject.isNull(k.aq)) {
            fVar.f39458s = fVar.f39445f;
        } else {
            fVar.f39458s = jSONObject.optDouble(k.aq, fVar.f39445f);
        }
        if (!jSONObject.isNull(k.ar)) {
            jSONObject.optString(k.ar, "CNY");
        }
        if (!jSONObject.isNull(k.as)) {
            jSONObject.optInt(k.as, 2);
        }
        if (!jSONObject.isNull(k.at)) {
            jSONObject.optInt(k.at);
        }
        if (!jSONObject.isNull(k.au)) {
            jSONObject.optInt(k.au, 2);
        }
        if (jSONObject.has(k.av)) {
            jSONObject.optString(k.av);
        }
        jSONObject.optLong(k.aw, 15000L);
        if (!jSONObject.isNull(m.a.ar) && (jSONArrayOptJSONArray = jSONObject.optJSONArray(m.a.ar)) != null && jSONArrayOptJSONArray.length() > 0) {
            try {
                int[] iArr = new int[jSONArrayOptJSONArray.length()];
                for (int i7 = 0; i7 < jSONArrayOptJSONArray.length(); i7++) {
                    iArr[i7] = jSONArrayOptJSONArray.getInt(i7);
                }
            } catch (Exception unused2) {
            }
        }
        fVar.f39459t = jSONObject.optInt(k.ax, 1);
        fVar.f39460u = jSONObject.optInt(k.ay, 1);
        if (!jSONObject.isNull(k.az)) {
            jSONObject.optJSONArray(k.az);
        }
        if (!jSONObject.isNull(k.aA)) {
            jSONObject.optInt(k.aA);
        }
        if (!jSONObject.isNull("ad_s_reqf_mode")) {
            jSONObject.optInt("ad_s_reqf_mode");
        }
        fVar.f39461v = jSONObject.optInt("unit_type", 0);
        jSONObject.optInt(k.aD, 0);
        jSONObject.optInt("network_id");
        jSONObject.optInt(k.aF, 2);
        fVar.f39462w = jSONObject.optDouble(k.aP, 0.0d);
        jSONObject.optDouble(k.aQ, 0.0d);
        jSONObject.optJSONObject(k.aR);
        fVar.f39463x = jSONObject.optInt(k.aS);
        jSONObject.optInt(k.aT, 1);
        com.smartdigimkt.a5.c cVar = eVar.f39435y;
        if (cVar != null) {
            com.smartdigimkt.a5.c cVar2 = new com.smartdigimkt.a5.c();
            cVar2.f39404e = cVar.f39404e;
            cVar2.f39403d = cVar.f39403d;
            cVar2.f39400a = cVar.f39400a;
            String strOptString2 = jSONObject.optString(k.aU);
            if (!TextUtils.isEmpty(strOptString2)) {
                cVar2.f39401b = strOptString2;
            }
            String strOptString3 = jSONObject.optString(k.aV);
            if (!TextUtils.isEmpty(strOptString3)) {
                cVar2.f39405f = strOptString3;
            }
            fVar.f39439C = cVar2;
        }
        fVar.f39438B = jSONObject.optDouble(k.aW, 0.0d);
        jSONObject.optInt(k.aX, 2);
        jSONObject.optLong(k.aZ, 500L);
        jSONObject.optInt(k.bb, 0);
        jSONObject.optLong(k.bc, 0L);
        jSONObject.optInt(k.bi);
        jSONObject.optLong(k.bj);
        fVar.f39465z = jSONObject.optLong(k.bk);
        fVar.f39464y = jSONObject.optDouble(k.bl, 0.0d);
        jSONObject.optInt(k.bm, 2);
        jSONObject.optInt(k.bn, 2);
        jSONObject.optInt(k.bo, 0);
        JSONObject jSONObject2 = eVar.f39436z;
        if (jSONObject2 != null) {
            jSONObject2.optString(k.bp, "");
        }
        fVar.f39437A = jSONObject.optInt(k.bq, 2);
        jSONObject.optInt(k.br, 1);
        jSONObject.optInt(k.bs, 2);
        return fVar;
    }
}
