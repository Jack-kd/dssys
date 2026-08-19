package com.byazt.kfd;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.dnb.s;
import com.byazt.jz.cx;
import com.byazt.jz.sz;
import com.byazt.jz.vv;
import com.byazt.xci.k;
import com.byazt.xci.mp;
import com.byazt.ymw.hq;
import com.byazt.yrp.q;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 686, 30})
/* loaded from: classes.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public l f22041a;
    public Map<String, Object> eb;
    public q hp;

    /* renamed from: j, reason: collision with root package name */
    public String f22042j;
    public final Context jx;

    /* renamed from: l, reason: collision with root package name */
    public final k f22043l;

    /* renamed from: w, reason: collision with root package name */
    public final AtomicBoolean f22044w = new AtomicBoolean(true);

    public interface hp {
        void hp();
    }

    public interface l {
        void hp();

        void hp(String str, boolean z2);
    }

    public jx(q qVar, k kVar, Context context, Map<String, Object> map) {
        this.hp = qVar;
        this.jx = context;
        this.f22043l = kVar;
        this.eb = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(k kVar) {
        if (this.f22044w.getAndSet(false)) {
            l(kVar);
        }
    }

    private void l(final k kVar) {
        if (kVar == null) {
            return;
        }
        try {
            sz.hp().hp(kVar.l(), new cx.jx<com.byazt.oyr.l>() { // from class: com.byazt.kfd.jx.3
                @Override // com.byazt.jz.cx.jx
                public void hp(int i2, String str) {
                    jx.this.hp();
                    jx.this.jx(kVar);
                }

                @Override // com.byazt.jz.cx.jx
                public void hp(com.byazt.oyr.l lVar) {
                    if (lVar == null || !lVar.q() || TextUtils.isEmpty(lVar.w())) {
                        jx.this.hp();
                        jx.this.jx(kVar);
                    } else {
                        try {
                            jx.this.hp(new JSONObject(lVar.w()));
                        } catch (Throwable unused) {
                        }
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    private void l(JSONObject jSONObject) {
        boolean zOptBoolean = jSONObject.optBoolean("is_apply_coupon");
        String strOptString = jSONObject.optString("error_type");
        mp mpVarHp = com.byazt.rj.jx.hp(this.hp, this.eb);
        if (zOptBoolean && cb.f11292o.equals(strOptString)) {
            com.byazt.jdb.j.l(mpVarHp, this.f22042j, 1);
        } else if (zOptBoolean && "has_applied".equals(strOptString)) {
            com.byazt.jdb.j.l(mpVarHp, this.f22042j, 2);
        } else if (!zOptBoolean) {
            com.byazt.jdb.j.l(mpVarHp, this.f22042j, 3);
        }
        if (this.f22041a != null) {
            if (zOptBoolean && cb.f11292o.equals(strOptString)) {
                this.f22041a.hp();
            } else {
                this.f22041a.hp(strOptString, zOptBoolean);
            }
        }
    }

    public jx hp(String str) {
        this.f22042j = str;
        return this;
    }

    public void hp(l lVar) {
        this.f22041a = lVar;
    }

    public static boolean hp(q qVar, boolean z2) {
        k kVarEc = qVar != null ? qVar.ec() : null;
        return kVarEc != null && kVarEc.l(z2);
    }

    public static boolean hp(k kVar, boolean z2) {
        return kVar != null && kVar.l(z2);
    }

    public int hp(final hp hpVar) {
        k kVar = this.f22043l;
        hp(kVar);
        l(kVar);
        vv.a().postDelayed(new Runnable() { // from class: com.byazt.kfd.jx.1
            @Override // java.lang.Runnable
            public void run() {
                hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp();
                }
            }
        }, 500L);
        return 1;
    }

    private void hp(k kVar) {
        if (kVar == null || TextUtils.isEmpty(kVar.j())) {
            return;
        }
        final String strJ = kVar.j();
        s.hp(new Runnable() { // from class: com.byazt.kfd.jx.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    hq.l(jx.this.jx.getApplicationContext(), strJ, 0, 17, 0, 0);
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        com.byazt.jdb.j.l(com.byazt.rj.jx.hp(this.hp, this.eb), this.f22042j, 4);
        l lVar = this.f22041a;
        if (lVar != null) {
            lVar.hp("net_fail", false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(JSONObject jSONObject) {
        try {
            if (jSONObject.has("is_apply_coupon")) {
                l(jSONObject);
            }
        } catch (Throwable unused) {
            hp();
        }
    }
}
