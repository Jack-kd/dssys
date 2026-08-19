package com.byazt.yu;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.kc.AbsServerManager;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.umeng.commonsdk.deeplink.DeepLinkPresetEvent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 797, 150})
/* loaded from: classes3.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f28301a = {"channel", AbsServerManager.PACKAGE_QUERY_BINDER, "app_version"};
    public final SharedPreferences eb;
    public boolean hp;
    public final s jx;

    /* renamed from: l, reason: collision with root package name */
    public final Context f28303l;

    /* renamed from: w, reason: collision with root package name */
    public final ArrayList<jx> f28305w = new ArrayList<>(32);

    /* renamed from: s, reason: collision with root package name */
    public int f28304s = 0;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public JSONObject f28302j = new JSONObject();

    public q(Context context, s sVar) {
        this.f28303l = context;
        this.jx = sVar;
        this.eb = sVar.w();
        if (com.byazt.ub.hp.f26121l) {
            com.byazt.hk.eb.hp(context);
        }
    }

    @NonNull
    private JSONObject v() {
        return this.f28302j;
    }

    public boolean a() throws JSONException {
        synchronized (this.f28305w) {
            try {
                if (this.f28305w.size() == 0) {
                    this.f28305w.add(new j(this.f28303l, this.jx));
                    this.f28305w.add(new a(this.f28303l));
                    this.f28305w.add(new eb(this.f28303l, this.jx));
                    this.f28305w.add(new e(this.f28303l));
                    this.f28305w.add(new gu(this.f28303l));
                    this.f28305w.add(new jl(this.f28303l, this.jx));
                    this.f28305w.add(new zy(this.f28303l));
                    this.f28305w.add(new v(this.f28303l, this.jx));
                    this.f28305w.add(new u(this.f28303l, this.jx));
                    this.f28305w.add(new xs());
                    this.f28305w.add(new vv(this.jx));
                    this.f28305w.add(new ec(this.f28303l));
                    this.f28305w.add(new sz(this.f28303l));
                    this.f28305w.add(new n(this.f28303l, this.jx));
                    this.f28305w.add(new hp(this.f28303l, this.jx));
                    this.f28305w.add(new k(this.f28303l, this.jx));
                    this.f28305w.add(new w(this.f28303l, this.jx));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        JSONObject jSONObjectV = v();
        JSONObject jSONObject = new JSONObject();
        com.byazt.gt.zy.jx(jSONObject, jSONObjectV);
        ArrayList<jx> arrayList = this.f28305w;
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = true;
        while (i4 < size) {
            jx jxVar = arrayList.get(i4);
            i4++;
            jx jxVar2 = jxVar;
            if (!jxVar2.hp || jxVar2.jx || hp(jxVar2)) {
                try {
                    jxVar2.hp = jxVar2.hp(jSONObject);
                } catch (SecurityException e2) {
                    if (!jxVar2.f28295l) {
                        i2++;
                        com.byazt.gt.e.l("loadHeader, " + this.f28304s, e2);
                        if (!jxVar2.hp && this.f28304s > 10) {
                            jxVar2.hp = true;
                        }
                    }
                } catch (JSONException e3) {
                    com.byazt.gt.e.l(e3);
                }
                if (!jxVar2.hp && !jxVar2.f28295l) {
                    i3++;
                }
            }
            z2 &= jxVar2.hp || jxVar2.f28295l;
        }
        if (z2) {
            int length = f28301a.length;
            for (int i5 = 0; i5 < length; i5++) {
                z2 &= !TextUtils.isEmpty(jSONObject.optString(r2[i5]));
            }
            String strOptString = jSONObject.optString("user_unique_id", null);
            if (!TextUtils.isEmpty(strOptString)) {
                try {
                    jSONObject.put("user_unique_id", strOptString);
                } catch (JSONException unused) {
                }
            }
        }
        this.f28302j = jSONObject;
        this.hp = z2;
        if (com.byazt.gt.e.f20599l) {
            com.byazt.gt.e.hp("loadHeader, " + this.hp + ", " + this.f28304s + ", " + this.f28302j.toString(), null);
        } else {
            com.byazt.gt.e.j("loadHeader, " + this.hp + ", " + this.f28304s, null);
        }
        if (i2 > 0 && i2 == i3) {
            this.f28304s++;
            if (jl() != 0) {
                this.f28304s += 10;
            }
        }
        if (this.hp) {
            com.byazt.ub.hp.jl().hp(eb(), q(), e());
        }
        return this.hp;
    }

    public String e() {
        return v().optString("ssid", "");
    }

    public String eb() {
        return v().optString("device_id", "");
    }

    public String gu() {
        return v().optString("user_unique_id", "");
    }

    @Nullable
    public JSONObject hp() {
        if (this.hp) {
            return v();
        }
        return null;
    }

    public void j() {
        com.byazt.lxu.j.w().s();
    }

    public int jl() {
        String strOptString = v().optString("device_id", "");
        v().optString("install_id", "");
        if (l(strOptString)) {
            return this.eb.getInt("version_code", 0) == v().optInt("version_code", -1) ? 1 : 2;
        }
        return 0;
    }

    public String jx() throws JSONException {
        String strOptString = this.hp ? v().optString("app_version", null) : null;
        for (int i2 = 0; i2 < 3 && strOptString == null; i2++) {
            a();
            strOptString = this.hp ? v().optString("app_version", null) : null;
        }
        return strOptString;
    }

    public String k() {
        return v().optString("ab_sdk_version", "");
    }

    public int l() throws JSONException {
        int iOptInt = this.hp ? v().optInt("version_code", -1) : -1;
        for (int i2 = 0; i2 < 3 && iOptInt == -1; i2++) {
            a();
            iOptInt = this.hp ? v().optInt("version_code", -1) : -1;
        }
        return iOptInt;
    }

    public String q() {
        return v().optString("install_id", "");
    }

    public String s() {
        return v().optString("aid", "");
    }

    public void w() {
        try {
            new k(this.f28303l, this.jx).hp(this.f28302j);
        } catch (Exception e2) {
            com.byazt.ymw.u.hp("od", "e:" + e2.getMessage(), e2);
        }
    }

    public long zy() {
        return v().optLong(DeepLinkPresetEvent.UMEventParamRegisterTime, 0L);
    }

    @Nullable
    public <T> T hp(String str, T t2) {
        T t3;
        JSONObject jSONObjectV = v();
        if (jSONObjectV == null || (t3 = (T) jSONObjectV.opt(str)) == null) {
            t3 = null;
        }
        return t3 == null ? t2 : t3;
    }

    private boolean hp(jx jxVar) {
        boolean z2 = !this.jx.xs() && jxVar.f28294j;
        if (com.byazt.gt.e.f20599l) {
            com.byazt.gt.e.hp("needSyncFromSub " + jxVar + " " + z2, null);
        }
        return z2;
    }

    private synchronized void l(JSONObject jSONObject) {
        if (jSONObject == null) {
            com.byazt.gt.e.l("null abconfig", null);
            return;
        }
        String strOptString = v().optString("ab_version");
        if (!TextUtils.isEmpty(strOptString)) {
            String[] strArrSplit = strOptString.split(",");
            Set<String> hashSet = new HashSet<>();
            for (String str : strArrSplit) {
                if (!TextUtils.isEmpty(str)) {
                    hashSet.add(str);
                }
            }
            Iterator<String> itKeys = jSONObject.keys();
            HashSet hashSet2 = new HashSet();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next instanceof String) {
                    String str2 = next;
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            hashSet2.add(jSONObject.getJSONObject(str2).optString(PointParamKey.VID));
                        } catch (JSONException e2) {
                            com.byazt.gt.e.l(e2);
                        }
                    }
                }
            }
            hashSet.retainAll(hashSet2);
            l("ab_version", hp(hashSet));
        }
    }

    public void hp(JSONObject jSONObject) {
        this.jx.jx(jSONObject);
        l(jSONObject);
    }

    private String hp(Set<String> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(",");
            }
        }
        return sb.toString();
    }

    public void hp(HashMap<String, Object> map) throws JSONException {
        JSONObject jSONObjectOptJSONObject = null;
        if (map != null && !map.isEmpty()) {
            try {
                jSONObjectOptJSONObject = v().optJSONObject("custom");
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = new JSONObject();
                }
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    if (!TextUtils.isEmpty(entry.getKey())) {
                        jSONObjectOptJSONObject.put(entry.getKey(), entry.getValue());
                    }
                }
            } catch (JSONException e2) {
                com.byazt.gt.e.l(e2);
            }
        }
        if (l("custom", jSONObjectOptJSONObject)) {
            this.jx.l(jSONObjectOptJSONObject);
        }
    }

    public static void hp(JSONObject jSONObject, String str, String str2) throws JSONException {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(str, str2);
    }

    public static boolean hp(String str) {
        int length = str != null ? str.length() : 0;
        if (length < 13 || length > 128) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'a' || cCharAt > 'f') && ((cCharAt < 'A' || cCharAt > 'F') && cCharAt != '-'))) {
                return false;
            }
        }
        return true;
    }

    private boolean l(String str, Object obj) {
        boolean z2;
        Object objOpt = v().opt(str);
        if ((obj == null || obj.equals(objOpt)) && (obj != null || objOpt == null)) {
            z2 = false;
        } else {
            synchronized (this) {
                try {
                    JSONObject jSONObject = this.f28302j;
                    JSONObject jSONObject2 = new JSONObject();
                    com.byazt.gt.zy.jx(jSONObject2, jSONObject);
                    jSONObject2.put(str, obj);
                    this.f28302j = jSONObject2;
                } catch (JSONException e2) {
                    com.byazt.gt.e.l(e2);
                }
            }
            z2 = true;
        }
        com.byazt.gt.e.hp("updateHeader, " + str + ", " + objOpt + ", " + obj, null);
        return z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00f8 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hp(org.json.JSONObject r20, java.lang.String r21, java.lang.String r22, java.lang.String r23) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.yu.q.hp(org.json.JSONObject, java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    public static boolean l(String str) {
        if (!TextUtils.isEmpty(str) && !"unknown".equalsIgnoreCase(str) && !"Null".equalsIgnoreCase(str)) {
            for (int i2 = 0; i2 < str.length(); i2++) {
                if (str.charAt(i2) != '0') {
                    return true;
                }
            }
        }
        return false;
    }
}
