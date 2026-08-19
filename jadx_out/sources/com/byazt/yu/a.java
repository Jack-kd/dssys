package com.byazt.yu;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.util.UUID;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, 54})
/* loaded from: classes3.dex */
public class a extends jx {

    /* renamed from: w, reason: collision with root package name */
    public final Context f28282w;

    public a(Context context) {
        super(false, false);
        this.f28282w = context;
    }

    public static String l(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new String(Base64.decode(str.getBytes("UTF-8"), 0));
        } catch (UnsupportedEncodingException unused) {
            return str;
        }
    }

    @Override // com.byazt.yu.jx
    public boolean hp(JSONObject jSONObject) throws Throwable {
        SharedPreferences sharedPreferencesL = com.byazt.rz.l.l(this.f28282w, "snssdk_openudid", 0);
        String strL = l(sharedPreferencesL.getString("custom_a", null));
        if (TextUtils.isEmpty(strL)) {
            strL = sharedPreferencesL.getString("clientudid", null);
        }
        if (!q.hp(strL)) {
            try {
                strL = UUID.randomUUID().toString();
                strL = hp("clientudid.dat", strL);
            } catch (Exception unused) {
            }
            String strHp = hp(strL);
            SharedPreferences.Editor editorEdit = sharedPreferencesL.edit();
            editorEdit.putString("custom_a", strHp);
            editorEdit.apply();
        }
        jSONObject.put("clientudid", strL);
        return true;
    }

    public static String hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return Base64.encodeToString(str.getBytes("UTF-8"), 0);
        } catch (UnsupportedEncodingException unused) {
            return str;
        }
    }
}
