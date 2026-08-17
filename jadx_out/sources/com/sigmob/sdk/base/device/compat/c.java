package com.sigmob.sdk.base.device.compat;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.anythink.core.common.d.i;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class c {

    /* renamed from: A, reason: collision with root package name */
    static final String[] f36187A;

    /* renamed from: B, reason: collision with root package name */
    static final int f36188B = -294058204;

    /* renamed from: C, reason: collision with root package name */
    static final String f36189C = "FuntouchOS";

    /* renamed from: D, reason: collision with root package name */
    static final String f36190D = "ro.vivo.os.build.display.id";

    /* renamed from: E, reason: collision with root package name */
    static final int f36191E = -1801284559;

    /* renamed from: F, reason: collision with root package name */
    static final String f36192F = "MagicOS";

    /* renamed from: G, reason: collision with root package name */
    static final String[] f36193G;

    /* renamed from: H, reason: collision with root package name */
    static final int f36194H = -182666708;

    /* renamed from: I, reason: collision with root package name */
    static final String f36195I = "HarmonyOS NEXT AndroidCompatible";

    /* renamed from: J, reason: collision with root package name */
    static final String f36196J = "ro.sys.anco.product.software.version";

    /* renamed from: K, reason: collision with root package name */
    static final String[] f36197K;

    /* renamed from: L, reason: collision with root package name */
    static final String[] f36198L;

    /* renamed from: M, reason: collision with root package name */
    static final int f36199M = 1583864138;

    /* renamed from: N, reason: collision with root package name */
    static final String f36200N = "HarmonyOS";

    /* renamed from: O, reason: collision with root package name */
    static final String[] f36201O;

    /* renamed from: P, reason: collision with root package name */
    static final String[] f36202P;

    /* renamed from: Q, reason: collision with root package name */
    static final int f36203Q = 2132284;

    /* renamed from: R, reason: collision with root package name */
    static final String f36204R = "EMUI";

    /* renamed from: S, reason: collision with root package name */
    static final String f36205S = "ro.build.version.emui";

    /* renamed from: T, reason: collision with root package name */
    static final int f36206T = 76334938;

    /* renamed from: U, reason: collision with root package name */
    static final String f36207U = "OneUI";

    /* renamed from: V, reason: collision with root package name */
    static final String f36208V = "ro.build.version.oneui";

    /* renamed from: W, reason: collision with root package name */
    static final int f36209W = -1363277916;

    /* renamed from: X, reason: collision with root package name */
    static final String f36210X = "OxygenOS";

    /* renamed from: Y, reason: collision with root package name */
    static final String f36211Y = "ro.oxygen.version";

    /* renamed from: Z, reason: collision with root package name */
    static final int f36212Z = 2195534;

    /* renamed from: a, reason: collision with root package name */
    static final String f36213a = "\\d+(?:\\.\\d+)+";
    static final String aA = "ZUXOS";
    static final String[] aB;
    static final String aC = "ro.config.lgsi.os.name";
    static final int aD = 89198;
    static final String aE = "ZUI";
    static final String aF = "ro.com.zui.version";
    static final String[] aG;
    static final int aH = -2010470489;
    static final String aI = "nubiaUI";
    static final String aJ = "ro.build.nubia.rom.code";
    static final String aK = "ro.build.nubia.rom.name";
    static final int aL = 12510861;
    static final String aM = "ObricUI";
    static final String[] aN;
    static final String aO = "init.svc.bytecellular";
    static final int aP = 78153150;
    static final String aQ = "ROGUI";
    static final String aR = "ro.build.version.incremental";
    static final String aS = "ro.asus.rog";
    static final int aT = 48757121;
    static final String aU = "360UI";
    static final String aV = "ro.build.uiversion";
    private static int aW = 0;
    private static String aX = null;
    private static String aY = null;
    static final String aa = "H2OS";
    static final String ab = "ro.rom.version";
    static final int ac = 67983659;
    static final String ad = "Flyme";
    static final String ae = "ro.build.display.id";
    static final String[] af;
    static final String ag = "ro.build.MiFavor_version";
    static final String ah = "ro.build.display.id";
    static final int ai = -417455456;
    static final String aj = "RedMagicOS";
    static final int ak = -1668450325;
    static final String al = "NebulaAIOS";
    static final int am = 2412720;
    static final String an = "MyOS";
    static final int ao = -203064298;
    static final String ap = "MifavorUI";
    static final String aq = "ro.build.MiFavor_version";
    static final int ar = 1805724132;
    static final String as = "SmartisanOS";
    static final String at = "ro.smartisan.version";
    static final String[] au;
    static final int av = 69017;
    static final String aw = "EUI";
    static final String ax = "ro.letv.release.version";
    static final String[] ay;
    static final int az = 85736225;

    /* renamed from: b, reason: collision with root package name */
    static final String f36214b = "\\d+";

    /* renamed from: c, reason: collision with root package name */
    static final String f36215c = "ro.build.version.incremental";

    /* renamed from: d, reason: collision with root package name */
    static final String f36216d = "ro.build.display.id";

    /* renamed from: e, reason: collision with root package name */
    static final String[] f36217e;

    /* renamed from: f, reason: collision with root package name */
    static final int f36218f = -1248529104;

    /* renamed from: g, reason: collision with root package name */
    static final String f36219g = "HyperOS";

    /* renamed from: h, reason: collision with root package name */
    static final String f36220h = "ro.mi.os.version.incremental";

    /* renamed from: i, reason: collision with root package name */
    static final String[] f36221i;

    /* renamed from: j, reason: collision with root package name */
    static final String[] f36222j;

    /* renamed from: k, reason: collision with root package name */
    static final int f36223k = 2366768;

    /* renamed from: l, reason: collision with root package name */
    static final String f36224l = "MIUI";

    /* renamed from: m, reason: collision with root package name */
    static final String f36225m = "ro.build.version.incremental";

    /* renamed from: n, reason: collision with root package name */
    static final String[] f36226n;

    /* renamed from: o, reason: collision with root package name */
    static final String[] f36227o;

    /* renamed from: p, reason: collision with root package name */
    static final int f36228p = -859411254;

    /* renamed from: q, reason: collision with root package name */
    static final String f36229q = "realmeUI";

    /* renamed from: r, reason: collision with root package name */
    static final String f36230r = "ro.build.version.realmeui";

    /* renamed from: s, reason: collision with root package name */
    static final int f36231s = -1680767897;

    /* renamed from: t, reason: collision with root package name */
    static final String f36232t = "ColorOS";

    /* renamed from: u, reason: collision with root package name */
    static final String f36233u = "ro.build.version.oplusrom";

    /* renamed from: v, reason: collision with root package name */
    static final String[] f36234v;

    /* renamed from: w, reason: collision with root package name */
    static final String f36235w = "ro.build.version.opporom";

    /* renamed from: x, reason: collision with root package name */
    static final String f36236x = "ro.vivo.os.build.display.id";

    /* renamed from: y, reason: collision with root package name */
    static final int f36237y = 1443687338;

    /* renamed from: z, reason: collision with root package name */
    static final String f36238z = "OriginOS";

    /* JADX WARN: Removed duplicated region for block: B:111:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x047f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:181:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02f0  */
    static {
        /*
            Method dump skipped, instructions count: 1215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.device.compat.c.<clinit>():void");
    }

    private c() {
    }

    public static boolean A() {
        return aW == av;
    }

    public static boolean B() {
        return aW == az;
    }

    public static boolean C() {
        return aW == aD;
    }

    public static boolean D() {
        return aW == aH;
    }

    public static boolean E() {
        return aW == aL;
    }

    public static boolean F() {
        return aW == aP;
    }

    public static boolean G() {
        return aW == aT;
    }

    public static String H() {
        String str = aX;
        return str != null ? str : "";
    }

    public static String I() {
        String str = aY;
        return str != null ? str : "";
    }

    public static int J() {
        return d(I());
    }

    @SuppressLint({"PrivateApi"})
    private static boolean K() throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return Boolean.parseBoolean(String.valueOf(cls.getMethod("getBoolean", String.class, Boolean.TYPE).invoke(cls, "persist.sys.miui_optimization", Boolean.valueOf(!"1".equals(String.valueOf(cls.getMethod("get", String.class, String.class).invoke(cls, "ro.miui.cts", "")))))));
        } catch (Exception unused) {
            return true;
        }
    }

    private static String a(int i2) {
        int i3 = i2 / 10000;
        int i4 = i2 % 10000;
        int i5 = i2 % 100;
        if (i5 <= 0) {
            return i3 + i.f2495E + (i4 / 100);
        }
        return i3 + i.f2495E + (i4 / 100) + i.f2495E + i5;
    }

    private static String b(String str) {
        String strGroup;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        Matcher matcher = Pattern.compile("(\\d+(?:\\.\\d+)+)").matcher(str);
        return (!matcher.find() || matcher.groupCount() <= 0 || (strGroup = matcher.group(1)) == null) ? "" : strGroup;
    }

    private static int c(String str) {
        String strGroup;
        Matcher matcher = Pattern.compile("(\\d+)").matcher(str);
        if (!matcher.find() || matcher.groupCount() <= 0 || (strGroup = matcher.group(1)) == null) {
            return 0;
        }
        try {
            return Integer.parseInt(strGroup);
        } catch (Exception unused) {
            return 0;
        }
    }

    private static int d(String str) {
        if (str != null && !str.isEmpty()) {
            String[] strArrSplit = str.split("\\.");
            if (strArrSplit.length == 0) {
                return -1;
            }
            try {
                return Integer.parseInt(strArrSplit[0]);
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public static boolean e() {
        return aW == f36223k;
    }

    public static boolean f() {
        if (!e()) {
            return false;
        }
        for (String str : d.a(f36227o)) {
            if (str.equalsIgnoreCase("cn")) {
                return true;
            }
        }
        return false;
    }

    public static boolean g() {
        if (!e()) {
            return false;
        }
        for (String str : d.a(f36227o)) {
            if (str.equalsIgnoreCase("global")) {
                return true;
            }
        }
        return false;
    }

    public static boolean h() {
        return K();
    }

    public static boolean i() {
        return aW == f36228p;
    }

    public static boolean j() {
        return aW == f36231s;
    }

    public static boolean k() {
        return aW == f36237y;
    }

    public static boolean l() {
        return aW == f36188B;
    }

    public static boolean m() {
        return aW == f36191E;
    }

    public static boolean n() {
        return aW == f36199M;
    }

    @Deprecated
    public static boolean o() {
        return p();
    }

    public static boolean p() {
        return aW == f36194H;
    }

    public static boolean q() {
        return aW == f36203Q;
    }

    public static boolean r() {
        return aW == f36206T;
    }

    public static boolean s() {
        return aW == f36209W;
    }

    public static boolean t() {
        return aW == f36212Z;
    }

    public static boolean u() {
        return aW == ac;
    }

    public static boolean v() {
        return aW == ai;
    }

    public static boolean w() {
        return aW == ak;
    }

    public static boolean x() {
        return aW == am;
    }

    public static boolean y() {
        return aW == ao;
    }

    public static boolean z() {
        return aW == ar;
    }

    private static String a(String str) {
        String strB = b(str);
        if (!TextUtils.isEmpty(strB)) {
            return strB;
        }
        int iC = c(str);
        if (iC <= 0) {
            return "";
        }
        return iC + ".0";
    }

    public static boolean b() {
        if (!a()) {
            return false;
        }
        for (String str : d.a(f36222j)) {
            if (str.equalsIgnoreCase("cn")) {
                return true;
            }
        }
        return false;
    }

    public static boolean c() {
        if (!a()) {
            return false;
        }
        for (String str : d.a(f36222j)) {
            if (str.equalsIgnoreCase("global")) {
                return true;
            }
        }
        return false;
    }

    public static boolean d() {
        return K();
    }

    private static String a(String... strArr) {
        for (String str : strArr) {
            String strB = b(d.a(str));
            if (!TextUtils.isEmpty(strB)) {
                return strB;
            }
        }
        for (String str2 : strArr) {
            int iC = c(d.a(str2));
            if (iC > 0) {
                return iC + ".0";
            }
        }
        return "";
    }

    public static boolean a() {
        return aW == f36218f;
    }
}
