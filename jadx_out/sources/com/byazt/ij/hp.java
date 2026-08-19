package com.byazt.ij;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.jz.d;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.ymw.vv;
import com.byazt.zn.ky;
import com.byazt.zn.v;
import com.bytedance.component.sdk.annotation.HungeonFlag;
import com.sigmob.sdk.archives.tar.e;
import java.util.Locale;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 845, 28})
/* loaded from: classes.dex */
public class hp {
    public static volatile String hp;
    public static String jx;

    /* renamed from: l, reason: collision with root package name */
    public static volatile String f21120l;

    public static String a() {
        return s.u().cx();
    }

    public static String e() {
        if (f21120l != null) {
            return f21120l;
        }
        Context context = sz.getContext();
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            f21120l = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 128));
        } catch (Exception unused) {
        }
        return f21120l;
    }

    public static String eb() {
        return vv.eb(sz.getContext());
    }

    @HungeonFlag
    public static String gu() {
        try {
            if (!TextUtils.isEmpty(jx)) {
                return jx;
            }
            String strJx = com.byazt.lca.j.hp().jx("app_sha1", 2592000000L);
            jx = strJx;
            if (!TextUtils.isEmpty(strJx)) {
                return jx;
            }
            String strHp = com.byazt.ymw.jx.hp(sz.getContext());
            jx = strHp;
            if (!hp(strHp)) {
                return "";
            }
            jx = jx.toUpperCase(Locale.getDefault());
            com.byazt.lca.j.hp().jx("app_sha1", jx);
            return jx;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String hp() {
        return "open_news";
    }

    public static String j() {
        return d.f21860w;
    }

    public static String jx() {
        return "7.6.4.3";
    }

    public static String l() {
        return "1371";
    }

    public static String q() {
        if (hp != null) {
            return hp;
        }
        Context context = sz.getContext();
        ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        if (applicationInfo == null) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        Bundle bundle = applicationInfo.metaData;
        if (bundle != null && bundle.keySet() != null) {
            for (String str : bundle.keySet()) {
                if (str != null && str.toLowerCase().contains("channel")) {
                    Object obj = bundle.get(str);
                    jSONObject.putOpt(str, obj != null ? obj.toString() : "");
                }
            }
        }
        hp = jSONObject.toString();
        return hp;
    }

    public static String s() {
        return v.hp();
    }

    public static String w() {
        return ky.e();
    }

    public static int hp(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.targetSdkVersion;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }

    private static boolean hp(String str) {
        String[] strArrSplit;
        if (!TextUtils.isEmpty(str) && (strArrSplit = str.split(":")) != null && strArrSplit.length >= 20) {
            for (String str2 : strArrSplit) {
                if (!e.f35456V.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }
}
