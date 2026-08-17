package com.smartdigimkt.z4;

import android.text.TextUtils;
import android.util.Pair;
import com.smartdigimkt.sdk.api.AdError;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class e implements com.smartdigimkt.l4.b {

    /* renamed from: a, reason: collision with root package name */
    public final com.smartdigimkt.i5.d f45460a;

    public e(String str, com.smartdigimkt.i5.d dVar) {
        this.f45460a = dVar;
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2) {
        this.f45460a.getClass();
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, Object obj) {
        try {
            Pair pairA = a(obj);
            com.smartdigimkt.k4.a aVar = (com.smartdigimkt.k4.a) pairA.first;
            if (aVar != null) {
                this.f45460a.a(aVar);
            } else {
                this.f45460a.a((List) pairA.second);
            }
        } catch (Throwable th) {
            this.f45460a.a(com.smartdigimkt.k4.b.a("10008", "onLoadFinish in error." + th));
        }
    }

    @Override // com.smartdigimkt.l4.b
    public final void a(int i2, String str, AdError adError) {
        this.f45460a.a(com.smartdigimkt.k4.b.a("10008", adError.getErrorInfo()));
    }

    public static Pair a(Object obj) {
        String string;
        ArrayList arrayList = new ArrayList();
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("data");
            int iOptInt = jSONObject.optInt("code", 0);
            String strOptString = jSONObject.optString("msg", "");
            if (iOptInt == 0 && jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    com.smartdigimkt.o3.b bVarA = com.smartdigimkt.o3.b.a(jSONArrayOptJSONArray.optJSONObject(i2));
                    if (bVarA != null) {
                        if (!TextUtils.isEmpty(bVarA.f42226f)) {
                            if (!TextUtils.isEmpty(bVarA.f42252o)) {
                                JSONObject jSONObject2 = new JSONObject();
                                try {
                                    jSONObject2.put("unit_id", bVarA.f42252o);
                                    jSONObject2.put("error_msg", bVarA.f42226f);
                                    jSONArray.put(jSONObject2);
                                } catch (Throwable unused) {
                                }
                            }
                        } else {
                            arrayList.add(bVarA);
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    return new Pair(null, arrayList);
                }
                if (jSONArray.length() > 0) {
                    string = jSONArray.toString();
                } else {
                    string = "parse bidding result failed.";
                }
                return new Pair(com.smartdigimkt.k4.b.a("10008", string), arrayList);
            }
            return new Pair(com.smartdigimkt.k4.b.a("10008", iOptInt + " " + strOptString), arrayList);
        }
        return new Pair(com.smartdigimkt.k4.b.a("10008", "The result is not a JSONObject."), arrayList);
    }
}
