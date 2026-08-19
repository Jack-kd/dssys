package com.byazt.yt;

import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.pangle.provider.ContentProviderManager;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 721, 28})
/* loaded from: classes3.dex */
public class hp {
    public static String hp(String str, String str2, Uri uri) {
        if (str2 == null || TextUtils.isEmpty(str2)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ContentProviderManager.PLUGIN_PROCESS_NAME, str);
            jSONObject.put("plugin_pkg_name", str2);
            jSONObject.put(ContentProviderManager.PROVIDER_URI, uri != null ? uri.toString() : "");
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }
}
