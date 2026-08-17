package com.byazt.gg;

import android.net.Uri;
import android.text.TextUtils;
import com.byazt.gg.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 748, 19})
/* loaded from: classes2.dex */
public class jl {
    public static a.hp hp(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        a.hp hpVar = new a.hp();
        String strHp = com.byazt.ss.l.hp(str, jSONObject);
        if (strHp.contains("#")) {
            strHp = strHp.replace("#", "%23");
        }
        Uri uri = Uri.parse(strHp);
        if (uri == null) {
            return null;
        }
        hpVar.jx(strHp);
        if (!TextUtils.isEmpty(uri.getScheme())) {
            hpVar.hp(uri.getScheme());
        }
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            authority = uri.getPath();
        }
        hpVar.l(authority);
        hpVar.j(hpVar.hp() + "://" + hpVar.l());
        HashMap map = new HashMap();
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        if (queryParameterNames != null && queryParameterNames.size() > 0) {
            for (String str2 : queryParameterNames) {
                map.put(str2, com.byazt.ss.l.hp(uri.getQueryParameter(str2), jSONObject));
            }
        }
        hpVar.hp(map);
        return hpVar;
    }

    public static a.hp hp(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null) {
            return null;
        }
        a.hp hpVar = new a.hp();
        String strHp = com.byazt.ss.l.hp(jSONObject.optString("protocol"), jSONObject2);
        hpVar.l(com.byazt.ss.l.hp(jSONObject.optString("name"), jSONObject2));
        if (TextUtils.isEmpty(strHp)) {
            hpVar.hp("global");
        } else {
            hpVar.hp(strHp);
        }
        hpVar.j(hpVar.hp() + "://" + hpVar.l());
        hpVar.jx(String.valueOf(jSONObject.hashCode()));
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("args");
        HashMap map = new HashMap();
        if (jSONObjectOptJSONObject != null) {
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, com.byazt.ss.l.hp(jSONObjectOptJSONObject.opt(next), jSONObject2));
            }
        }
        hpVar.hp(map);
        return hpVar;
    }
}
