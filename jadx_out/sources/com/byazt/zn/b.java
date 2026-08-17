package com.byazt.zn;

import android.content.Context;
import android.hardware.usb.UsbAccessory;
import android.hardware.usb.UsbManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import com.byazt.pg.w;
import com.byazt.xci.qh;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.bytedance.sdk.openadsdk.TTFileProvider;
import com.kuaishou.weapon.p0.g;
import com.umeng.analytics.pro.bv;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, 157})
/* loaded from: classes3.dex */
public class b {
    public static int hp = 0;

    /* renamed from: j, reason: collision with root package name */
    public static int f28485j = 300;
    public static int jx = 2;

    /* renamed from: l, reason: collision with root package name */
    public static int f28486l = 1;

    /* renamed from: w, reason: collision with root package name */
    public static volatile w.hp f28487w;

    @com.byazt.kj.hp(hp = {0, 1, 442, 232})
    public static class hp implements w.l {
        @Override // com.byazt.pg.w.l
        public void hp(long j2, boolean z2) {
            com.byazt.lf.k.hp().hp(10001, j2, Boolean.valueOf(z2), (String) null);
        }

        @Override // com.byazt.pg.w.l
        public void hp(String str, JSONObject jSONObject) {
            if (TextUtils.isEmpty(str) || jSONObject == null || jSONObject.length() <= 0) {
                return;
            }
            b.hp(jSONObject.toString(), str);
        }

        @Override // com.byazt.pg.w.l
        public long hp() {
            return jx.jx();
        }
    }

    public static String a() {
        try {
            return l().getSoftChara();
        } catch (Throwable th) {
            return hp(th);
        }
    }

    public static String e() throws JSONException {
        qh qhVarGu = gu();
        com.byazt.xy.hp.hp().hp(qhVarGu);
        if (qhVarGu != null) {
            String string = qhVarGu.toString();
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
        }
        return null;
    }

    public static void eb() throws ClassNotFoundException {
        String[] strArrGs = com.byazt.jz.sz.l().gs();
        if (strArrGs == null || strArrGs.length <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strArrGs) {
            try {
                Class.forName(str);
                arrayList.add(str);
            } catch (ClassNotFoundException unused) {
            }
        }
        if (arrayList.size() > 0) {
            hp(arrayList);
        }
    }

    public static qh gu() {
        try {
            if (!com.byazt.jz.sz.l().uc()) {
                return null;
            }
            qh qhVarHp = com.byazt.wt.hp.hp(com.byazt.jz.sz.getContext()).hp();
            if (qhVarHp != null) {
                return qhVarHp;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void hp() throws JSONException, ClassNotFoundException {
        e();
        a();
        if (com.byazt.jz.sz.l().df()) {
            eb();
            w();
            q();
            jl();
        }
    }

    public static JSONArray j() throws JSONException {
        UsbAccessory[] accessoryList = ((UsbManager) com.byazt.jz.sz.getContext().getSystemService("usb")).getAccessoryList();
        JSONArray jSONArray = new JSONArray();
        if (accessoryList != null) {
            for (UsbAccessory usbAccessory : accessoryList) {
                if (usbAccessory != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("manufacturer", usbAccessory.getManufacturer());
                        jSONObject.put("model", usbAccessory.getModel());
                        jSONObject.put("desc", usbAccessory.getDescription());
                        jSONObject.put(ContentProviderManager.PROVIDER_URI, usbAccessory.getUri());
                        jSONArray.put(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
            }
        }
        return jSONArray;
    }

    public static void jl() {
        Context context = com.byazt.jz.sz.getContext();
        if (context != null) {
            JSONObject jSONObject = new JSONObject();
            com.byazt.fc.jx jxVarHp = com.byazt.fc.jx.hp(context);
            try {
                jSONObject.put("access_perm", com.byazt.sii.l.hp(context, g.f31160b));
                jSONObject.put("change_perm", com.byazt.sii.l.hp(context, "android.permission.CHANGE_NETWORK_STATE"));
                jSONObject.put("sim", ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getSimOperatorCode());
                jSONObject.put("network", jxVarHp.hp());
                hp(jSONObject.toString(), "uaid_info");
            } catch (Throwable unused) {
            }
        }
    }

    public static void jx() {
        l();
    }

    public static com.byazt.pg.w l() {
        return (com.byazt.pg.w) com.byazt.ym.j.getService("armor_service");
    }

    public static void q() {
        com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.zn.b.3
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                com.byazt.pg.w wVarL = b.l();
                jSONObject.put("board", Build.BOARD + "#" + wVarL.pglArmorCallApi2getProperty("ro.product.board", "unknown"));
                jSONObject.put("model", Build.MODEL + "#" + wVarL.pglArmorCallApi2getProperty("ro.product.model", "unknown"));
                jSONObject.put(bv.f48924y, Build.VERSION.RELEASE + "#" + wVarL.pglArmorCallApi2getProperty("ro.build.version.release", "unknown"));
                jSONObject.put("vendor", Build.MANUFACTURER + "#" + wVarL.pglArmorCallApi2getProperty("ro.product.manufacturer", "unknown"));
                jSONObject.put("rom_version", Build.DISPLAY + "#" + wVarL.pglArmorCallApi2getProperty("ro.build.display.id", "unknown"));
                jSONObject.put("compiling_time", Build.TIME + "#" + (Long.parseLong(wVarL.pglArmorCallApi2getProperty("ro.build.date.utc", "-1")) * 1000));
                return com.byazt.jlb.l.l().hp("pangle_build_pick").l(jSONObject.toString());
            }
        }, "pangle_build_pick");
    }

    public static boolean s() {
        String strEc = com.byazt.jz.sz.l().ec();
        try {
            com.byazt.pg.w wVarL = l();
            if (wVarL != null) {
                return wVarL.detectHostLocalIp(strEc);
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void w() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArrayJ = j();
            if (jSONArrayJ.length() > 0) {
                jSONObject.put("usb", jSONArrayJ);
            }
            JSONObject jSONObject2 = new JSONObject();
            int i2 = TTFileProvider.f28897c;
            ClassLoader classLoader = TTFileProvider.class.getClassLoader();
            if (classLoader != null) {
                jSONObject2.put("loader", classLoader.getClass().getName());
                Class<? super Object> superclass = classLoader.getClass().getSuperclass();
                while (true) {
                    if (superclass == null || superclass.getName().equals("java.lang.Object")) {
                        break;
                    }
                    if (superclass.getName().equals("dalvik.system.BaseDexClassLoader")) {
                        hp(classLoader, superclass, jSONObject2);
                        break;
                    }
                    superclass = superclass.getSuperclass();
                }
            }
            jSONObject.put("control", jSONObject2);
        } catch (Throwable unused) {
        }
        if (jSONObject.length() > 0) {
            hp(jSONObject.toString(), "pangle_check");
        }
    }

    public static String zy() {
        com.byazt.pg.w wVarL = l();
        return wVarL != null ? wVarL.getArchEnv() : "";
    }

    public static void l(JSONObject jSONObject) {
        com.byazt.sf.jx jxVar;
        if (jSONObject == null || com.byazt.jz.sz.hp(10003) == null || (jxVar = (com.byazt.sf.jx) com.byazt.ym.j.getService("pitaya")) == null || !jxVar.isPitayaInitSuccess()) {
            return;
        }
        jxVar.isPitayaEnvAvailable();
        jxVar.runTask("antispam_handhold", jSONObject, new com.byazt.sf.s() { // from class: com.byazt.zn.b.5
            @Override // com.byazt.sf.s
            public PluginValueSet hp(int i2, com.byazt.sf.q qVar) throws JSONException {
                com.byazt.wi.l lVarJx = qVar.jx();
                if (lVarJx == null) {
                    return null;
                }
                PluginValueSet pluginValueSetJ = lVarJx.j();
                if (!lVarJx.hp() || pluginValueSetJ == null) {
                    return null;
                }
                JSONObject jSONObjectHp = com.byazt.sf.e.hp(pluginValueSetJ, 2);
                if (jSONObjectHp != null) {
                    try {
                        JSONArray jSONArray = jSONObjectHp.getJSONArray("probability");
                        com.byazt.pg.w wVarL = b.l();
                        if (jSONArray.length() == 1 && wVarL != null) {
                            wVarL.softDecTool2ua(jSONArray.optDouble(0), System.currentTimeMillis());
                        }
                    } catch (JSONException unused) {
                    }
                }
                return pluginValueSetJ;
            }
        });
    }

    private static void hp(ClassLoader classLoader, Class<?> cls, JSONObject jSONObject) throws Exception {
        Field declaredField = cls.getDeclaredField("pathList");
        declaredField.setAccessible(true);
        Object obj = declaredField.get(classLoader);
        if (obj != null) {
            Field declaredField2 = obj.getClass().getDeclaredField("dexElements");
            declaredField2.setAccessible(true);
            Object[] objArr = (Object[]) declaredField2.get(obj);
            if (objArr != null) {
                jSONObject.put("size", objArr.length);
                StringBuilder sb = new StringBuilder();
                for (Object obj2 : objArr) {
                    Field declaredField3 = obj2.getClass().getDeclaredField("dexFile");
                    declaredField3.setAccessible(true);
                    Object obj3 = declaredField3.get(obj2);
                    if (obj3 != null && !obj3.toString().startsWith("/data/app")) {
                        sb.append(obj3);
                        sb.append(";");
                    }
                }
                jSONObject.put("dexPathList", sb);
            }
        }
    }

    public static void hp(final String str, final String str2) {
        com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.zn.b.1
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() {
                return com.byazt.jlb.l.l().hp(str2).l(str);
            }
        }, str2);
    }

    public static void hp(MotionEvent motionEvent) {
        try {
            l().pglArmorCallApi2c(motionEvent);
        } catch (Throwable unused) {
        }
    }

    public static String hp(String str, long j2, int i2, boolean z2) {
        try {
            return l().pglArmorCallApi2ccc(str, j2, i2, z2);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void hp(long j2, int i2) {
        try {
            l().pglArmorCallApi2src(j2, i2);
        } catch (Throwable unused) {
        }
    }

    public static int hp(String str) {
        int i2 = hp;
        if (str != null && !str.isEmpty()) {
            int iIndexOf = str.indexOf("_");
            if (iIndexOf <= 0) {
                return jx;
            }
            String strSubstring = str.substring(0, iIndexOf);
            String strSubstring2 = str.substring(iIndexOf + 1);
            int iIndexOf2 = strSubstring2.indexOf("_");
            if (iIndexOf2 <= 0) {
                return jx;
            }
            String strSubstring3 = strSubstring2.substring(0, iIndexOf2);
            String strSubstring4 = strSubstring2.substring(iIndexOf2 + 1);
            long jLongValue = Long.valueOf(strSubstring).longValue() - Long.valueOf(strSubstring3).longValue();
            try {
                com.byazt.pg.w wVarL = l();
                if (wVarL != null) {
                    if (!wVarL.signVerifyMD5withRSA(strSubstring3 + "_" + v.hp(), strSubstring4)) {
                        return jx;
                    }
                }
                return Math.abs(jLongValue) > ((long) f28485j) ? f28486l : i2;
            } catch (Throwable unused) {
                return hp;
            }
        }
        return jx;
    }

    public static String hp(Throwable th) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("stts", 3);
            jSONObject.put("exception:", th.toString());
            jSONObject.put("stacktrace:", Arrays.toString(th.getStackTrace()));
            jSONObject.put("cause:", String.valueOf(th.getCause()));
            return Base64.encodeToString(jSONObject.toString().getBytes("UTF-8"), 0);
        } catch (Throwable unused) {
            return "eyJzdHRzIjozfQ==";
        }
    }

    private static void hp(final List<String> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.zn.b.2
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("clz", list.toString());
                return com.byazt.jlb.l.l().hp("pangle_clz_found").l(jSONObject.toString());
            }
        }, "pangle_clz_found");
    }

    public static void hp(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.zn.b.4
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                return com.byazt.jlb.l.l().hp("har_automatic").l(jSONObject.toString());
            }
        }, "har_automatic");
    }

    public static void hp(int i2, final int i3) {
        final com.byazt.pg.w wVarL = l();
        if (wVarL == null || wVarL.getArmorContext() == null || !com.byazt.jz.s.u().j() || !wVarL.enableSetHARSensorCallBack(i2)) {
            return;
        }
        if (f28487w == null) {
            f28487w = new w.hp() { // from class: com.byazt.zn.b.6
                @Override // com.byazt.pg.w.hp
                public void reportSensorData(JSONObject jSONObject) throws JSONException {
                    if (jSONObject != null) {
                        try {
                            jSONObject.put(com.umeng.ccg.a.f49756j, i3);
                        } catch (JSONException unused) {
                        }
                        b.l(jSONObject);
                        b.hp(jSONObject);
                    }
                }
            };
            wVarL.setHARSensorCallBack(f28487w);
        }
        com.byazt.uid.w.l(new com.byazt.uid.eb("har") { // from class: com.byazt.zn.b.7
            @Override // java.lang.Runnable
            public void run() {
                wVarL.registerHarSensors();
            }
        });
    }
}
