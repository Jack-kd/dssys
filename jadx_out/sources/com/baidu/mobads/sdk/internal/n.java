package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import com.baidu.mobads.sdk.api.CpuChannelResponse;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    private int f11570a;

    /* renamed from: b, reason: collision with root package name */
    private String f11571b;

    public static List<CpuChannelResponse> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    n nVarA = a(jSONArray.getJSONObject(i2));
                    if (nVarA != null) {
                        arrayList.add(new CpuChannelResponse(nVarA));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    public String b() {
        return this.f11571b;
    }

    private static n a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        int iOptInt = jSONObject.optInt("id", -1);
        String strOptString = jSONObject.optString("name", "");
        if (iOptInt == -1 || TextUtils.isEmpty(strOptString)) {
            return null;
        }
        n nVar = new n();
        nVar.f11570a = iOptInt;
        nVar.f11571b = strOptString;
        return nVar;
    }

    public int a() {
        return this.f11570a;
    }
}
