package com.kwad.sdk.collector;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class g {
    public static int PERMISSION_DENIED = 2;
    public static int PERMISSION_GRANTED = 1;
    public static int aJf;
    private String aJe;
    private int state;

    public g(String str, int i2) {
        this.aJe = str;
        this.state = i2;
    }

    public static JSONArray C(List<g> list) {
        JSONArray jSONArray = new JSONArray();
        if (list != null) {
            Iterator<g> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().toJson());
            }
        }
        return jSONArray;
    }

    private String Ib() {
        int iLastIndexOf;
        String str = this.aJe;
        return !TextUtils.isEmpty(str) ? ((str.startsWith("com.android.") || str.startsWith("android.permission")) && (iLastIndexOf = str.lastIndexOf(com.anythink.core.common.d.i.f2495E)) < str.length() + (-1)) ? str.substring(iLastIndexOf + 1) : str : str;
    }

    private JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", Ib());
            jSONObject.put("state", this.state);
            return jSONObject;
        } catch (JSONException e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
            return jSONObject;
        }
    }
}
