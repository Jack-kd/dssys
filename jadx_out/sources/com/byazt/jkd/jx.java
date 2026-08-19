package com.byazt.jkd;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.anythink.core.common.m.f;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.ymw.u;
import com.byazt.ymw.vv;
import com.byazt.ymw.wv;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.as;
import com.byazt.zn.di;
import com.byazt.zn.ky;
import com.byazt.zn.o;
import com.byazt.zn.v;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.umeng.analytics.pro.bv;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FASTOPEN_LIVE_STREAM, 30})
/* loaded from: classes.dex */
public class jx extends com.byazt.uid.eb {

    /* renamed from: l, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static volatile jx f21581l;

    /* renamed from: a, reason: collision with root package name */
    public AtomicBoolean f21582a;
    public volatile AtomicBoolean eb;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public final hp f21583j;
    public final Context jx;

    /* renamed from: s, reason: collision with root package name */
    public Comparator<JSONObject> f21584s;

    /* renamed from: w, reason: collision with root package name */
    public AtomicBoolean f21585w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FASTOPEN_LIVE_STREAM, 224})
    public static class l {
        public static String hp(String str) {
            byte[] bytes = str.getBytes();
            for (int i2 = 0; i2 < bytes.length; i2++) {
                bytes[i2] = (byte) (bytes[i2] - 3);
            }
            return new String(bytes);
        }
    }

    private jx() {
        super("ApplistHelper");
        this.f21585w = new AtomicBoolean(false);
        this.f21582a = new AtomicBoolean(false);
        this.eb = new AtomicBoolean(true);
        this.f21584s = new Comparator<JSONObject>() { // from class: com.byazt.jkd.jx.1
            @Override // java.util.Comparator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public int compare(JSONObject jSONObject, JSONObject jSONObject2) {
                return jSONObject.optString("package_name").compareTo(jSONObject2.optString("package_name"));
            }
        };
        Context context = sz.getContext();
        this.jx = context;
        this.f21583j = new hp(context);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!vv.hp(this.jx)) {
            this.f21585w.set(false);
            return;
        }
        try {
            String str = this.hp;
            boolean zJx = this.f21583j.jx(str);
            this.eb.set(false);
            if (zJx) {
                l(l(this.jx), str);
            } else {
                this.f21585w.set(false);
            }
        } catch (Throwable unused) {
            this.f21585w.set(false);
        }
    }

    public static jx l() {
        if (f21581l == null) {
            synchronized (jx.class) {
                try {
                    if (f21581l == null) {
                        f21581l = new jx();
                    }
                } finally {
                }
            }
        }
        return f21581l;
    }

    public void hp(String str) {
        if (ky.l()) {
            this.f21582a.set(sz.l().dh() && com.byazt.jz.s.u().xs().alist());
            if (s.w() && this.eb.get() && !this.f21585w.get()) {
                this.f21585w.set(true);
                try {
                    this.hp = str;
                    com.byazt.uid.w.hp(this, 1);
                } catch (Throwable unused) {
                    this.f21585w.set(false);
                }
            }
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_FASTOPEN_LIVE_STREAM, 219})
    public class hp {
        public hp(Context context) {
        }

        private com.byazt.ctq.jx j(String str) {
            try {
                return com.byazt.ry.j.hp(str, "tt_sp_app_list");
            } catch (Exception unused) {
                return null;
            }
        }

        public void hp(String str, String str2) {
            com.byazt.ctq.jx jxVarJ;
            if (TextUtils.isEmpty(str) || (jxVarJ = j(str2)) == null) {
                return;
            }
            jxVarJ.put("old_app_list", str);
        }

        public boolean jx(String str) {
            com.byazt.ctq.jx jxVarJ = j(str);
            return !ky.hp(jxVarJ != null ? jxVarJ.get("day_update_time", 0L) : 0L, System.currentTimeMillis());
        }

        public String l(String str) {
            com.byazt.ctq.jx jxVarJ = j(str);
            return jxVarJ == null ? "" : jxVarJ.get("old_app_list", "");
        }

        public void hp(String str) {
            com.byazt.ctq.jx jxVarJ = j(str);
            if (jxVarJ == null) {
                return;
            }
            jxVarJ.put("day_update_time", System.currentTimeMillis());
        }
    }

    private List<JSONObject> l(Context context) {
        List list;
        ArrayList arrayList = new ArrayList();
        if (context != null && this.f21582a.get() && (!di.xs() || Build.VERSION.SDK_INT < 29)) {
            try {
                JSONObject jSONObject = new JSONObject(com.byazt.ymw.hp.jx(l.hp("6;37988e9g6h::3<4f9;g437;iei3:d66i5fd<9dde7;f579fUPZmGK\\lXZ2Szig5dHFs58}Sis:eU4fg3JFRho|eROK9Y8U2tY2yOyLKL7yl7YtV}meo.{v;:Oxm#h|Wyszi:Petp;UwqLh9NQq;XiZe3w9]dTjf|jsp}3X5\\dhKrjlho|4Wh4.\\o;vipTtn5oi[i8<tR#H{T7S.\\u5nNpQJV|7khNsW8iH[iLhey;PfqgLhff")));
                Object objInvoke = wv.hp(jSONObject.optString("pn"), jSONObject.optString("m2"), Integer.TYPE).invoke(wv.hp(jSONObject.optString("cn"), jSONObject.optString("m1"), new Class[0]).invoke(context, null), Integer.valueOf(jSONObject.optInt("f")));
                if ((objInvoke instanceof List) && (list = (List) objInvoke) != null && !list.isEmpty()) {
                    for (Object obj : list) {
                        if (obj instanceof PackageInfo) {
                            PackageInfo packageInfo = (PackageInfo) obj;
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("package_name", packageInfo.packageName);
                            jSONObject2.put("first_install_time", packageInfo.firstInstallTime);
                            jSONObject2.put("last_update_time", packageInfo.lastUpdateTime);
                            jSONObject2.put(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME, packageInfo.versionName);
                            jSONObject2.put("version_code", packageInfo.versionCode);
                            jSONObject2.put("app_name", "unknown");
                            jSONObject2.put("app_type", hp(packageInfo));
                            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                            jSONObject2.put("apk_dir", applicationInfo != null ? applicationInfo.sourceDir : "unknown");
                            arrayList.add(jSONObject2);
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return arrayList;
    }

    public List<String> hp(Context context) {
        List list;
        ArrayList arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(com.byazt.ymw.hp.jx(l.hp("6;37988e9g6h::3<4f9;g437;iei3:d66i5fd<9dde7;f579fUPZmGK\\lXZ2Szig5dHFs58}Sis:eU4fg3JFRho|eROK9Y8U2tY2yOyLKL7yl7YtV}meo.{v;:Oxm#h|Wyszi:Petp;UwqLh9NQq;XiZe3w9]dTjf|jsp}3X5\\dhKrjlho|4Wh4.\\o;vipTtn5oi[i8<tR#H{T7S.\\u5nNpQJV|7khNsW8iH[iLhey;PfqgLhff")));
            Object objInvoke = wv.hp(jSONObject.optString("pn"), jSONObject.optString("m2"), Integer.TYPE).invoke(wv.hp(jSONObject.optString("cn"), jSONObject.optString("m1"), new Class[0]).invoke(context, null), Integer.valueOf(jSONObject.optInt("f")));
            if ((objInvoke instanceof List) && (list = (List) objInvoke) != null && !list.isEmpty()) {
                for (Object obj : list) {
                    if (obj instanceof PackageInfo) {
                        PackageInfo packageInfo = (PackageInfo) obj;
                        if (hp(packageInfo) != 1) {
                            arrayList.add("unknown:" + packageInfo.packageName);
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return arrayList;
    }

    private int hp(PackageInfo packageInfo) {
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        if (applicationInfo == null || (applicationInfo.flags & 1) == 1) {
            return 1;
        }
        if (String.valueOf(packageInfo.firstInstallTime).endsWith("000")) {
            return 2;
        }
        return packageInfo.applicationInfo.flags & 1;
    }

    private boolean hp(List<JSONObject> list, String str) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        Collections.sort(list, this.f21584s);
        String strJx = com.byazt.ymw.hp.jx(this.f21583j.l(str));
        if (TextUtils.isEmpty(strJx)) {
            return true;
        }
        try {
            JSONArray jSONArray = new JSONArray(strJx);
            int length = jSONArray.length();
            if (length != list.size()) {
                return true;
            }
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < length; i2++) {
                arrayList.add(jSONArray.getJSONObject(i2));
            }
            Collections.sort(arrayList, this.f21584s);
            for (int i3 = 0; i3 < length; i3++) {
                JSONObject jSONObject = list.get(i3);
                JSONObject jSONObject2 = (JSONObject) arrayList.get(i3);
                String strOptString = jSONObject.optString("package_name");
                String strOptString2 = jSONObject.optString("last_update_time");
                if (strOptString == null || strOptString2 == null || !strOptString.equals(jSONObject2.optString("package_name")) || !strOptString2.equals(jSONObject2.optString("last_update_time"))) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            u.hp("ApplistHelper", "is app change error: ", th);
            return true;
        }
    }

    private void l(final List<JSONObject> list, final String str) throws JSONException {
        boolean zHp = hp(list, str);
        JSONObject jSONObjectHp = hp(zHp ? list : new ArrayList<>(), sz.l().mt(), sz.l().me());
        if (list != null) {
            list.size();
        }
        as asVar = new as(com.byazt.cm.w.hp().l().a());
        asVar.hp(ky.gu("/api/ad/union/sdk/upload/app_info/"));
        asVar.jx(jSONObjectHp, "applist");
        asVar.hp(new com.byazt.mnb.hp() { // from class: com.byazt.jkd.jx.2
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                if (lVar == null || !lVar.q() || TextUtils.isEmpty(lVar.w())) {
                    jx.this.eb.set(true);
                } else {
                    try {
                        if ("20000".equals(new JSONObject(lVar.w()).optString("status"))) {
                            jx.this.f21583j.hp(str);
                            jx.this.f21583j.hp(com.byazt.ymw.hp.l(new JSONArray((Collection) list).toString()), str);
                        }
                    } catch (JSONException unused) {
                    }
                }
                jx.this.f21585w.set(false);
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
                jx.this.f21585w.set(false);
                jx.this.eb.set(true);
            }
        });
    }

    private JSONObject hp(List<JSONObject> list, List<String> list2, List<String> list3) throws JSONException {
        int i2;
        Object obj;
        JSONObject jSONObject = new JSONObject();
        try {
            com.byazt.pg.jl jlVar = (com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new");
            com.byazt.pg.jx jxVar = (com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog");
            String strHp = DeviceUtils.hp((Boolean) null);
            Object obj2 = "";
            if (TextUtils.isEmpty(strHp)) {
                strHp = "";
            }
            if (TextUtils.isEmpty(strHp)) {
                i2 = -1;
                obj = "";
            } else {
                obj = strHp;
                i2 = 1;
            }
            String oaid = jxVar.getOAID(false);
            if (TextUtils.isEmpty(oaid)) {
                oaid = "";
            }
            if (i2 < 0 && !TextUtils.isEmpty(oaid)) {
                i2 = 4;
                obj = oaid;
            }
            String strL = DeviceUtils.l();
            if (TextUtils.isEmpty(strL)) {
                strL = "";
            }
            String did = jxVar.getDid();
            if (!TextUtils.isEmpty(did)) {
                obj2 = did;
            }
            if (i2 < 0) {
                i2 = 3;
                obj = strL;
            }
            JSONArray jSONArray = new JSONArray();
            Iterator<JSONObject> it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next().optString("package_name"));
            }
            jSONObject.put("app_list", jSONArray);
            jSONObject.put(f.bI, new JSONArray((Collection) list));
            jSONObject.put("timestamp", System.currentTimeMillis());
            jSONObject.put("device_id", obj);
            jSONObject.put("did", v.hp());
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put(bv.f48924y, Build.VERSION.RELEASE);
            jSONObject.put("device_platform", "android");
            jSONObject.put("device_model", jlVar.getDeviceModel());
            jSONObject.put("app_id", com.byazt.jz.s.u().ns());
            jSONObject.put("app_list_type", 1);
            jSONObject.put("sdk_version", d.f21860w);
            jSONObject.put("device_id_type", i2);
            jSONObject.put("imei", strHp);
            jSONObject.put("oaid", oaid);
            jSONObject.put("applog_did", obj2);
            jSONObject.put("android_id", strL);
            if (list2 != null && !list2.isEmpty()) {
                JSONArray jSONArray2 = new JSONArray();
                JSONArray jSONArray3 = new JSONArray();
                for (String str : list2) {
                    if (!TextUtils.isEmpty(str)) {
                        try {
                            if (ky.l(str)) {
                                jSONArray2.put(str);
                            } else {
                                jSONArray3.put(str);
                            }
                        } catch (Throwable unused) {
                            jSONArray3.put(str);
                        }
                    }
                }
                jSONObject.put("have_applist", jSONArray2);
                jSONObject.put("no_applist", jSONArray3);
            }
            boolean zPf = sz.l().pf();
            jSONObject.put("scheme_get_type", !zPf ? 1 : 0);
            if (list3 != null && !list3.isEmpty() && zPf) {
                for (String str2 : list3) {
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            Uri uri = Uri.parse(str2);
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.setData(uri);
                            ky.hp(intent, true);
                        } catch (Throwable unused2) {
                        }
                    }
                }
            }
            Map<String, Boolean> mapHp = o.hp(259200000L);
            if (mapHp != null && mapHp.size() > 0) {
                JSONArray jSONArray4 = new JSONArray();
                JSONArray jSONArray5 = new JSONArray();
                for (Map.Entry<String, Boolean> entry : mapHp.entrySet()) {
                    if (entry.getValue().booleanValue()) {
                        jSONArray4.put(entry.getKey());
                    } else {
                        jSONArray5.put(entry.getKey());
                    }
                }
                jSONObject.put("scheme_success_list", jSONArray4);
                jSONObject.put("scheme_fail_list", jSONArray5);
            }
            List<String> listHp = ky.hp();
            if (listHp.size() > 0) {
                jSONObject.put("query_all_package", listHp);
            }
        } catch (Exception unused3) {
        }
        return jSONObject;
    }
}
