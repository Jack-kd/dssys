package com.byazt.xr;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.byazt.oyr.hp;
import com.byazt.ri.j;
import com.kwad.library.solder.lib.ext.PluginError;
import java.util.Map;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, PluginError.ERROR_UPD_CAPACITY, 34})
/* loaded from: classes3.dex */
public class l {

    @SuppressLint({"StaticFieldLeak"})
    public static volatile l hp;
    public final com.byazt.oyr.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f27753l;

    private l(Context context) {
        Map<String, Object> map;
        this.f27753l = context == null ? com.byazt.di.l.getContext() : context.getApplicationContext();
        hp.C0335hp c0335hp = new hp.C0335hp();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        hp.C0335hp c0335hpHp = c0335hp.hp(10000L, timeUnit).l(10000L, timeUnit).jx(10000L, timeUnit).hp(true);
        if (j.hp() && (map = j.hp) != null) {
            Object obj = map.get("case_id");
            if ((obj instanceof String) && !TextUtils.isEmpty((String) obj)) {
                c0335hpHp.hp(new j.hp());
            }
        }
        com.byazt.oyr.hp hpVarHp = c0335hpHp.hp();
        this.jx = hpVarHp;
        com.byazt.uhg.j jVarHp = hpVarHp.a().hp();
        if (jVarHp != null) {
            jVarHp.hp(16);
        }
    }

    public static l hp() {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = new l(com.byazt.di.l.getContext());
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public com.byazt.oyr.hp l() {
        return this.jx;
    }
}
