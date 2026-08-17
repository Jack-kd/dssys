package com.byazt.us;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.xa.s;
import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 226, 34})
/* loaded from: classes3.dex */
public final class l {
    public final jx hp;

    /* renamed from: l, reason: collision with root package name */
    public final List<j> f26387l;

    @com.byazt.kj.hp(hp = {0, 1, 226, 123})
    public static final class hp {
        public final String hp;

        /* renamed from: j, reason: collision with root package name */
        public final float f26388j;
        public final float jx;

        /* renamed from: l, reason: collision with root package name */
        public final int f26389l;

        /* renamed from: w, reason: collision with root package name */
        public final int f26390w;

        private hp(String str, float f2, float f3, int i2) {
            this.hp = str;
            this.f26389l = l.jx(str);
            this.jx = f2;
            this.f26388j = f3;
            this.f26390w = i2;
        }

        public static hp hp(Context context, JSONObject jSONObject) {
            return jSONObject == null ? new hp("circle", s.hp(context, 6.0f), s.hp(context, 6.0f), -1) : new hp(jSONObject.optString("shape", "circle"), s.hp(context, (float) jSONObject.optDouble("width", 6.0d)), s.hp(context, (float) jSONObject.optDouble("height", 6.0d)), com.byazt.xa.hp.hp(jSONObject.optString("color", "#FFFFFF"), -1));
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 226, 893})
    public static final class j {

        /* renamed from: a, reason: collision with root package name */
        public final float f26391a;

        /* renamed from: e, reason: collision with root package name */
        public final float f26392e;
        public final float eb;
        public final float gu;
        public final String hp;

        /* renamed from: j, reason: collision with root package name */
        public final float f26393j;
        public final hp jl;
        public final float jx;

        /* renamed from: l, reason: collision with root package name */
        public final float f26394l;

        /* renamed from: q, reason: collision with root package name */
        public final float f26395q;

        /* renamed from: s, reason: collision with root package name */
        public final float f26396s;

        /* renamed from: w, reason: collision with root package name */
        public final float f26397w;

        private j(String str, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, hp hpVar) {
            this.hp = str;
            this.f26394l = f2;
            this.jx = f3;
            this.f26393j = f4;
            this.f26397w = f5;
            this.f26391a = f6;
            this.eb = f7;
            this.f26396s = f8;
            this.f26395q = f9;
            this.f26392e = f10;
            this.gu = f11;
            this.jl = hpVar;
        }

        public static j hp(Context context, JSONObject jSONObject) {
            return new j(jSONObject.optString("name", ""), (float) jSONObject.optDouble("birthRate", 1.0d), (float) jSONObject.optDouble("lifetime", 1.0d), (float) jSONObject.optDouble("lifetimeRange", 0.0d), (float) jSONObject.optDouble("scale", 1.0d), (float) jSONObject.optDouble("scaleRange", 0.0d), (float) jSONObject.optDouble("velocity", 0.0d), (float) jSONObject.optDouble("velocityRange", 0.0d), (float) jSONObject.optDouble("emissionRange", 0.0d), (float) jSONObject.optDouble("alphaRange", 0.0d), (float) jSONObject.optDouble("alphaSpeed", 0.0d), hp.hp(context, jSONObject.optJSONObject("content")));
        }
    }

    private l(jx jxVar, List<j> list) {
        this.hp = jxVar;
        this.f26387l = list;
    }

    public static int hp(String str) {
        if ("line".equals(str)) {
            return 1;
        }
        if ("rectangle".equals(str)) {
            return 2;
        }
        if ("circle".equals(str)) {
            return 3;
        }
        return "sphere".equals(str) ? 4 : 0;
    }

    public static int j(String str) {
        if ("additive".equals(str)) {
            return 1;
        }
        if ("backToFront".equals(str) || "oldestFirst".equals(str)) {
            return 3;
        }
        return "oldestLast".equals(str) ? 4 : 0;
    }

    public static int jx(String str) {
        if ("rect".equals(str)) {
            return 1;
        }
        return "star".equals(str) ? 2 : 0;
    }

    public static int l(String str) {
        if ("outline".equals(str)) {
            return 1;
        }
        return "surface".equals(str) ? 2 : 0;
    }

    public boolean jx() {
        List<j> list = this.f26387l;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public List<j> l() {
        return this.f26387l;
    }

    public jx hp() {
        return this.hp;
    }

    public static l hp(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return hp(context, new JSONObject(str));
        } catch (Exception unused) {
            return null;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 226, 1376})
    /* renamed from: com.byazt.us.l$l, reason: collision with other inner class name */
    public static final class C0389l {
        public final float hp;

        /* renamed from: l, reason: collision with root package name */
        public final boolean f26405l;

        public C0389l(float f2, boolean z2) {
            this.hp = f2;
            this.f26405l = z2;
        }

        public static C0389l hp(Object obj, C0389l c0389l) {
            if (obj != null) {
                if (obj instanceof Number) {
                    return new C0389l(((Number) obj).floatValue(), false);
                }
                String strTrim = obj.toString().trim();
                if (!TextUtils.isEmpty(strTrim)) {
                    try {
                        return strTrim.endsWith("%") ? new C0389l(Float.parseFloat(strTrim.substring(0, strTrim.length() - 1)) / 100.0f, true) : new C0389l(Float.parseFloat(strTrim), false);
                    } catch (NumberFormatException unused) {
                    }
                }
            }
            return c0389l;
        }

        public float hp(float f2) {
            return this.f26405l ? f2 * this.hp : this.hp;
        }
    }

    public static l hp(Context context, JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        jx jxVarHp = jx.hp(jSONObject.optJSONObject("layer"));
        List<j> listHp = hp(context, jSONObject.optJSONArray("particles"));
        if (listHp.isEmpty()) {
            return null;
        }
        return new l(jxVarHp, listHp);
    }

    @com.byazt.kj.hp(hp = {0, 1, 226, 1157})
    public static final class jx {

        /* renamed from: a, reason: collision with root package name */
        public final int f26398a;

        /* renamed from: e, reason: collision with root package name */
        public final C0389l f26399e;
        public final C0389l eb;
        public final String hp;

        /* renamed from: j, reason: collision with root package name */
        public final int f26400j;
        public final String jx;

        /* renamed from: l, reason: collision with root package name */
        public final String f26401l;

        /* renamed from: q, reason: collision with root package name */
        public final C0389l f26402q;

        /* renamed from: s, reason: collision with root package name */
        public final C0389l f26403s;

        /* renamed from: w, reason: collision with root package name */
        public final int f26404w;

        private jx(String str, String str2, String str3, C0389l c0389l, C0389l c0389l2, C0389l c0389l3, C0389l c0389l4) {
            this.hp = str;
            this.f26401l = str2;
            this.jx = str3;
            this.f26400j = l.hp(str);
            this.f26404w = l.l(str2);
            this.f26398a = l.j(str3);
            this.eb = c0389l;
            this.f26403s = c0389l2;
            this.f26402q = c0389l3;
            this.f26399e = c0389l4;
        }

        public static jx hp(JSONObject jSONObject) {
            if (jSONObject == null) {
                return hp();
            }
            String strOptString = jSONObject.optString("emitterShape", SQLiteMTAHelper.TABLE_POINT);
            String strOptString2 = jSONObject.optString("emitterMode", "points");
            String strOptString3 = jSONObject.optString("renderMode", "unordered");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("emitterPosition");
            C0389l c0389lHp = C0389l.hp(jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.opt("x") : null, new C0389l(0.5f, true));
            C0389l c0389lHp2 = C0389l.hp(jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.opt("y") : null, new C0389l(0.0f, true));
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("emitterSize");
            return new jx(strOptString, strOptString2, strOptString3, c0389lHp, c0389lHp2, C0389l.hp(jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.opt("w") : null, new C0389l(1.0f, true)), C0389l.hp(jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.opt("h") : null, new C0389l(1.0f, true)));
        }

        private static jx hp() {
            return new jx(SQLiteMTAHelper.TABLE_POINT, "points", "unordered", new C0389l(0.5f, true), new C0389l(0.0f, true), new C0389l(1.0f, true), new C0389l(1.0f, true));
        }
    }

    private static List<j> hp(Context context, JSONArray jSONArray) {
        if (jSONArray != null && jSONArray.length() != 0) {
            ArrayList arrayList = new ArrayList(jSONArray.length());
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    arrayList.add(j.hp(context, jSONObjectOptJSONObject));
                }
            }
            return arrayList;
        }
        return Collections.EMPTY_LIST;
    }
}
