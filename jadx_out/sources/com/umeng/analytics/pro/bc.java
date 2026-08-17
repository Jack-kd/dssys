package com.umeng.analytics.pro;

import android.text.TextUtils;
import com.umeng.commonsdk.debug.UMRTLog;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class bc {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f48772a = {"um_plus_game_level", "um_plus_game_pay", "um_plus_game_buy", "um_plus_game_use", "um_plus_game_bonus"};

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f48773b = {"id", "ts", g.ac, "__ct__", "pn", "ds"};

    /* renamed from: c, reason: collision with root package name */
    public static final String f48774c = "^(?!\\d)[a-zA-Z0-9_\\-\\+\\.]{1,}$";

    /* renamed from: d, reason: collision with root package name */
    public static final int f48775d = 128;

    /* renamed from: e, reason: collision with root package name */
    public static final int f48776e = 256;

    /* renamed from: f, reason: collision with root package name */
    public static final int f48777f = 100;

    /* renamed from: h, reason: collision with root package name */
    private a f48779h;

    /* renamed from: i, reason: collision with root package name */
    private String f48780i;

    /* renamed from: j, reason: collision with root package name */
    private String f48781j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f48782k;

    /* renamed from: l, reason: collision with root package name */
    private Map<String, String> f48783l = null;

    /* renamed from: m, reason: collision with root package name */
    private Map<String, Object> f48784m = null;

    /* renamed from: g, reason: collision with root package name */
    JSONObject f48778g = null;

    /* renamed from: com.umeng.analytics.pro.bc$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f48785a;

        static {
            int[] iArr = new int[a.values().length];
            f48785a = iArr;
            try {
                iArr[a.ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f48785a[a.LABEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f48785a[a.STRING_MAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f48785a[a.OBJECT_MAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum a {
        ID,
        LABEL,
        STRING_MAP,
        OBJECT_MAP
    }

    private void h() {
        String str;
        try {
            JSONArray jSONArray = new JSONArray();
            String str2 = this.f48780i;
            String strSubstring = "";
            if (str2 == null) {
                jSONArray.put(az.f48739a);
            } else if (TextUtils.isEmpty(str2.trim())) {
                jSONArray.put(az.f48740b);
            } else {
                boolean z2 = this.f48780i.trim().getBytes().length > 128;
                if (Arrays.asList(f48772a).contains(this.f48780i)) {
                    jSONArray.put(az.f48741c);
                    str = this.f48780i;
                } else {
                    str = null;
                }
                if (!Pattern.matches(f48774c, this.f48780i)) {
                    jSONArray.put(az.f48743e);
                    str = this.f48780i;
                }
                if (z2) {
                    jSONArray.put(az.f48742d);
                    strSubstring = this.f48780i.length() > 128 ? this.f48780i.substring(0, 128) : this.f48780i;
                } else {
                    strSubstring = str;
                }
            }
            if (strSubstring != null) {
                this.f48778g.put("eID", strSubstring);
                if (jSONArray.length() > 0) {
                    this.f48778g.put("code", jSONArray);
                }
            }
        } catch (Throwable unused) {
        }
    }

    private void i() {
        try {
            h();
            JSONObject jSONObjectA = a(this.f48780i, this.f48781j, true);
            if (jSONObjectA.length() > 0) {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObjectA);
                if (this.f48778g == null) {
                    this.f48778g = new JSONObject();
                }
                if (!this.f48778g.has("eID")) {
                    this.f48778g.put("eID", this.f48780i);
                }
                this.f48778g.put("epps", jSONArray);
            }
        } catch (Throwable unused) {
        }
    }

    private void j() {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            h();
            if (this.f48783l == null) {
                this.f48784m = null;
            } else {
                this.f48784m = new HashMap(this.f48783l);
            }
            a(this.f48784m, jSONObject, jSONArray);
            a(jSONObject, jSONArray);
        } catch (Throwable unused) {
        }
    }

    private void k() {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            h();
            a(this.f48784m, jSONObject, jSONArray);
            a(jSONObject, jSONArray);
        } catch (Throwable unused) {
        }
    }

    public a a() {
        return this.f48779h;
    }

    public String b() {
        return this.f48780i;
    }

    public String c() {
        return this.f48781j;
    }

    public boolean d() {
        return this.f48782k;
    }

    public Map<String, String> e() {
        return this.f48783l;
    }

    public Map<String, Object> f() {
        return this.f48784m;
    }

    public JSONObject g() {
        this.f48778g = new JSONObject();
        int i2 = AnonymousClass1.f48785a[this.f48779h.ordinal()];
        if (i2 == 1) {
            h();
            JSONObject jSONObject = this.f48778g;
            if (jSONObject == null || jSONObject.length() <= 0) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "未检查到错误。 ");
            } else {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "result: " + this.f48778g);
            }
        } else if (i2 == 2) {
            i();
            JSONObject jSONObject2 = this.f48778g;
            if (jSONObject2 == null || jSONObject2.length() <= 0) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "未检查到错误。 ");
            } else {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "result: " + this.f48778g);
            }
        } else if (i2 == 3) {
            j();
            JSONObject jSONObject3 = this.f48778g;
            if (jSONObject3 == null || jSONObject3.length() <= 0) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "未检查到错误。 ");
            } else {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "result: " + this.f48778g);
            }
        } else if (i2 != 4) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "unknown CkItem type!");
        } else {
            k();
            JSONObject jSONObject4 = this.f48778g;
            if (jSONObject4 == null || jSONObject4.length() <= 0) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "未检查到错误。 ");
            } else {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "result: " + this.f48778g);
            }
        }
        return this.f48778g;
    }

    private JSONObject c(String str, Object obj) {
        JSONObject jSONObject = new JSONObject();
        if (obj instanceof String) {
            return a(str, (String) obj, false);
        }
        if ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof Float) || (obj instanceof Double)) {
            return jSONObject;
        }
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(az.f48755q);
        jSONObject.put("code", jSONArray);
        jSONObject.put("pid", obj.getClass().getName());
        jSONObject.put("msg", str);
        return jSONObject;
    }

    public bc a(a aVar) {
        this.f48779h = aVar;
        return this;
    }

    public bc b(String str) {
        this.f48781j = str;
        return this;
    }

    public bc a(String str) {
        this.f48780i = str;
        return this;
    }

    public bc b(Map<String, Object> map) {
        this.f48784m = map;
        return this;
    }

    private void b(Map<String, Object> map, JSONObject jSONObject, JSONArray jSONArray) {
        try {
            for (String str : map.keySet()) {
                Object obj = map.get(str);
                JSONArray jSONArrayA = a(str, obj);
                if (jSONArrayA != null && jSONArrayA.length() > 0) {
                    for (int i2 = 0; i2 < jSONArrayA.length(); i2++) {
                        jSONArray.put(jSONArrayA.get(i2));
                    }
                } else {
                    jSONObject.put(str, obj);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public bc a(boolean z2) {
        this.f48782k = z2;
        return this;
    }

    public bc a(Map<String, String> map) {
        this.f48783l = map;
        return this;
    }

    private void a(JSONObject jSONObject, JSONArray jSONArray) throws JSONException {
        if (this.f48778g == null) {
            this.f48778g = new JSONObject();
        }
        if (jSONArray.length() > 0) {
            this.f48778g.put("epps", jSONArray);
            if (jSONObject.length() > 0) {
                this.f48778g.put("pps", jSONObject);
            }
        }
        if (!this.f48778g.has("epps") || this.f48778g.has("code")) {
            return;
        }
        this.f48778g.put("eID", this.f48780i);
    }

    private JSONObject b(String str, Object obj) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            if (str == null) {
                jSONArray.put(az.f48753o);
                jSONObject.put("pid", "");
            } else if (TextUtils.isEmpty(str.trim())) {
                jSONArray.put(az.f48750l);
                jSONObject.put("pid", "");
            } else {
                boolean z2 = str.trim().getBytes().length > 128;
                if (Arrays.asList(f48773b).contains(str)) {
                    jSONArray.put(az.f48745g);
                    jSONObject.put("pid", str);
                }
                if (!Pattern.matches(f48774c, str)) {
                    jSONArray.put(az.f48754p);
                    jSONObject.put("pid", str);
                }
                if (z2) {
                    jSONArray.put(az.f48746h);
                    if (str.length() > 128) {
                        str = str.substring(0, 128);
                    }
                    jSONObject.put("pid", str);
                }
            }
            if (jSONArray.length() > 0) {
                jSONObject.put("code", jSONArray);
                jSONObject.put("msg", obj);
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private void a(Map<String, Object> map, JSONObject jSONObject, JSONArray jSONArray) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            JSONArray jSONArray2 = new JSONArray();
            if (map == null) {
                jSONArray2.put(az.f48752n);
            } else if (map.isEmpty()) {
                jSONArray2.put(az.f48749k);
            } else if (map.size() > 100) {
                jSONArray2.put(az.f48744f);
            }
            if (jSONArray2.length() > 0) {
                jSONObject2.put("code", jSONArray2);
                jSONArray.put(jSONObject2);
            } else {
                b(map, jSONObject, jSONArray);
            }
        } catch (Throwable unused) {
        }
    }

    private JSONArray a(String str, Object obj) {
        JSONArray jSONArray = null;
        try {
            JSONObject jSONObjectB = b(str, obj);
            if (jSONObjectB.length() > 0) {
                JSONArray jSONArray2 = new JSONArray();
                try {
                    jSONArray2.put(jSONObjectB);
                    jSONArray = jSONArray2;
                } catch (Throwable unused) {
                    return jSONArray2;
                }
            }
            JSONObject jSONObjectC = c(str, obj);
            if (jSONObjectC.length() <= 0) {
                return jSONArray;
            }
            if (jSONArray == null) {
                jSONArray = new JSONArray();
            }
            jSONArray.put(jSONObjectC);
            return jSONArray;
        } catch (Throwable unused2) {
            return jSONArray;
        }
    }

    private JSONObject a(String str, String str2, boolean z2) {
        JSONArray jSONArray;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONArray = new JSONArray();
        } catch (Throwable unused) {
        }
        if (str2 == null) {
            jSONArray.put(az.f48747i);
            jSONObject.put("code", jSONArray);
            jSONObject.put("pid", "");
            jSONObject.put("msg", str);
            return jSONObject;
        }
        if (str2.getBytes().length > 256) {
            if (z2) {
                jSONArray.put(az.f48751m);
            } else {
                jSONArray.put(az.f48748j);
            }
            jSONObject.put("code", jSONArray);
            if (str2.length() > 256) {
                str2 = str2.substring(0, 256);
            }
            jSONObject.put("pid", str2);
            jSONObject.put("msg", str);
        }
        return jSONObject;
    }
}
