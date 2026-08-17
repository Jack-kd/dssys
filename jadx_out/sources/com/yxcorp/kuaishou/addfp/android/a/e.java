package com.yxcorp.kuaishou.addfp.android.a;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes5.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private SharedPreferences f50647a;

    /* renamed from: b, reason: collision with root package name */
    private SharedPreferences.Editor f50648b;

    public e(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("kscfg_outdfp", 0);
            this.f50647a = sharedPreferences;
            this.f50648b = sharedPreferences.edit();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(String str) {
        this.f50648b.putString("kwtk", str);
        this.f50648b.commit();
    }

    public String b() {
        return this.f50647a.getString("kwtk", "");
    }

    public boolean a() {
        return this.f50647a.getBoolean("xytk", true);
    }
}
