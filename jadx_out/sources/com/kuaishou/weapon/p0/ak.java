package com.kuaishou.weapon.p0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class ak {

    /* renamed from: A, reason: collision with root package name */
    private static final String f30774A = "b3JnLnNhbmRyb3Byb3h5LmRyb255";

    /* renamed from: B, reason: collision with root package name */
    private static final String f30775B = "aW8ueHVkd29mdGVuY2VudG1t";

    /* renamed from: C, reason: collision with root package name */
    private static final String f30776C = "Y29tLmp0anNiLnZpcnR1YWxkd3Nx";

    /* renamed from: D, reason: collision with root package name */
    private static final String f30777D = "Y29tLnR4eS5hbnl3aGVyZQ==";

    /* renamed from: E, reason: collision with root package name */
    private static final String f30778E = "Y29tLmRpbmd3ZWkueHVuaWpp";

    /* renamed from: F, reason: collision with root package name */
    private static final String f30779F = "bWUud2Vpc2h1LmV4cA==";

    /* renamed from: G, reason: collision with root package name */
    private static final String f30780G = "Y29tLnZhcmlhYmxlLmFwa2hvb2s=";

    /* renamed from: H, reason: collision with root package name */
    private static final String f30781H = "ZXUuZmFpcmNvZGUueGx1YQ==";

    /* renamed from: I, reason: collision with root package name */
    private static final String f30782I = "Y29tLnRvcGpvaG53dS5tYWdpc2s=";

    /* renamed from: J, reason: collision with root package name */
    private static final String f30783J = "Y29tLndpbmQuY290dGVy";

    /* renamed from: K, reason: collision with root package name */
    private static final String f30784K = "bW9iaS5hY3BtLmluc3BlY2thZ2U=";

    /* renamed from: a, reason: collision with root package name */
    private static final String f30785a = "Y29tLmdpdGh1Yi51aWF1dG9tYXRvcg==";

    /* renamed from: b, reason: collision with root package name */
    private static final String f30786b = "Y29tLmJ1c2NvZGUud2hhdHNpbnB1dA==";

    /* renamed from: c, reason: collision with root package name */
    private static final String f30787c = "b3JnLmF1dG9qcy5hdXRvanM=";

    /* renamed from: d, reason: collision with root package name */
    private static final String f30788d = "ZGUucm9idi5hbmRyb2lkLnhwb3NlZC5pbnN0YWxsZXI=";

    /* renamed from: e, reason: collision with root package name */
    private static final String f30789e = "Y29tLnNhbmZlbmdhbmRyb2lkLmRhdGFmaWx0ZXI=";

    /* renamed from: f, reason: collision with root package name */
    private static final String f30790f = "aXQuZXZpbHNvY2tldC5kc3Bsb2l0";

    /* renamed from: g, reason: collision with root package name */
    private static final String f30791g = "dWsuZGlnaXRhbHNxdWlkLm5ldHNwb29mZXI=";

    /* renamed from: h, reason: collision with root package name */
    private static final String f30792h = "Y29tLm13ci5keg==";

    /* renamed from: i, reason: collision with root package name */
    private static final String f30793i = "Y29tLm1ldGFzcGxvaXQuc3RhZ2U=";

    /* renamed from: j, reason: collision with root package name */
    private static final String f30794j = "Y29tLng4enMuc2FuZGJveA==";

    /* renamed from: k, reason: collision with root package name */
    private static final String f30795k = "Y29tLmYxcGxheWVy";

    /* renamed from: l, reason: collision with root package name */
    private static final String f30796l = "Y29tLmNvZmZhY2UuaXZhZGVy";

    /* renamed from: m, reason: collision with root package name */
    private static final String f30797m = "Y29tLmRldmljZS5lbXVsYXRvci5wcnA=";

    /* renamed from: n, reason: collision with root package name */
    private static final String f30798n = "Y29tLnVuaXF1ZS5tb2JpbGVmYWtlcg==";

    /* renamed from: o, reason: collision with root package name */
    private static final String f30799o = "bmV0LmdkaS5tb2R1bGUuYXBweA==";

    /* renamed from: p, reason: collision with root package name */
    private static final String f30800p = "b3JnLm1va2VlLm1rc2V0dGluZ3M=";

    /* renamed from: q, reason: collision with root package name */
    private static final String f30801q = "Y29tLm1pbmkubGl2ZS5saXZl";

    /* renamed from: r, reason: collision with root package name */
    private static final String f30802r = "dG9wLm5pdW5haWp1bi5ibGFja2JveGEzMg==";

    /* renamed from: s, reason: collision with root package name */
    private static final String f30803s = "dG9wLm5pdW5haWp1bi5ibGFja2JveGE2NA==";

    /* renamed from: t, reason: collision with root package name */
    private static final String f30804t = "dG9wLm5pdW5haWp1bi5ibGFja2RleGEzMg==";

    /* renamed from: u, reason: collision with root package name */
    private static final String f30805u = "dG9wLm5pdW5haWp1bi5ibGFja2RleGE2NA==";

    /* renamed from: v, reason: collision with root package name */
    private static final String f30806v = "aW8udmlydHVhbGFwcC5zYW5kdnhwb3NlZDMy";

    /* renamed from: w, reason: collision with root package name */
    private static final String f30807w = "aW8udmlydHVhbGFwcC5zYW5kdnhwb3NlZDY0";

    /* renamed from: x, reason: collision with root package name */
    private static final String f30808x = "enBwLndqeS56cG9zZWQuaW5zdGFsbGVy";

    /* renamed from: y, reason: collision with root package name */
    private static final String f30809y = "Y29tLnNrLnNwcm9tb3Rlcg==";

    /* renamed from: z, reason: collision with root package name */
    private static final String f30810z = "Y29tLnNlc2FtZS5wcm94eQ==";

    private JSONObject n(Context context) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            if (a(context, f30790f)) {
                jSONObject.put("0", 1);
            }
            if (a(context, f30791g)) {
                jSONObject.put("1", 1);
            }
            if (a(context, f30792h)) {
                jSONObject.put("2", 1);
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    private JSONObject o(Context context) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            if (a(context, f30785a)) {
                jSONObject.put("0", 1);
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    private JSONObject p(Context context) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            if (a(context, f30794j)) {
                jSONObject.put("0", 1);
            }
            if (a(context, f30795k)) {
                jSONObject.put("1", 1);
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    private JSONObject q(Context context) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            if (a(context, f30796l)) {
                jSONObject.put("0", 1);
            }
            if (a(context, f30797m)) {
                jSONObject.put("1", 1);
            }
            if (a(context, f30798n)) {
                jSONObject.put("2", 1);
            }
            if (a(context, f30799o)) {
                jSONObject.put("3", 1);
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    private JSONObject r(Context context) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            if (a(context, f30800p)) {
                jSONObject.put("0", 1);
            }
            if (a(context, f30801q)) {
                jSONObject.put("1", 1);
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject a(Context context) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("0", a(context, f30785a) ? 1 : 0);
            jSONObject.put("1", a(context, f30786b) ? 1 : 0);
            jSONObject.put("2", a(context, f30787c) ? 1 : 0);
            jSONObject.put("3", a(context, f30788d) ? 1 : 0);
            jSONObject.put("4", a(context, f30789e) ? 1 : 0);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public int b(Context context) {
        return a(context, f30793i) ? 1 : 0;
    }

    public JSONObject c(Context context) {
        try {
            JSONObject jSONObjectO = o(context);
            if (jSONObjectO == null) {
                return null;
            }
            if (jSONObjectO.length() > 0) {
                return jSONObjectO;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject d(Context context) {
        try {
            JSONObject jSONObjectN = n(context);
            if (jSONObjectN == null) {
                return null;
            }
            if (jSONObjectN.length() > 0) {
                return jSONObjectN;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject e(Context context) {
        try {
            JSONObject jSONObjectP = p(context);
            if (jSONObjectP == null) {
                return null;
            }
            if (jSONObjectP.length() > 0) {
                return jSONObjectP;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject f(Context context) {
        try {
            JSONObject jSONObjectQ = q(context);
            if (jSONObjectQ == null) {
                return null;
            }
            if (jSONObjectQ.length() > 0) {
                return jSONObjectQ;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject g(Context context) {
        try {
            JSONObject jSONObjectR = r(context);
            if (jSONObjectR == null) {
                return null;
            }
            if (jSONObjectR.length() > 0) {
                return jSONObjectR;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject h(Context context) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(f30802r);
            arrayList.add(f30803s);
            JSONObject jSONObjectA = a(context, arrayList);
            if (jSONObjectA == null) {
                return null;
            }
            if (jSONObjectA.length() > 0) {
                return jSONObjectA;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject i(Context context) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(f30806v);
            arrayList.add(f30807w);
            arrayList.add(f30783J);
            arrayList.add(f30784K);
            JSONObject jSONObjectA = a(context, arrayList);
            if (jSONObjectA == null) {
                return null;
            }
            if (jSONObjectA.length() > 0) {
                return jSONObjectA;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject j(Context context) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(f30808x);
            arrayList.add(f30809y);
            arrayList.add(f30780G);
            arrayList.add(f30781H);
            arrayList.add(f30782I);
            JSONObject jSONObjectA = a(context, arrayList);
            if (jSONObjectA == null) {
                return null;
            }
            if (jSONObjectA.length() > 0) {
                return jSONObjectA;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject k(Context context) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(f30810z);
            arrayList.add(f30774A);
            JSONObject jSONObjectA = a(context, arrayList);
            if (jSONObjectA == null) {
                return null;
            }
            if (jSONObjectA.length() > 0) {
                return jSONObjectA;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject l(Context context) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(f30775B);
            arrayList.add(f30776C);
            arrayList.add(f30777D);
            arrayList.add(f30778E);
            arrayList.add(f30779F);
            JSONObject jSONObjectA = a(context, arrayList);
            if (jSONObjectA == null) {
                return null;
            }
            if (jSONObjectA.length() > 0) {
                return jSONObjectA;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject m(Context context) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(f30804t);
            arrayList.add(f30805u);
            JSONObject jSONObjectA = a(context, arrayList);
            if (jSONObjectA == null) {
                return null;
            }
            if (jSONObjectA.length() > 0) {
                return jSONObjectA;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static boolean a(Context context, String str) throws PackageManager.NameNotFoundException {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (!str.contains(com.anythink.core.common.d.i.f2495E)) {
                str = new String(c.a(str.getBytes(), 2));
            }
            context.getPackageManager().getApplicationInfo(str, 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private JSONObject a(Context context, List<String> list) throws JSONException {
        if (list == null) {
            return null;
        }
        try {
            if (list.size() <= 0) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            for (int i2 = 0; i2 < list.size(); i2++) {
                if (a(context, list.get(i2))) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(i2);
                    jSONObject.put(sb.toString(), 1);
                }
            }
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String a() {
        try {
            StringBuilder sb = new StringBuilder();
            String[] strArr = {"/data/dalvik-cache/xposed_XResourcesSuperClass.dex", "data/dalvik-cache/xposed_XTypedArraySuperClass.dex", "/system/bin/androVM-prop", "/system/bin/nemuVM-prop", "/system/bin/ldmountsf", "/system/bin/noxspeedup", "/system/bin/nox-vbox-sf", "/system/bin/nox-prop", "/dev/qemu_pipe", "/dev/socket/qemud", "/system/lib/libc_malloc_debug_qemu.so", "/sys/qemu_trace", "/system/bin/qemu-props", "/dev/socket/genyd", "/dev/socket/baseband_genyd", "/system/bin/ttVM-prop", "/system/bin/3btrans", "/system/bin/droid4x-prop", "/ueventd.nox.rc", "/init.nox.rc"};
            for (int i2 = 0; i2 < 20; i2++) {
                if (new File(strArr[i2]).exists()) {
                    sb.append("1");
                } else {
                    sb.append("0");
                }
            }
            return sb.toString();
        } catch (Exception unused) {
            return "";
        }
    }
}
