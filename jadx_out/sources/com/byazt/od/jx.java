package com.byazt.od;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.sigmob.sdk.base.mta.PointParamKey;
import java.util.Iterator;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1768, 30})
/* loaded from: classes3.dex */
public class jx extends hp {

    /* renamed from: j, reason: collision with root package name */
    public final JSONObject f23963j;

    public jx(Context context, com.byazt.jb.hp hpVar, String str, JSONObject jSONObject) {
        super(context, hpVar, str);
        this.f23963j = jSONObject;
    }

    private static void hp(@NonNull Intent intent, JSONObject jSONObject, JSONObject jSONObject2) {
        Iterator<String> itKeys;
        if (jSONObject == null || jSONObject2 == null || jSONObject.length() != jSONObject2.length() || intent == null || (itKeys = jSONObject.keys()) == null) {
            return;
        }
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strOptString = jSONObject2.optString(next);
            if (strOptString != null) {
                hp(jSONObject, next, strOptString, intent);
            }
        }
    }

    @Override // com.byazt.od.w
    public Intent l() {
        String strOptString = this.f23963j.optString(com.umeng.ccg.a.f49772z);
        String strOptString2 = this.f23963j.optString(PointParamKey.CATEGORY);
        int iOptInt = this.f23963j.optInt("flags", 1342210048);
        String strOptString3 = this.f23963j.optString("path_extra_key");
        String strOptString4 = this.f23963j.optString("path_data_key");
        JSONObject jSONObjectOptJSONObject = this.f23963j.optJSONObject("extra");
        JSONObject jSONObjectOptJSONObject2 = this.f23963j.optJSONObject("extra_type");
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        Intent intent = new Intent(strOptString);
        if (!TextUtils.isEmpty(strOptString2)) {
            intent.addCategory(strOptString2);
        }
        if (!TextUtils.isEmpty(strOptString4)) {
            try {
                intent.setData(Uri.parse(String.format(strOptString4, this.jx)));
            } catch (Throwable unused) {
            }
        }
        intent.setFlags(iOptInt);
        if (!TextUtils.isEmpty(strOptString3)) {
            intent.putExtra(strOptString3, this.jx);
        }
        hp(intent, jSONObjectOptJSONObject, jSONObjectOptJSONObject2);
        return intent;
    }

    private static void hp(JSONObject jSONObject, String str, String str2, Intent intent) {
        str2.getClass();
        switch (str2) {
            case "double":
                intent.putExtra(str, jSONObject.optDouble(str));
                break;
            case "string":
                intent.putExtra(str, jSONObject.optString(str));
                break;
            case "int":
                intent.putExtra(str, jSONObject.optInt(str));
                break;
            case "long":
                intent.putExtra(str, jSONObject.optLong(str));
                break;
            case "boolean":
                intent.putExtra(str, jSONObject.optBoolean(str));
                break;
        }
    }
}
