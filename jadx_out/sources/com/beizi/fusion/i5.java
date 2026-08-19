package com.beizi.fusion;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public class i5 extends x8 {

    /* renamed from: d, reason: collision with root package name */
    private String f14417d;

    public i5(String str) {
        super(false, false);
        this.f14417d = str;
    }

    @Override // com.beizi.fusion.x8
    public String a() {
        return this.f14417d;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(y8 y8Var) {
        if (y8Var == null || !y8Var.d()) {
            return;
        }
        int iA = y8Var.a();
        String strC = y8Var.c();
        if (iA != 302 || TextUtils.isEmpty(strC)) {
            return;
        }
        new i5(strC).execute(new Void[0]);
    }
}
