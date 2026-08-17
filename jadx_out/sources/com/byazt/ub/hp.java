package com.byazt.ub;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.gt.e;
import com.byazt.iv.Collector;
import com.byazt.yu.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME, 28})
/* loaded from: classes3.dex */
public final class hp {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f26119a = true;
    public static boolean eb = false;

    @SuppressLint({"StaticFieldLeak"})
    public static q hp = null;

    /* renamed from: j, reason: collision with root package name */
    public static l f26120j = null;
    public static ConcurrentHashMap<String, String> jx = new ConcurrentHashMap<>(4);

    /* renamed from: l, reason: collision with root package name */
    public static boolean f26121l = true;

    /* renamed from: s, reason: collision with root package name */
    public static volatile j f26122s;

    /* renamed from: w, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static volatile com.byazt.yu.s f26123w;

    @Nullable
    public static JSONObject a() {
        if (f26123w != null) {
            return f26123w.sz();
        }
        return null;
    }

    public static String e() {
        q qVar = hp;
        return qVar != null ? qVar.e() : "";
    }

    public static String eb() {
        q qVar = hp;
        return qVar != null ? qVar.s() : "";
    }

    public static String gu() {
        q qVar = hp;
        return qVar != null ? qVar.gu() : "";
    }

    public static void hp(@NonNull Context context, @NonNull s sVar) {
        if (f26123w != null) {
            e.l(new RuntimeException("Init Twice!"));
            return;
        }
        if (sVar.nu() == null) {
            e.l(new RuntimeException("need to involve setSensitiveInfoProvider!"));
            return;
        }
        Application application = (Application) context.getApplicationContext();
        com.byazt.lxu.j jVarW = com.byazt.lxu.j.w();
        com.byazt.yu.s sVar2 = new com.byazt.yu.s(application, sVar);
        f26123w = sVar2;
        q qVar = new q(application, sVar2);
        jVarW.hp(application, sVar2, qVar, new com.byazt.iv.hp(sVar.q()));
        hp = qVar;
        if (f26123w.xs()) {
            application.registerReceiver(new Collector(), new IntentFilter());
        }
        e.j("Inited", null);
    }

    public static l j() {
        return f26120j;
    }

    @NonNull
    public static jx jl() {
        return com.byazt.gt.l.hp();
    }

    public static j jx() {
        return f26122s;
    }

    public static void k() {
        com.byazt.lxu.j.w().q();
    }

    public static void l() {
        com.byazt.lxu.j.hp();
    }

    public static String q() {
        q qVar = hp;
        return qVar != null ? qVar.eb() : "";
    }

    public static boolean s() {
        return true;
    }

    public static void v() {
        com.byazt.lxu.j.w().e();
    }

    public static String w() {
        q qVar = hp;
        if (qVar != null) {
            return qVar.k();
        }
        return null;
    }

    public static s zy() {
        if (f26123w != null) {
            return f26123w.f();
        }
        return null;
    }

    public static void l(@NonNull String str, @NonNull JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || jSONObject == null || jSONObject.length() <= 0) {
            e.l("call onEventData with invalid params, return", null);
            return;
        }
        try {
            com.byazt.lxu.j.hp(new com.byazt.cn.j(str, jSONObject));
        } catch (Exception e2) {
            e.jx("call onEventData get exception: ", e2);
        }
    }

    public static void hp(boolean z2) {
        f26121l = z2;
    }

    public static void hp() {
        q qVar;
        if (!f26121l || (qVar = hp) == null) {
            return;
        }
        qVar.j();
    }

    public static void hp(HashMap<String, Object> map) throws JSONException {
        q qVar = hp;
        if (qVar != null) {
            qVar.hp(map);
        }
    }

    public static <T> T hp(String str, T t2) {
        q qVar = hp;
        if (qVar != null) {
            return (T) qVar.hp(str, t2);
        }
        return null;
    }

    public static void hp(@NonNull String str, @Nullable JSONObject jSONObject) {
        com.byazt.lxu.j.hp(new com.byazt.cn.w(str, false, jSONObject != null ? jSONObject.toString() : null));
    }

    public static void hp(@NonNull String str, @Nullable JSONObject jSONObject, int i2) {
        com.byazt.lxu.j.hp(new com.byazt.cn.w(str, false, jSONObject != null ? jSONObject.toString() : null, i2));
    }

    public static void hp(@NonNull String str, @Nullable Bundle bundle) {
        JSONObject jSONObject = null;
        if (bundle != null) {
            try {
                if (!bundle.isEmpty()) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        for (String str2 : bundle.keySet()) {
                            jSONObject2.put(str2, bundle.get(str2));
                        }
                        jSONObject = jSONObject2;
                    } catch (Throwable th) {
                        th = th;
                        jSONObject = jSONObject2;
                        e.l(th);
                        hp(str, jSONObject);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        hp(str, jSONObject);
    }

    public static void hp(@NonNull String str, @Nullable Bundle bundle, int i2) {
        JSONObject jSONObject = null;
        if (bundle != null) {
            try {
                if (!bundle.isEmpty()) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        for (String str2 : bundle.keySet()) {
                            jSONObject2.put(str2, bundle.get(str2));
                        }
                        jSONObject = jSONObject2;
                    } catch (Throwable th) {
                        th = th;
                        jSONObject = jSONObject2;
                        e.l(th);
                        hp(str, jSONObject, i2);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        hp(str, jSONObject, i2);
    }

    @AnyThread
    public static void hp(@Nullable w wVar) {
        com.byazt.hk.eb.hp(wVar);
    }
}
