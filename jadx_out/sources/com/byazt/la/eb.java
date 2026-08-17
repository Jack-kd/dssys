package com.byazt.la;

import android.text.TextUtils;
import com.byazt.zn.nu;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 31, 94})
/* loaded from: classes3.dex */
public final class eb {
    public static volatile eb hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.ow.w f22389l = nu.hp("ugeno_template_file");

    private eb() {
    }

    public static eb hp() {
        if (hp == null) {
            synchronized (eb.class) {
                try {
                    if (hp == null) {
                        hp = new eb();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public boolean l(String str, String str2) {
        return hp(str, str2) != null;
    }

    public void hp(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        this.f22389l.put("ugeno_".concat(String.valueOf(str)), str3);
        this.f22389l.put("ugeno__md5_".concat(String.valueOf(str)), str2);
    }

    public JSONObject hp(String str, String str2) {
        String str3 = this.f22389l.get("ugeno_".concat(String.valueOf(str)), "");
        if (TextUtils.isEmpty(str3)) {
            return null;
        }
        String str4 = this.f22389l.get("ugeno__md5_".concat(String.valueOf(str)), "");
        if (!TextUtils.isEmpty(str4) && TextUtils.equals(str4, str2)) {
            try {
                return new JSONObject(str3);
            } catch (JSONException unused) {
            }
        }
        return null;
    }
}
