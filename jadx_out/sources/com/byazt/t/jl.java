package com.byazt.t;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.b.ns;
import com.byazt.b.sz;
import com.byazt.b.u;
import com.byazt.b.vv;
import com.byazt.b.xs;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.rx.BaseConstants;
import com.byazt.v.hp;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadEventConfig;
import com.byazt.yy.DownloadModel;
import java.io.File;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 311, 19})
/* loaded from: classes3.dex */
public class jl {

    /* renamed from: a, reason: collision with root package name */
    public static com.byazt.b.s f25641a;
    public static com.byazt.b.e cx;

    /* renamed from: e, reason: collision with root package name */
    public static com.byazt.b.l f25642e;
    public static com.byazt.b.q eb;
    public static xs ec;
    public static com.byazt.f.q gu;
    public static final JSONObject hp = new JSONObject();

    /* renamed from: j, reason: collision with root package name */
    public static com.byazt.b.jx f25643j;
    public static com.byazt.b.j jl;
    public static com.byazt.b.eb jx;

    /* renamed from: k, reason: collision with root package name */
    public static u f25644k;

    /* renamed from: l, reason: collision with root package name */
    public static Context f25645l;

    /* renamed from: n, reason: collision with root package name */
    public static vv f25646n;
    public static sz ns;

    /* renamed from: q, reason: collision with root package name */
    public static com.byazt.v.hp f25647q;

    /* renamed from: s, reason: collision with root package name */
    public static com.byazt.b.gu f25648s;
    public static com.byazt.hi.hp sz;

    /* renamed from: u, reason: collision with root package name */
    public static ns f25649u;

    /* renamed from: v, reason: collision with root package name */
    public static com.byazt.b.jl f25650v;
    public static com.byazt.b.k vv;

    /* renamed from: w, reason: collision with root package name */
    public static com.byazt.b.zy f25651w;
    public static com.byazt.b.v xs;
    public static com.byazt.b.w zy;

    public static com.byazt.f.q a() {
        if (gu == null) {
            gu = new com.byazt.f.q() { // from class: com.byazt.t.jl.2
                @Override // com.byazt.f.q
                public void hp(DownloadInfo downloadInfo, BaseException baseException, int i2) {
                }
            };
        }
        return gu;
    }

    public static boolean b() {
        return (jx == null || f25641a == null || f25648s == null || f25642e == null || f25646n == null) ? false : true;
    }

    public static String cx() {
        try {
            int i2 = getContext().getApplicationInfo().targetSdkVersion;
            if (Build.VERSION.SDK_INT >= 29 && ((i2 == 29 && !Environment.isExternalStorageLegacy()) || i2 > 29)) {
                return getContext().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath();
            }
            return Environment.getExternalStorageDirectory().getPath() + File.separator + q().optString("default_save_dir_name", BaseConstants.DOWNLOAD_DIR);
        } catch (Throwable unused) {
            return null;
        }
    }

    @NonNull
    public static com.byazt.v.hp e() {
        if (f25647q == null) {
            f25647q = new hp.C0390hp().hp();
        }
        return f25647q;
    }

    public static u eb() {
        return f25644k;
    }

    public static ns ec() {
        return f25649u;
    }

    public static Context getContext() {
        Context context = f25645l;
        if (context != null) {
            return context;
        }
        throw new IllegalArgumentException("Context is null");
    }

    public static com.byazt.b.k gu() {
        return vv;
    }

    public static void hp(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            throw new IllegalArgumentException("Context is null");
        }
        f25645l = context.getApplicationContext();
    }

    public static com.byazt.b.s j() {
        return f25641a;
    }

    @Nullable
    public static com.byazt.b.l jl() {
        return f25642e;
    }

    @NonNull
    public static com.byazt.b.zy jx() {
        if (f25651w == null) {
            f25651w = new com.byazt.qd.hp();
        }
        return f25651w;
    }

    public static String k() {
        return "1.7.0";
    }

    public static void l(Context context) {
        if (f25645l != null || context == null || context.getApplicationContext() == null) {
            return;
        }
        f25645l = context.getApplicationContext();
    }

    @NonNull
    public static sz n() {
        if (ns == null) {
            ns = new sz() { // from class: com.byazt.t.jl.5
                @Override // com.byazt.b.sz
                public void hp(@Nullable Context context, @NonNull DownloadModel downloadModel, @Nullable DownloadController downloadController, @Nullable DownloadEventConfig downloadEventConfig, String str, int i2) {
                }
            };
        }
        return ns;
    }

    public static com.byazt.b.e ns() {
        return cx;
    }

    @NonNull
    public static JSONObject q() {
        com.byazt.b.gu guVar = f25648s;
        return (guVar == null || guVar.hp() == null) ? hp : f25648s.hp();
    }

    @NonNull
    public static xs s() {
        if (ec == null) {
            ec = new xs() { // from class: com.byazt.t.jl.3
            };
        }
        return ec;
    }

    @NonNull
    public static com.byazt.hi.hp sz() {
        if (sz == null) {
            sz = new com.byazt.hi.hp() { // from class: com.byazt.t.jl.4
                @Override // com.byazt.hi.hp
                public void hp(Throwable th, String str) {
                }
            };
        }
        return sz;
    }

    public static com.byazt.b.w u() {
        return zy;
    }

    public static com.byazt.b.j v() {
        return jl;
    }

    @NonNull
    public static vv vv() {
        return f25646n;
    }

    @NonNull
    public static com.byazt.b.q w() {
        if (eb == null) {
            eb = new com.byazt.qd.l();
        }
        return eb;
    }

    public static com.byazt.b.jl xs() {
        return f25650v;
    }

    @Nullable
    public static com.byazt.b.v zy() {
        return xs;
    }

    @NonNull
    public static com.byazt.b.jx l() {
        if (f25643j == null) {
            f25643j = new com.byazt.b.jx() { // from class: com.byazt.t.jl.1
                @Override // com.byazt.b.jx
                public void hp(@Nullable Context context, @NonNull DownloadModel downloadModel, @Nullable DownloadController downloadController, @Nullable DownloadEventConfig downloadEventConfig, String str, @NonNull String str2) {
                }
            };
        }
        return f25643j;
    }

    public static void hp(@NonNull com.byazt.b.eb ebVar) {
        jx = ebVar;
    }

    public static void hp(@NonNull com.byazt.b.jx jxVar) {
        f25643j = jxVar;
    }

    public static void hp(@NonNull com.byazt.b.zy zyVar) {
        f25651w = zyVar;
    }

    public static void hp(@NonNull com.byazt.b.s sVar) {
        f25641a = sVar;
    }

    public static void hp(@NonNull com.byazt.b.q qVar) {
        eb = qVar;
    }

    public static void hp(@NonNull com.byazt.b.gu guVar) {
        f25648s = guVar;
    }

    public static void hp(@NonNull com.byazt.v.hp hpVar) {
        f25647q = hpVar;
    }

    public static void hp(@NonNull com.byazt.b.l lVar) {
        f25642e = lVar;
    }

    public static com.byazt.b.eb hp() {
        return jx;
    }

    public static void hp(String str) {
        com.byazt.ni.j.gu().hp(str);
    }

    public static void hp(com.byazt.f.jx jxVar) {
        com.byazt.ni.j.gu().hp(jxVar);
    }

    public static void hp(vv vvVar) {
        f25646n = vvVar;
    }

    public static void hp(com.byazt.hi.hp hpVar) {
        sz = hpVar;
    }

    public static void hp(sz szVar) {
        ns = szVar;
    }

    public static void hp(com.byazt.b.e eVar) {
        cx = eVar;
    }
}
