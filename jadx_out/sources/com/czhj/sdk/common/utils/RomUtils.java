package com.czhj.sdk.common.utils;

import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;

/* loaded from: classes3.dex */
public final class RomUtils {

    /* renamed from: A, reason: collision with root package name */
    private static final String f29512A = "ro.build.uiversion";

    /* renamed from: B, reason: collision with root package name */
    private static final String f29513B = "ro.build.MiFavor_version";

    /* renamed from: C, reason: collision with root package name */
    private static final String f29514C = "ro.rom.version";

    /* renamed from: D, reason: collision with root package name */
    private static final String f29515D = "ro.build.rom.id";

    /* renamed from: E, reason: collision with root package name */
    private static final String f29516E = "hw_sc.build.platform.version";

    /* renamed from: G, reason: collision with root package name */
    private static final String f29518G = "unknown";

    /* renamed from: v, reason: collision with root package name */
    private static final String f29541v = "ro.build.version.emui";

    /* renamed from: w, reason: collision with root package name */
    private static final String f29542w = "ro.vivo.os.build.display.id";

    /* renamed from: x, reason: collision with root package name */
    private static final String f29543x = "ro.build.version.incremental";

    /* renamed from: z, reason: collision with root package name */
    private static final String f29545z = "ro.letv.release.version";

    /* renamed from: a, reason: collision with root package name */
    private static final String[] f29520a = {"huawei"};

    /* renamed from: b, reason: collision with root package name */
    private static final String[] f29521b = {"vivo"};

    /* renamed from: c, reason: collision with root package name */
    private static final String[] f29522c = {MediationConstant.ADN_XIAOMI};

    /* renamed from: d, reason: collision with root package name */
    private static final String[] f29523d = {"oppo"};

    /* renamed from: e, reason: collision with root package name */
    private static final String[] f29524e = {"leeco", "letv"};

    /* renamed from: f, reason: collision with root package name */
    private static final String[] f29525f = {"360", "qiku"};

    /* renamed from: g, reason: collision with root package name */
    private static final String[] f29526g = {"zte"};

    /* renamed from: h, reason: collision with root package name */
    private static final String[] f29527h = {"oneplus"};

    /* renamed from: i, reason: collision with root package name */
    private static final String[] f29528i = {"nubia"};

    /* renamed from: j, reason: collision with root package name */
    private static final String[] f29529j = {"coolpad", "yulong"};

    /* renamed from: k, reason: collision with root package name */
    private static final String[] f29530k = {"lg", "lge"};

    /* renamed from: l, reason: collision with root package name */
    private static final String[] f29531l = {"google"};

    /* renamed from: m, reason: collision with root package name */
    private static final String[] f29532m = {"samsung"};

    /* renamed from: n, reason: collision with root package name */
    private static final String[] f29533n = {"meizu"};

    /* renamed from: o, reason: collision with root package name */
    private static final String[] f29534o = {"lenovo"};

    /* renamed from: p, reason: collision with root package name */
    private static final String[] f29535p = {"SmartisanOS", "deltainno"};

    /* renamed from: q, reason: collision with root package name */
    private static final String[] f29536q = {"Sense", "htc"};

    /* renamed from: r, reason: collision with root package name */
    private static final String[] f29537r = {"sony"};

    /* renamed from: s, reason: collision with root package name */
    private static final String[] f29538s = {"amigo", "gionee"};

    /* renamed from: t, reason: collision with root package name */
    private static final String[] f29539t = {"motorola"};

    /* renamed from: u, reason: collision with root package name */
    private static final String[] f29540u = {"honor"};

    /* renamed from: y, reason: collision with root package name */
    private static final String[] f29544y = {"ro.build.version.opporom", "ro.build.version.oplusrom.display"};

    /* renamed from: F, reason: collision with root package name */
    private static final String[] f29517F = {"msc.config.magic.version", "ro.build.version.magic"};

    /* renamed from: H, reason: collision with root package name */
    private static RomInfo f29519H = null;

    public static class RomInfo {

        /* renamed from: a, reason: collision with root package name */
        private String f29546a;

        /* renamed from: b, reason: collision with root package name */
        private String f29547b;

        /* renamed from: c, reason: collision with root package name */
        private String f29548c;

        public String getName() {
            return this.f29546a;
        }

        public String getOsMarket() {
            return this.f29548c;
        }

        public String getVersion() {
            return this.f29547b;
        }

        public String toString() {
            return "RomInfo{name=" + this.f29546a + ", version=" + this.f29547b + ", osMarket=" + this.f29548c + "}";
        }
    }

    private RomUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    private static String a(String str) {
        String strB = !TextUtils.isEmpty(str) ? b(str) : "";
        if (TextUtils.isEmpty(strB) || strB.equals("unknown")) {
            try {
                String str2 = Build.DISPLAY;
                if (!TextUtils.isEmpty(str2)) {
                    strB = str2.toLowerCase();
                }
            } catch (Throwable unused) {
            }
        }
        return TextUtils.isEmpty(strB) ? "unknown" : strB;
    }

    private static String b(String str) throws IOException {
        String strC = c(str);
        if (!TextUtils.isEmpty(strC)) {
            return strC;
        }
        String strD = d(str);
        return (TextUtils.isEmpty(strD) && Build.VERSION.SDK_INT < 28) ? e(str) : strD;
    }

    private static String c() {
        try {
            String str = Build.MANUFACTURER;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    private static String d() {
        try {
            String str = Build.BRAND;
            return !TextUtils.isEmpty(str) ? str.toLowerCase() : "unknown";
        } catch (Throwable unused) {
            return "unknown";
        }
    }

    private static String e(String str) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, "");
        } catch (Exception unused) {
            return "";
        }
    }

    public static RomInfo getRomInfo() {
        RomInfo romInfo;
        RomInfo romInfo2;
        String str;
        RomInfo romInfo3;
        String str2;
        RomInfo romInfo4;
        String str3;
        RomInfo romInfo5;
        String str4;
        RomInfo romInfo6;
        String strA;
        RomInfo romInfo7 = f29519H;
        if (romInfo7 != null) {
            return romInfo7;
        }
        f29519H = new RomInfo();
        String strD = d();
        String strC = c();
        if (isHarmonyOs()) {
            f29519H.f29546a = "harmony";
            romInfo6 = f29519H;
            strA = a(f29516E);
        } else {
            if (!a(strD, strC, f29520a)) {
                int i2 = 0;
                if (a(strD, strC, f29540u)) {
                    f29519H.f29546a = "MagicOS";
                    String[] strArr = f29517F;
                    int length = strArr.length;
                    while (i2 < length) {
                        String str5 = strArr[i2];
                        String strA2 = a(str5);
                        if (!TextUtils.isEmpty(str5)) {
                            f29519H.f29547b = strA2;
                        }
                        i2++;
                    }
                    romInfo4 = f29519H;
                    str3 = "com.hihonor.appmarket";
                } else if (a(strD, strC, f29521b)) {
                    f29519H.f29546a = "OriginOS";
                    f29519H.f29547b = a(f29542w);
                    romInfo4 = f29519H;
                    str3 = "com.bbk.appstore";
                } else {
                    if (!a(strD, strC, f29522c)) {
                        if (a(strD, strC, f29523d)) {
                            f29519H.f29546a = "ColorOS";
                            String[] strArr2 = f29544y;
                            int length2 = strArr2.length;
                            while (i2 < length2) {
                                String str6 = strArr2[i2];
                                String strA3 = a(str6);
                                if (!TextUtils.isEmpty(str6)) {
                                    f29519H.f29547b = strA3;
                                }
                                i2++;
                            }
                            if (Build.VERSION.SDK_INT < 29) {
                                romInfo5 = f29519H;
                                str4 = "com.oppo.market";
                            } else {
                                romInfo5 = f29519H;
                                str4 = "com.heytap.market";
                            }
                            romInfo5.f29548c = str4;
                            return f29519H;
                        }
                        if (a(strD, strC, f29524e)) {
                            f29519H.f29546a = "EUI";
                            romInfo3 = f29519H;
                            str2 = f29545z;
                        } else {
                            String[] strArr3 = f29525f;
                            if (a(strD, strC, strArr3)) {
                                f29519H.f29546a = strArr3[0];
                                romInfo3 = f29519H;
                                str2 = f29512A;
                            } else {
                                String[] strArr4 = f29526g;
                                if (a(strD, strC, strArr4)) {
                                    f29519H.f29546a = strArr4[0];
                                    romInfo3 = f29519H;
                                    str2 = f29513B;
                                } else {
                                    String[] strArr5 = f29527h;
                                    if (a(strD, strC, strArr5)) {
                                        f29519H.f29546a = strArr5[0];
                                        romInfo3 = f29519H;
                                        str2 = f29514C;
                                    } else if (a(strD, strC, f29528i)) {
                                        f29519H.f29546a = "NubiaUI";
                                        f29519H.f29547b = a(f29515D);
                                        romInfo4 = f29519H;
                                        str3 = "cn.nubia.neostore";
                                    } else {
                                        String[] strArr6 = f29529j;
                                        if (a(strD, strC, strArr6)) {
                                            romInfo = f29519H;
                                            strC = strArr6[0];
                                        } else {
                                            String[] strArr7 = f29530k;
                                            if (a(strD, strC, strArr7)) {
                                                romInfo = f29519H;
                                                strC = strArr7[0];
                                            } else {
                                                String[] strArr8 = f29531l;
                                                if (a(strD, strC, strArr8)) {
                                                    romInfo = f29519H;
                                                    strC = strArr8[0];
                                                } else {
                                                    String[] strArr9 = f29532m;
                                                    if (a(strD, strC, strArr9)) {
                                                        romInfo = f29519H;
                                                        strC = strArr9[0];
                                                    } else {
                                                        if (a(strD, strC, f29533n)) {
                                                            f29519H.f29546a = "Flyme";
                                                            romInfo2 = f29519H;
                                                            str = "com.meizu.mstore";
                                                        } else {
                                                            String[] strArr10 = f29534o;
                                                            if (a(strD, strC, strArr10)) {
                                                                romInfo = f29519H;
                                                                strC = strArr10[0];
                                                            } else {
                                                                String[] strArr11 = f29535p;
                                                                if (a(strD, strC, strArr11)) {
                                                                    f29519H.f29546a = strArr11[0];
                                                                    romInfo2 = f29519H;
                                                                    str = "com.smartisanos.appstore";
                                                                } else {
                                                                    String[] strArr12 = f29536q;
                                                                    if (a(strD, strC, strArr12)) {
                                                                        romInfo = f29519H;
                                                                        strC = strArr12[0];
                                                                    } else {
                                                                        String[] strArr13 = f29537r;
                                                                        if (a(strD, strC, strArr13)) {
                                                                            romInfo = f29519H;
                                                                            strC = strArr13[0];
                                                                        } else {
                                                                            String[] strArr14 = f29538s;
                                                                            if (a(strD, strC, strArr14)) {
                                                                                romInfo = f29519H;
                                                                                strC = strArr14[0];
                                                                            } else {
                                                                                String[] strArr15 = f29539t;
                                                                                if (a(strD, strC, strArr15)) {
                                                                                    romInfo = f29519H;
                                                                                    strC = strArr15[0];
                                                                                } else {
                                                                                    romInfo = f29519H;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        romInfo2.f29548c = str;
                                                        romInfo3 = f29519H;
                                                        str2 = "";
                                                    }
                                                }
                                            }
                                        }
                                        romInfo.f29546a = strC;
                                        romInfo3 = f29519H;
                                        str2 = "";
                                    }
                                }
                            }
                        }
                        romInfo3.f29547b = a(str2);
                        return f29519H;
                    }
                    f29519H.f29546a = "MIUI";
                    f29519H.f29547b = a(f29543x);
                    romInfo4 = f29519H;
                    str3 = "com.xiaomi.market";
                }
                romInfo4.f29548c = str3;
                return f29519H;
            }
            f29519H.f29546a = "EMUI";
            String strA4 = a(f29541v);
            String[] strArrSplit = strA4.split("_");
            if (strArrSplit.length <= 1) {
                f29519H.f29547b = strA4;
                f29519H.f29548c = "com.huawei.appmarket";
                return f29519H;
            }
            romInfo6 = f29519H;
            strA = strArrSplit[1];
        }
        romInfo6.f29547b = strA;
        f29519H.f29548c = "com.huawei.appmarket";
        return f29519H;
    }

    public static boolean isHarmonyOs() {
        if (Build.VERSION.SDK_INT < 29) {
            return false;
        }
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            Object objInvoke = cls.getMethod("getOsBrand", null).invoke(cls, null);
            if (objInvoke == null) {
                return false;
            }
            return "harmony".equalsIgnoreCase(objInvoke.toString());
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean isHuawei() {
        return "EMUI".equals(getRomInfo().f29546a) || isHarmonyOs();
    }

    public static boolean a() {
        return a(d(), c(), f29540u);
    }

    private static boolean b() {
        return !TextUtils.isEmpty(b(f29541v));
    }

    private static String c(String str) {
        BufferedReader bufferedReader;
        String line;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
                try {
                    line = bufferedReader.readLine();
                } catch (Throwable unused) {
                    bufferedReader2 = bufferedReader;
                    if (bufferedReader2 == null) {
                        return "";
                    }
                    bufferedReader2.close();
                    return "";
                }
            } catch (Throwable unused2) {
            }
            if (line != null) {
                try {
                    bufferedReader.close();
                } catch (Throwable unused3) {
                }
                return line;
            }
            bufferedReader.close();
            return "";
        } catch (Throwable unused4) {
            return "";
        }
    }

    private static String d(String str) throws IOException {
        try {
            Properties properties = new Properties();
            properties.load(new FileInputStream(new File(Environment.getRootDirectory(), "build.prop")));
            return properties.getProperty(str, "");
        } catch (Exception unused) {
            return "";
        }
    }

    private static boolean a(String str, String str2, String... strArr) {
        for (String str3 : strArr) {
            if (str.contains(str3) || str2.contains(str3)) {
                return true;
            }
        }
        return false;
    }
}
