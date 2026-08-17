package com.byazt.jb;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.fu.DownloadInfo;
import com.byazt.xq.s;
import com.byazt.yk.Downloader;
import com.byazt.yk.jx;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1811, 28})
/* loaded from: classes.dex */
public class hp {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f21270a;
    public static hp eb;

    /* renamed from: j, reason: collision with root package name */
    public static JSONObject f21271j;
    public static JSONObject jx;

    /* renamed from: w, reason: collision with root package name */
    public static Boolean f21273w;

    /* renamed from: e, reason: collision with root package name */
    public final Boolean f21274e;
    public int gu;

    /* renamed from: q, reason: collision with root package name */
    public final JSONObject f21275q;

    /* renamed from: s, reason: collision with root package name */
    public final JSONObject f21276s;
    public static final s<Integer, hp> hp = new s<>(16, 16);

    /* renamed from: l, reason: collision with root package name */
    public static final hp f21272l = new hp(null);

    static {
        hp();
    }

    private hp(JSONObject jSONObject) {
        Boolean bool;
        this.f21276s = jSONObject;
        JSONObject jSONObject2 = null;
        boolValueOf = null;
        boolValueOf = null;
        Boolean boolValueOf = null;
        if (jSONObject == null || a("bugfix")) {
            bool = null;
        } else {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("bugfix");
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.has("default") && !a("default")) {
                boolValueOf = Boolean.valueOf(jSONObjectOptJSONObject.optInt("default", 0) == 1);
            }
            Boolean bool2 = boolValueOf;
            jSONObject2 = jSONObjectOptJSONObject;
            bool = bool2;
        }
        this.f21275q = jSONObject2;
        this.f21274e = bool;
    }

    public static boolean a(String str) {
        JSONObject jSONObject = jx;
        return jSONObject != null && jSONObject.optInt(str, 0) == 1;
    }

    public static void hp() {
        Boolean boolValueOf;
        JSONObject jSONObjectDy = jx.dy();
        f21270a = jSONObjectDy.optInt("disable_task_setting", 0) == 1;
        jx = jSONObjectDy.optJSONObject("disabled_task_keys");
        JSONObject jSONObjectOptJSONObject = jSONObjectDy.optJSONObject("bugfix");
        if (jSONObjectOptJSONObject == null || !jSONObjectOptJSONObject.has("default")) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(jSONObjectOptJSONObject.optInt("default", 0) == 1);
        }
        f21271j = jSONObjectOptJSONObject;
        f21273w = boolValueOf;
    }

    @NonNull
    public static hp jx() {
        return f21272l;
    }

    @NonNull
    public static JSONObject l() {
        return jx.dy();
    }

    public JSONObject j(String str) {
        JSONObject jSONObject = this.f21276s;
        return (jSONObject == null || !jSONObject.has(str) || a(str)) ? l().optJSONObject(str) : this.f21276s.optJSONObject(str);
    }

    public JSONArray w(String str) {
        JSONObject jSONObject = this.f21276s;
        return (jSONObject == null || !jSONObject.has(str) || a(str)) ? l().optJSONArray(str) : this.f21276s.optJSONArray(str);
    }

    public String jx(String str) {
        return hp(str, "");
    }

    public boolean l(String str, boolean z2) {
        if (this.f21275q != null && !a(str)) {
            if (this.f21275q.has(str)) {
                return this.f21275q.optInt(str, z2 ? 1 : 0) == 1;
            }
            Boolean bool = this.f21274e;
            if (bool != null) {
                return bool.booleanValue();
            }
        }
        JSONObject jSONObject = f21271j;
        if (jSONObject != null) {
            if (jSONObject.has(str)) {
                return f21271j.optInt(str, z2 ? 1 : 0) == 1;
            }
            Boolean bool2 = f21273w;
            if (bool2 != null) {
                return bool2.booleanValue();
            }
        }
        return z2;
    }

    private static hp jx(int i2) {
        DownloadInfo downloadInfo;
        if (f21270a) {
            return f21272l;
        }
        Context contextMp = jx.mp();
        if (contextMp != null && (downloadInfo = Downloader.getInstance(contextMp).getDownloadInfo(i2)) != null) {
            return l(downloadInfo);
        }
        return f21272l;
    }

    public static void hp(String str, boolean z2) throws JSONException {
        try {
            if (f21271j == null) {
                f21271j = new JSONObject();
            }
            f21271j.put(str, z2 ? 1 : 0);
        } catch (JSONException unused) {
        }
    }

    @NonNull
    public static hp hp(int i2) {
        return hp(i2, (DownloadInfo) null);
    }

    public int l(String str) {
        return hp(str, 0);
    }

    @NonNull
    public static hp hp(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return f21272l;
        }
        return hp(downloadInfo.getId(), downloadInfo);
    }

    public static void l(int i2) {
        hp hpVar = eb;
        if (hpVar != null && hpVar.gu == i2) {
            eb = null;
        }
        s<Integer, hp> sVar = hp;
        synchronized (sVar) {
            sVar.remove(Integer.valueOf(i2));
        }
    }

    private static hp hp(int i2, DownloadInfo downloadInfo) {
        hp hpVarJx;
        hp hpVar = eb;
        if (hpVar != null && hpVar.gu == i2) {
            return hpVar;
        }
        s<Integer, hp> sVar = hp;
        synchronized (sVar) {
            hpVarJx = sVar.get(Integer.valueOf(i2));
        }
        if (hpVarJx == null) {
            hpVarJx = downloadInfo == null ? jx(i2) : l(downloadInfo);
            synchronized (sVar) {
                sVar.put(Integer.valueOf(i2), hpVarJx);
            }
        }
        hpVarJx.gu = i2;
        eb = hpVarJx;
        return hpVarJx;
    }

    private static hp l(DownloadInfo downloadInfo) {
        if (f21270a) {
            return f21272l;
        }
        try {
            String downloadSettingString = downloadInfo.getDownloadSettingString();
            if (!TextUtils.isEmpty(downloadSettingString)) {
                return new hp(new JSONObject(downloadSettingString));
            }
        } catch (Throwable unused) {
        }
        return f21272l;
    }

    public boolean hp(String str) {
        return l(str, false);
    }

    public int hp(String str, int i2) {
        JSONObject jSONObject = this.f21276s;
        if (jSONObject != null && jSONObject.has(str) && !a(str)) {
            return this.f21276s.optInt(str, i2);
        }
        return l().optInt(str, i2);
    }

    public long hp(String str, long j2) {
        JSONObject jSONObject = this.f21276s;
        if (jSONObject != null && jSONObject.has(str) && !a(str)) {
            return this.f21276s.optLong(str, j2);
        }
        return l().optLong(str, j2);
    }

    public double hp(String str, double d2) {
        JSONObject jSONObject = this.f21276s;
        if (jSONObject != null && jSONObject.has(str) && !a(str)) {
            return this.f21276s.optDouble(str, d2);
        }
        return l().optDouble(str, d2);
    }

    public String hp(String str, String str2) {
        JSONObject jSONObject = this.f21276s;
        if (jSONObject != null && jSONObject.has(str) && !a(str)) {
            return this.f21276s.optString(str, str2);
        }
        return l().optString(str, str2);
    }

    @NonNull
    public static hp hp(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject != l() && !f21270a) {
            hp hpVar = eb;
            if (hpVar != null && hpVar.f21276s == jSONObject) {
                return hpVar;
            }
            s<Integer, hp> sVar = hp;
            synchronized (sVar) {
                try {
                    for (hp hpVar2 : sVar.values()) {
                        if (hpVar2.f21276s == jSONObject) {
                            eb = hpVar2;
                            return hpVar2;
                        }
                    }
                    hp hpVar3 = new hp(jSONObject);
                    eb = hpVar3;
                    return hpVar3;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f21272l;
    }

    public static void hp(int i2, JSONObject jSONObject) {
        hp next;
        if (jSONObject == null || jSONObject == l() || f21270a) {
            return;
        }
        s<Integer, hp> sVar = hp;
        synchronized (sVar) {
            try {
                hp hpVar = eb;
                if (hpVar != null && hpVar.f21276s == jSONObject) {
                    hpVar.gu = i2;
                } else {
                    Iterator<hp> it = sVar.values().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                        if (next.f21276s == jSONObject) {
                            next.gu = i2;
                            break;
                        }
                    }
                    if (next == null) {
                        hpVar = new hp(jSONObject);
                        hpVar.gu = i2;
                    } else {
                        hpVar = next;
                    }
                    eb = hpVar;
                }
                hp.put(Integer.valueOf(i2), hpVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
