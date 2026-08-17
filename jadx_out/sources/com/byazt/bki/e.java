package com.byazt.bki;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.msdk.api.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 732, 45})
/* loaded from: classes2.dex */
public final class e {
    public static Context hp = null;

    /* renamed from: j, reason: collision with root package name */
    public static long f18562j = -1;
    public static long jx = -1;

    /* renamed from: l, reason: collision with root package name */
    public static hp f18563l;

    @Nullable
    public static String a() {
        return com.byazt.di.hp.jl().u();
    }

    @Nullable
    public static String e() {
        return com.byazt.di.hp.jl().zy();
    }

    @Nullable
    public static Map<String, String> eb() {
        return com.byazt.di.hp.jl().xs();
    }

    @Nullable
    public static String gu() {
        return ((com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog")).getOAID(false);
    }

    public static void hp(final Activity activity, final List<zy> list, final int i2, final int i3) {
        hp(new u() { // from class: com.byazt.bki.e.1
            @Override // com.byazt.bki.u
            public void hp() {
                com.byazt.gp.j.hp().hp(activity, list, i2, i3);
            }
        });
    }

    public static String j() {
        return com.byazt.rt.l.l();
    }

    @Deprecated
    public static void jl() {
        com.byazt.di.l.l().j(com.byazt.lto.hp.hp().get("if_test", 0));
    }

    public static long jx() {
        return f18562j;
    }

    public static long l() {
        return jx;
    }

    @Nullable
    public static String q() {
        return com.byazt.di.hp.jl().ec();
    }

    public static boolean s() {
        return com.byazt.jz.s.u().rz();
    }

    public static boolean w() {
        return com.byazt.di.hp.jl().v();
    }

    @Nullable
    public static Map<String, Object> zy() {
        return com.byazt.di.hp.jl().lv();
    }

    @Nullable
    @Deprecated
    public static com.byazt.gkj.j a(String str) {
        return com.byazt.uhd.l.hp().hp(str);
    }

    public static void hp(u uVar) {
        com.byazt.di.l.l().hp(uVar);
    }

    @Deprecated
    public static boolean j(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(com.byazt.di.hp.jl().zy())) {
            return false;
        }
        return com.byazt.di.l.l().jx(str);
    }

    @Nullable
    public static String jx(String str) {
        str.getClass();
        switch (str) {
            case "tt_pangle_preview_ext":
                return com.byazt.ri.w.jx();
            case "tt_pangle_preview_creative_id":
                return com.byazt.ri.w.l();
            case "tt_pangle_preview_ad_id":
                return com.byazt.ri.w.hp();
            default:
                return null;
        }
    }

    public static void l(String str) {
        com.byazt.di.hp.jl().w(str);
    }

    @Nullable
    @Deprecated
    public static com.byazt.qyg.hp w(String str) {
        return com.byazt.uhd.hp.hp(str);
    }

    public static boolean hp() {
        if (TextUtils.isEmpty(com.byazt.di.hp.jl().zy())) {
            return false;
        }
        return com.byazt.di.l.l().ms();
    }

    public static boolean l(String str, String str2) {
        return com.byazt.fct.hp.l(str, str2);
    }

    @Deprecated
    public static void l(int i2) {
        com.byazt.di.l.l().j(i2);
    }

    public static void hp(@NonNull Context context, @NonNull hp hpVar) {
        if (jx == -1) {
            jx = System.currentTimeMillis();
            if (hpVar != null && hpVar.jx()) {
                com.byazt.aw.l.hp();
                com.byazt.oyr.hp.hp();
            }
            com.byazt.aw.l.l("TMe", "call init time " + jx);
            hp = context;
            f18563l = hpVar;
        }
    }

    public static void hp(JSONObject jSONObject) {
        if (hp == null || f18563l == null) {
            return;
        }
        if (f18562j == -1) {
            f18562j = System.currentTimeMillis();
            com.byazt.aw.l.l("TMe", "call start up time " + f18562j);
        }
        hp(hp, f18563l, jSONObject);
        com.byazt.fct.j.l();
    }

    private static void hp(@NonNull Context context, @NonNull hp hpVar, JSONObject jSONObject) {
        com.byazt.di.hp.jl().jx(hpVar.hp());
        com.byazt.di.hp.jl().jx(hpVar.v());
        com.byazt.fqv.hp.hp().a();
        com.byazt.fct.jx.hp(hpVar, context.getApplicationContext(), jSONObject);
        com.byazt.fqv.hp.hp().eb();
    }

    public static void hp(a aVar) {
        com.byazt.di.hp.jl().hp(aVar, false);
    }

    public static void hp(String str) {
        com.byazt.aw.l.hp(MediationConstant.TAG, "app运行中setPulisherDid: ".concat(String.valueOf(str)));
        com.byazt.di.hp.jl().j(str);
    }

    public static void hp(com.byazt.jt.j jVar) {
        com.byazt.di.hp.jl().l().l(com.byazt.uhd.w.hp(jVar));
        com.byazt.di.hp.jl().cx();
        com.byazt.fct.jx.hp(com.byazt.uhd.w.l(jVar));
    }

    public static void hp(Context context) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 3);
        com.byazt.zg.j.hp(context, intent, null);
    }

    public static void hp(Context context, int[] iArr) {
        Intent intent = new Intent(context, (Class<?>) TTDelegateActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("type", 1);
        intent.putExtra("permissions", iArr);
        if (context != null) {
            com.byazt.zg.j.hp(context, intent, null);
        }
    }

    public static void hp(int i2) {
        HashMap map = new HashMap();
        map.put(com.byazt.gkj.hp.f20494w, Integer.valueOf(i2));
        Map<String, com.byazt.gkj.j> mapL = com.byazt.uhd.l.hp().l();
        if (mapL == null || mapL.size() == 0) {
            return;
        }
        for (com.byazt.gkj.j jVar : com.byazt.uhd.l.hp().jx()) {
            if (jVar != null) {
                jVar.setThemeStatus(map);
            }
        }
    }

    public static int hp(jx jxVar) {
        com.byazt.gkj.j jVarHp = com.byazt.uhd.l.hp().hp(MediationConstant.ADN_GDT);
        if (jVarHp == null) {
            return 0;
        }
        return jVarHp.showOpenOrInstallAppDialog(jxVar);
    }

    public static boolean hp(String str, String str2) {
        return com.byazt.fct.hp.hp(str, str2);
    }

    public static void hp(com.byazt.htw.hp hpVar) {
        if (!com.byazt.fct.jx.l()) {
            com.byazt.di.hp.jl().hp(hpVar);
        } else if (hpVar != null) {
            hpVar.hp();
        }
    }
}
