package com.beizi.fusion;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public class co extends x8 {

    /* renamed from: d, reason: collision with root package name */
    private String f13255d;

    public co(String str) {
        super(false, false);
        this.f13255d = str;
    }

    @Override // com.beizi.fusion.x8
    public String a() {
        return this.f13255d;
    }

    public void b() {
        ao aoVarA = ao.a(b4.j().g());
        if (aoVarA.b(b4.j().g())) {
            executeOnExecutor(x3.c().g(), new Void[0]);
        } else {
            aoVarA.a(this.f13255d, b4.j().g());
        }
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
        new co(strC).b();
    }
}
