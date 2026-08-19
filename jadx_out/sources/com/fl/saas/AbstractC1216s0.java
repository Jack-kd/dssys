package com.fl.saas;

import android.text.TextUtils;
import com.smartdigimkt.sdk.api.format.SDMAdDeepRewardResult;
import org.json.JSONObject;

/* renamed from: com.fl.saas.s0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1216s0 {
    public static String a(String str, C1188j c1188j) {
        try {
            if (TextUtils.isEmpty(str) || c1188j == null) {
                return "";
            }
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("taskId", c1188j.w2);
            if (!"mit".equals(str)) {
                if ("click".equals(str)) {
                    jSONObject.put("type", "click");
                    jSONObject2.put("down_x", c1188j.f30421E1);
                    jSONObject2.put("down_y", c1188j.f30424F1);
                    jSONObject2.put("up_x", c1188j.f30427G1);
                    jSONObject2.put("up_y", c1188j.f30430H1);
                    jSONObject2.put("abs_down_x", c1188j.f30433I1);
                    jSONObject2.put("abs_down_y", c1188j.f30436J1);
                    jSONObject2.put("abs_up_x", c1188j.f30439K1);
                    jSONObject2.put("abs_up_y", c1188j.f30442L1);
                    jSONObject2.put("clickArea", c1188j.o2);
                    jSONObject2.put("DOWN_TIME", c1188j.f30460R1);
                    jSONObject2.put("UP_TIME", c1188j.f30463S1);
                    jSONObject2.put("shake_x", c1188j.f30445M1);
                    jSONObject2.put("shake_y", c1188j.f30448N1);
                    jSONObject2.put("shake_z", c1188j.f30451O1);
                    jSONObject2.put("clickTypeValue", c1188j.f30542s0);
                    jSONObject2.put("maxShowRatio", c1188j.n2);
                    jSONObject2.put("ACH", c1188j.L2);
                }
                return jSONObject.toString();
            }
            jSONObject.put("type", "mit");
            jSONObject2.put("place_id", c1188j.f30511i);
            jSONObject2.put("reqTime", c1188j.f30520l);
            jSONObject2.put(SDMAdDeepRewardResult.KEY_TASK_TYPE, c1188j.f30523m);
            jSONObject2.put("trackId", c1188j.f30538r);
            jSONObject2.put("realWidth", c1188j.f30454P1);
            jSONObject2.put("realHeight", c1188j.f30457Q1);
            jSONObject2.put("width", c1188j.f30552v1);
            jSONObject2.put("height", c1188j.f30555w1);
            jSONObject2.put("maxShowRatio", c1188j.n2);
            jSONObject.put("msg", jSONObject2.toString());
            return jSONObject.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}
