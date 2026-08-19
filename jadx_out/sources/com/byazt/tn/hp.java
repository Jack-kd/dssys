package com.byazt.tn;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseArray;
import com.anythink.core.common.d.i;
import com.byazt.aj.a;
import com.byazt.aj.eb;
import com.byazt.jz.d;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.pg.jl;
import com.byazt.rz.PluginConstants;
import com.byazt.uid.q;
import com.byazt.uid.w;
import com.byazt.ymw.e;
import com.byazt.zn.DeviceUtils;
import com.byazt.zn.ky;
import com.byazt.zn.ud;
import com.byazt.zn.v;
import com.byazt.zn.xh;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.sigmob.sdk.base.mta.PointCategory;
import com.umeng.analytics.pro.bv;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import java.lang.reflect.Field;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 800, 28})
/* loaded from: classes3.dex */
public class hp {
    public static String hp;

    public static String jx() {
        return l("com.byted.live.lite");
    }

    private static void l(final Context context) {
        eb.hp(new a() { // from class: com.byazt.tn.hp.1
            @Override // com.byazt.aj.a
            public boolean hp(final Throwable th, final Thread thread) {
                try {
                    q.f26242l.eb(com.byazt.nnr.hp.hp);
                    if (!hp.l(th, null)) {
                        return false;
                    }
                    w.l(new com.byazt.uid.eb("tt_crash_handle") { // from class: com.byazt.tn.hp.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ud.hp().hp(thread, th, hp.hp);
                        }
                    });
                    return true;
                } catch (Throwable unused) {
                    return false;
                }
            }

            @Override // com.byazt.aj.a
            public boolean hp() {
                try {
                    return hp.l(null, Looper.getMainLooper().getThread());
                } catch (Throwable unused) {
                    return false;
                }
            }
        });
        boolean z2 = false;
        boolean z3 = new SecureRandom().nextInt(10) == 0;
        Context applicationContext = context.getApplicationContext();
        com.byazt.aj.w wVar = new com.byazt.aj.w() { // from class: com.byazt.tn.hp.2
            @Override // com.byazt.aj.w
            public List<String> a() {
                return null;
            }

            @Override // com.byazt.aj.w
            public Map<String, Object> eb() {
                HashMap map = new HashMap();
                String strNs = s.u().ns();
                if (TextUtils.isEmpty(strNs)) {
                    strNs = String.valueOf(com.byazt.jz.a.hp().a());
                }
                map.put("host_appid", strNs);
                map.put("sdk_version", "7.6.4.3");
                map.put(PluginConstants.KEY_PLUGIN_VERSION, "7.6.4.3");
                map.put("channel", d.a());
                map.put("sdk_api_version", d.f21860w);
                try {
                    map.put("device_score", Double.valueOf(Double.parseDouble(com.byazt.sf.hp.hp().hp("DeviceRate", "bytebench_value", strNs))));
                } catch (Throwable unused) {
                }
                return map;
            }

            @Override // com.byazt.aj.w
            public Map<String, Object> hp() {
                jl jlVar = (jl) com.byazt.ym.j.getService("device_info_new");
                HashMap map = new HashMap();
                String did = ((com.byazt.pg.jx) com.byazt.ym.j.getService("embed_applog")).getDid();
                if (TextUtils.isEmpty(did)) {
                    did = v.hp();
                }
                if (!TextUtils.isEmpty(did)) {
                    map.put("device_id", did);
                }
                map.put("ac", com.byazt.xh.w.jx(context));
                map.put("aid", com.byazt.jz.a.hp().a());
                map.put("app_name", com.byazt.jz.a.hp().eb());
                String strE = ky.e();
                if (!TextUtils.isEmpty(strE)) {
                    map.put("app_version", strE);
                }
                String strQ = ky.q();
                if (!TextUtils.isEmpty(strQ)) {
                    map.put("version_code", strQ);
                    try {
                        map.put("update_version_code", Integer.valueOf(strQ));
                    } catch (Exception e2) {
                        map.put("update_version_code", 0);
                        e2.getMessage();
                    }
                }
                map.put(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME, "7.6.4.3");
                map.put("sdk_api_version", d.f21860w);
                map.put("device_platform", "android");
                map.put(bv.f48923x, AnalyticsConstants.SDK_TYPE);
                String deviceModel = jlVar.getDeviceModel();
                map.put(bv.ac, deviceModel);
                map.put("device_mode", deviceModel);
                map.put("rom", jlVar.getRomInfo());
                map.put("cpu_abi", Build.CPU_ABI);
                map.put(bv.f48879F, Build.BRAND);
                map.put("channel", d.a());
                map.put("language", Locale.getDefault().getLanguage());
                map.put("os_api", String.valueOf(Build.VERSION.SDK_INT));
                try {
                    String strSubstring = Build.VERSION.RELEASE;
                    if (strSubstring != null && strSubstring.length() > 10) {
                        strSubstring = strSubstring.substring(0, 10);
                    }
                    map.put(bv.f48924y, strSubstring);
                } catch (Exception unused) {
                }
                map.put("openudid", DeviceUtils.l());
                map.put("dpi", String.valueOf(jlVar.getDisplayDpi()));
                map.put(bv.f48925z, xh.j(context) + "*" + xh.w(context));
                return map;
            }

            @Override // com.byazt.aj.w
            public String j() {
                return null;
            }

            @Override // com.byazt.aj.w
            public String jx() {
                return com.byazt.jz.a.hp().j();
            }

            @Override // com.byazt.aj.w
            public String l() {
                String strHp = v.hp();
                return TextUtils.isEmpty(strHp) ? "0" : strHp;
            }

            @Override // com.byazt.aj.w
            public Map<String, Integer> w() {
                return null;
            }
        };
        boolean z4 = (sz.l().qn() & 2) == 0;
        if (z3 && (sz.l().qn() & 1) == 0) {
            z2 = true;
        }
        eb.hp(applicationContext, wVar, z4, z2);
        e.hp().postDelayed(new Runnable() { // from class: com.byazt.tn.hp.3
            @Override // java.lang.Runnable
            public void run() {
                if (!s.u().nu()) {
                    eb.hp();
                }
                if (com.byazt.wu.hp.l()) {
                    return;
                }
                boolean zHq = sz.l().hq();
                boolean zHp = hp.hp();
                if (zHq && zHp) {
                    eb.hp(new com.byazt.zy.l() { // from class: com.byazt.tn.hp.3.1
                    });
                }
            }
        }, 5000L);
    }

    private static String w() {
        return l("com.byted.pangle");
    }

    public static void hp(Context context) {
        l(context);
    }

    private static void hp(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr == null || stackTraceElementArr.length == 0) {
            return;
        }
        try {
            Function<SparseArray<Object>, Object> functionY = s.u().y();
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 17);
            String[] strArr = (String[]) functionY.apply(sparseArray);
            if (strArr != null && strArr.length != 0) {
                Field declaredField = StackTraceElement.class.getDeclaredField("declaringClass");
                declaredField.setAccessible(true);
                for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                    if (stackTraceElement != null) {
                        String className = stackTraceElement.getClassName();
                        if (!TextUtils.isEmpty(className) && !className.startsWith("java") && !className.startsWith("android") && !className.startsWith("org")) {
                            com.byazt.kj.hp hpVar = (com.byazt.kj.hp) Class.forName(className).getAnnotation(com.byazt.kj.hp.class);
                            int[] iArrHp = hpVar != null ? hpVar.hp() : null;
                            if (iArrHp != null) {
                                StringBuilder sb = new StringBuilder();
                                char[] charArray = strArr[strArr.length - 1].toCharArray();
                                for (int i2 = 0; i2 < iArrHp.length; i2++) {
                                    int i3 = iArrHp[i2];
                                    if (i3 >= 0 && i3 < strArr.length) {
                                        sb.append(hp(charArray, strArr[i3]));
                                        if (i2 != iArrHp.length - 1) {
                                            sb.append(i.f2495E);
                                        }
                                    }
                                }
                                declaredField.set(stackTraceElement, sb.toString());
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            k.hp().hp(PointCategory.REPORT, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(Throwable th, Thread thread) {
        StackTraceElement[] stackTrace;
        String strHp;
        if (s.u().nu()) {
            return false;
        }
        if (th != null) {
            stackTrace = th.getStackTrace();
        } else {
            stackTrace = thread != null ? thread.getStackTrace() : null;
        }
        if (d.f21856j >= 7400) {
            SparseArray<Object> sparseArray = new SparseArray<>();
            sparseArray.put(-99999987, 16);
            Class cls = (Class) s.u().y().apply(sparseArray);
            if (cls != null) {
                hp = hp(cls);
            }
            strHp = hp(hp.class);
            hp(stackTrace);
        } else {
            strHp = null;
        }
        String string = Arrays.toString(stackTrace);
        boolean zContains = string.contains("com.byazt.qw") || string.contains("com.byazt.vy") || string.contains("com.bykv.vk") || string.contains("com.byted.csj.ext_impl") || string.contains("com.bytedance.adsdk") || string.contains("com.bytedance.msdk") || string.contains("com.bytedance.sdk.gromore") || string.contains("com.bytedance.sdk.openadsdk.mediation") || string.contains("bykvm") || string.contains("com.byakv") || string.contains("com.byazt");
        if (!zContains && !TextUtils.isEmpty(hp)) {
            zContains = string.contains(hp);
        }
        if (!zContains && !TextUtils.isEmpty(strHp)) {
            zContains = string.contains(strHp);
        }
        if (!zContains) {
            return false;
        }
        Map<String, String> mapL = com.byazt.jz.j.hp().l();
        if (mapL != null) {
            if (string.contains("com.byazt.qk")) {
                mapL.put("express", "true");
            }
            if (string.contains(com.byazt.yx.hp.class.getPackage().getName()) || string.contains("com.bytedance.sdk.openadsdk.live") || string.contains("com.bykv.vk.openvk.live")) {
                mapL.put("live_sdk", "true");
                mapL.put("live_sdk_version", jx());
            }
            if (!string.contains("com.bytedance.msdk") && !string.contains("com.bytedance.sdk.gromore") && !string.contains("com.bytedance.sdk.openadsdk.mediation") && !string.contains("bykvm")) {
                mapL.put("mediation", "false");
            } else {
                mapL.put("mediation", "true");
            }
            String strW = d.jx ? w() : null;
            if (!TextUtils.isEmpty(strW)) {
                mapL.put("second_plugin_version", strW);
            }
            eb.hp(com.byazt.jz.j.hp().l());
        }
        return true;
    }

    public static boolean hp() {
        int iIntValue;
        try {
            String strUx = sz.l().ux();
            if (!TextUtils.isEmpty(strUx) && strUx.contains(";")) {
                String[] strArrSplit = strUx.split(";");
                if (strArrSplit.length != 2) {
                    return true;
                }
                String str = strArrSplit[0];
                String str2 = strArrSplit[1];
                Long lValueOf = -1L;
                try {
                    lValueOf = Long.valueOf(Long.valueOf(str).longValue() * 60000);
                    iIntValue = Integer.valueOf(str2).intValue();
                } catch (Exception e2) {
                    e2.getMessage();
                    iIntValue = -1;
                }
                if (lValueOf.longValue() >= 0 && iIntValue >= 0 && iIntValue <= 60) {
                    if (lValueOf.longValue() == 0 || iIntValue == 0 || lValueOf.longValue() / iIntValue < 5000) {
                        return false;
                    }
                    String strL = l();
                    StringBuilder sb = new StringBuilder();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (TextUtils.isEmpty(strL)) {
                        sb.append(jCurrentTimeMillis);
                        hp(sb.toString());
                        return true;
                    }
                    String[] strArrSplit2 = strL.split(";");
                    int length = strArrSplit2.length;
                    if (length >= iIntValue && length != 0) {
                        boolean z2 = jCurrentTimeMillis - Long.valueOf(strArrSplit2[0]).longValue() > lValueOf.longValue();
                        int i2 = length - iIntValue;
                        for (int i3 = i2; i3 < length; i3++) {
                            String str3 = strArrSplit2[i3];
                            if (i3 != i2 && !TextUtils.isEmpty(str3)) {
                                sb.append(str3);
                                sb.append(";");
                            }
                        }
                        sb.append(jCurrentTimeMillis);
                        hp(sb.toString());
                        return z2;
                    }
                    for (String str4 : strArrSplit2) {
                        sb.append(str4);
                        sb.append(";");
                    }
                    sb.append(jCurrentTimeMillis);
                    hp(sb.toString());
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return true;
    }

    public static String l() {
        return com.byazt.lca.j.hp().l("sp_apm_record", "");
    }

    private static String l(String str) {
        Function<SparseArray<Object>, Object> functionY;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            functionY = s.u().y();
        } catch (Throwable unused) {
        }
        if (functionY == null) {
            return null;
        }
        Object objApply = functionY.apply(com.byazt.wi.j.hp().hp(8).hp(String.class).hp(0, str).l());
        if (objApply instanceof String) {
            return (String) objApply;
        }
        return null;
    }

    public static void hp(String str) {
        com.byazt.lca.j.hp().hp("sp_apm_record", str);
    }

    private static String hp(Class cls) {
        if (cls == null) {
            return null;
        }
        String name = cls.getPackage().getName();
        if (name.startsWith("com.bytedance.sdk")) {
            return name;
        }
        String[] strArrSplit = name.split("\\.");
        if (strArrSplit.length <= 3) {
            return name;
        }
        return strArrSplit[0] + i.f2495E + strArrSplit[1];
    }

    private static String hp(char[] cArr, String str) {
        if (str == null) {
            return null;
        }
        if (cArr.length == 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        int length = cArr.length;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            charArray[i2] = (char) (charArray[i2] ^ cArr[i2 % length]);
        }
        return new String(charArray);
    }
}
