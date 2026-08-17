package com.beizi.fusion;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public final class t6 implements mc {

    /* renamed from: a, reason: collision with root package name */
    private Application f16294a;

    /* renamed from: b, reason: collision with root package name */
    private String f16295b;

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        static final t6 f16296a = new t6();
    }

    @Override // com.beizi.fusion.mc
    public void a(Exception exc) {
    }

    private t6() {
    }

    public static void a(Application application) {
        if (application == null) {
            return;
        }
        t6 t6Var = b.f16296a;
        t6Var.f16294a = application;
        a(application, t6Var);
    }

    public static void a(Context context, mc mcVar) {
        yj.a(context).a(mcVar);
    }

    public static boolean a(Context context) {
        return yj.a(context).a();
    }

    @Override // com.beizi.fusion.mc
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            a(new wj("OAID is empty"));
        } else {
            this.f16295b = str;
        }
    }
}
