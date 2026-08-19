package com.beizi.fusion;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public abstract class f2 {
    public static String a(Context context) {
        try {
            String string = Settings.Global.getString(context.getContentResolver(), "oaid_limit_state");
            if (TextUtils.isEmpty(string) || Boolean.parseBoolean(string)) {
                return "";
            }
            String string2 = Settings.Global.getString(context.getContentResolver(), "oaid");
            return !TextUtils.isEmpty(string2) ? string2 : "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }
}
