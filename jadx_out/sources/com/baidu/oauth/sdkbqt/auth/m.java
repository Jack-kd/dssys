package com.baidu.oauth.sdkbqt.auth;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import o.C1736a;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class m {
    public Intent a(Context context, HashMap map, boolean z2) {
        String strL = o.g.l(z2 ? "YmFpZHUuaW50ZW50LmFjdGlvbi5hY2NvdW50Lk9BVVRIX1NJTEVOVF9BQ1RJVklUWQ==" : "YmFpZHUuaW50ZW50LmFjdGlvbi5hY2NvdW50Lk9BVVRIX0FDVElWSVRZ");
        List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent(strL), 32);
        if (listQueryIntentActivities != null && listQueryIntentActivities.size() != 0) {
            ArrayList arrayList = new ArrayList();
            try {
                Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
                while (it.hasNext()) {
                    ActivityInfo activityInfo = it.next().activityInfo;
                    String str = activityInfo.permission;
                    Intent intent = new Intent(strL);
                    intent.setClassName(((ComponentInfo) activityInfo).packageName, ((ComponentInfo) activityInfo).name);
                    intent.addFlags(32);
                    if (TextUtils.isEmpty(str) || context.checkCallingOrSelfPermission(str) == 0) {
                        if (c(context, intent.getComponent().getPackageName()) && !context.getPackageName().equals(intent.getComponent().getPackageName())) {
                            arrayList.add(intent);
                        }
                    }
                }
                for (String str2 : map.keySet()) {
                    int size = arrayList.size();
                    int i2 = 0;
                    while (i2 < size) {
                        Object obj = arrayList.get(i2);
                        i2++;
                        Intent intent2 = (Intent) obj;
                        String packageName = intent2.getComponent().getPackageName();
                        if (!TextUtils.isEmpty(packageName) && packageName.matches(str2)) {
                            return intent2;
                        }
                    }
                }
            } catch (Throwable th) {
                o.d.c(th);
            }
        }
        return null;
    }

    public String b(Long l2) throws JSONException {
        C1120a c1120aB = C1121b.b();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", "native");
            jSONObject.put("timestamp", l2);
            jSONObject.put("host_api_key", c1120aB.a());
            jSONObject.put("host_pkgname", c1120aB.e());
            jSONObject.put("host_key_hash", c1120aB.d());
            jSONObject.put("bduss_sign", u.c.a(new C1123d().a(c1120aB.getContext()).getBytes(), false));
            jSONObject.put("pkgname", c1120aB.e());
            jSONObject.put("key_hash", c1120aB.d());
            jSONObject.put("app_id", c1120aB.a());
        } catch (JSONException e2) {
            o.d.c(e2);
        }
        String strA = u.c.a(("as#JU*342ns" + c1120aB.a() + "#$FW34sfs").getBytes(), false);
        try {
            return o.g.c(new C1736a().b(jSONObject.toString(), strA.substring(0, 16), new StringBuffer(strA.substring(strA.length() - 16, strA.length())).reverse().toString()));
        } catch (Exception e3) {
            o.d.c(e3);
            return "";
        }
    }

    public final boolean c(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            LinkedHashMap linkedHashMap = o.b.f52024a;
            String strA = o.g.a(context, str);
            if (TextUtils.isEmpty(strA)) {
                return false;
            }
            for (String str2 : linkedHashMap.keySet()) {
                if (str.matches(str2) && strA.equals(linkedHashMap.get(str2))) {
                    return true;
                }
            }
        }
        return false;
    }
}
