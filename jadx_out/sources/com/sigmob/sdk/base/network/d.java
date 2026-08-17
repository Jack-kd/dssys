package com.sigmob.sdk.base.network;

import android.text.TextUtils;
import android.util.Base64;
import com.czhj.sdk.common.json.JSONSerializer;
import com.czhj.sdk.common.network.SigmobRequest;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.Response;
import com.czhj.volley.VolleyError;
import com.sigmob.sdk.base.models.rtb.BidResponse;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class d extends SigmobRequest {

    /* renamed from: a, reason: collision with root package name */
    private final a f36473a;

    /* renamed from: b, reason: collision with root package name */
    private byte[] f36474b;

    public interface a extends Response.ErrorListener {
        void a(JSONObject jSONObject);
    }

    public d(String str, BidResponse bidResponse, a aVar) {
        super(str, 1, aVar);
        this.f36473a = aVar;
        setRetryPolicy(new DefaultRetryPolicy(5000, 2, 0.0f));
        setShouldCache(false);
        String strA = a(bidResponse);
        if (strA == null) {
            return;
        }
        try {
            this.f36474b = AESUtil.Encrypt(strA.getBytes(), "KGpfzbYsn4T9Jyuq");
        } catch (Exception unused) {
            SigmobLog.e("feedback body bug");
        }
    }

    private String a(BidResponse bidResponse) {
        try {
            JSONObject jSONObject = new JSONObject(JSONSerializer.Serialize(bidResponse));
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(com.umeng.ccg.a.f49756j);
            if (jSONObjectOptJSONObject != null) {
                a(jSONObjectOptJSONObject, com.umeng.analytics.pro.g.f49337X);
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(com.sigmob.sdk.base.db.a.f36070a);
            if (jSONArrayOptJSONArray != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    JSONArray jSONArray = jSONArrayOptJSONArray.getJSONObject(i2).getJSONArray("materials");
                    for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
                        a(jSONObject2, "html_snippet");
                        a(jSONObject2, "closecard_html_snippet");
                        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("main_template");
                        if (jSONObjectOptJSONObject2 != null) {
                            a(jSONObjectOptJSONObject2, com.umeng.analytics.pro.g.f49337X);
                        }
                        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("sub_template");
                        if (jSONObjectOptJSONObject3 != null) {
                            a(jSONObjectOptJSONObject3, com.umeng.analytics.pro.g.f49337X);
                        }
                    }
                }
            }
            SigmobLog.d("json " + jSONObject);
            return jSONObject.toString();
        } catch (Throwable th) {
            SigmobLog.e("Serialize error", th);
            return null;
        }
    }

    @Override // com.czhj.volley.Request, java.lang.Comparable
    public int compareTo(Object obj) {
        return 0;
    }

    @Override // com.czhj.volley.Request
    public void deliverError(VolleyError volleyError) {
        super.deliverError(volleyError);
        a aVar = this.f36473a;
        if (aVar == null) {
            return;
        }
        aVar.onErrorResponse(volleyError);
    }

    @Override // com.czhj.volley.Request
    public void deliverResponse(Object obj) {
        a aVar = this.f36473a;
        if (aVar == null) {
            return;
        }
        aVar.a(null);
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public byte[] getBody() {
        return this.f36474b;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public String getBodyContentType() {
        return "application/json";
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Map<String, String> getHeaders() {
        Map<String, String> headers = super.getHeaders();
        try {
            headers.put("agn", Base64.encodeToString(AESUtil.generateNonce(), 2));
            return headers;
        } catch (NoSuchMethodError unused) {
            headers.put("e", "1");
            return headers;
        }
    }

    private void a(JSONObject jSONObject, String str) throws JSONException {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject(str)) == null) {
            return;
        }
        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
        while (itKeys.hasNext()) {
            Object objOpt = jSONObjectOptJSONObject.opt(itKeys.next());
            if (objOpt instanceof String) {
                String str2 = (String) objOpt;
                if (TextUtils.isEmpty(str2)) {
                    continue;
                } else {
                    String strEncodeToString = Base64.encodeToString(str2.getBytes(), 2);
                    jSONObject.remove(str);
                    try {
                        jSONObject.put(str, strEncodeToString);
                    } catch (JSONException e2) {
                        throw new RuntimeException(e2);
                    }
                }
            }
        }
    }
}
