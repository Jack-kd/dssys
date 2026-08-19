package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.kd;

/* loaded from: classes2.dex */
public abstract class bb {

    /* renamed from: a, reason: collision with root package name */
    protected Context f13075a;

    public bb(Context context) {
        this.f13075a = context.getApplicationContext();
    }

    public void a(String str, fb fbVar, ua uaVar) {
        a(str, fbVar, uaVar, "101,1001");
    }

    public void a(String str, fb fbVar, ua uaVar, String str2) {
        if (TextUtils.isEmpty(str)) {
            a(nm.ERROR_INVALID_URL, uaVar);
            return;
        }
        if (fbVar == null) {
            a(nm.ERROR_NULL_MODEL_BUILD, uaVar);
            return;
        }
        an anVar = new an(this.f13075a, true);
        anVar.a(str2);
        String strA = fbVar.a();
        if (pg.a(strA)) {
            anVar.a(str, ((kd) gh.a().b(this.f13075a)).b(strA.getBytes(), str2, kd.a.NOT_APPEND, true), uaVar);
        } else {
            a(nm.ERROR_EMPTY_CONTENT, uaVar);
        }
    }

    public void a(nm nmVar, ua uaVar) {
        if (uaVar != null) {
            uaVar.a(nmVar);
        }
    }
}
