package com.byazt.zg;

import android.content.pm.PackageInfo;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.security.SecureRandom;
import java.util.Locale;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 308, 546})
/* loaded from: classes3.dex */
public class nu {
    public static String hp = null;

    /* renamed from: j, reason: collision with root package name */
    public static String f28427j = "ToolUtils";
    public static String jx;

    /* renamed from: l, reason: collision with root package name */
    public static String f28428l;

    public static com.byazt.pg.w a() {
        return (com.byazt.pg.w) com.byazt.ym.j.getService("armor_service");
    }

    public static synchronized String hp() {
        try {
            if (TextUtils.isEmpty(hp) && com.byazt.di.l.getContext() != null) {
                try {
                    hp = com.byazt.di.l.getContext().getPackageName();
                } catch (Throwable th) {
                    com.byazt.aw.l.j(f28427j, "ToolUtils getPackageName throws exception :" + th);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return hp;
    }

    public static String j() {
        String strConcat;
        try {
            strConcat = System.getProperty("http.agent");
        } catch (Exception unused) {
            strConcat = "unKnow";
        }
        StringBuilder sb = new StringBuilder();
        if (strConcat == null) {
            return "";
        }
        int iLastIndexOf = strConcat.lastIndexOf(";");
        if (iLastIndexOf != -1 && strConcat.length() > iLastIndexOf) {
            int i2 = iLastIndexOf + 1;
            String strSubstring = strConcat.substring(0, i2);
            strConcat = strSubstring.concat(" " + Locale.getDefault().getLanguage() + "-" + Locale.getDefault().getCountry() + ";").concat(strConcat.substring(i2));
        }
        int length = strConcat.length();
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = strConcat.charAt(i3);
            if (cCharAt <= 31 || cCharAt >= 127) {
                sb.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static synchronized String jx() {
        try {
            if (TextUtils.isEmpty(jx) && com.byazt.di.l.getContext() != null) {
                try {
                    PackageInfo packageInfo = com.byazt.di.l.getContext().getPackageManager().getPackageInfo(hp(), 0);
                    f28428l = String.valueOf(packageInfo.versionCode);
                    jx = packageInfo.versionName;
                } catch (Throwable th) {
                    com.byazt.aw.l.j(f28427j, "ToolUtils getVersionName throws exception :" + th);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return jx;
    }

    public static synchronized String l() {
        try {
            if (TextUtils.isEmpty(f28428l) && com.byazt.di.l.getContext() != null) {
                try {
                    PackageInfo packageInfo = com.byazt.di.l.getContext().getPackageManager().getPackageInfo(hp(), 0);
                    f28428l = String.valueOf(packageInfo.versionCode);
                    jx = packageInfo.versionName;
                } catch (Throwable th) {
                    com.byazt.aw.l.j(f28427j, "ToolUtils getVersionCode throws exception :" + th);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f28428l;
    }

    public static String w() {
        try {
            byte[] bArr = new byte[8];
            new SecureRandom().nextBytes(bArr);
            return gu.hp(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String hp(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 17) {
            return str;
        }
        return hp.l(str.substring(17), jx(str.substring(1, 17)));
    }

    public static boolean hp(com.byazt.oyr.l lVar) {
        if (lVar == null || !com.byazt.xh.hp.hp(lVar.j())) {
            return (lVar == null || lVar.w() == null || lVar.w().startsWith("{") || lVar.w().endsWith("}")) ? false : true;
        }
        return true;
    }

    private static String jx(String str) {
        String strHp = hp.hp(str);
        if (str != null) {
            return strHp;
        }
        String strHp2 = l.hp();
        return strHp2.concat(strHp2).substring(8, 24);
    }

    public static byte[] l(String str) {
        com.byazt.pg.w wVarA = a();
        if (wVarA == null) {
            return null;
        }
        return wVarA.encrypt(j(str));
    }

    public static String hp(byte[] bArr) {
        com.byazt.pg.w wVarA;
        if (bArr != null) {
            try {
                if (bArr.length == 0 || (wVarA = a()) == null) {
                    return null;
                }
                String strL = com.byazt.zn.e.l(wVarA.decrypt(bArr));
                if (TextUtils.isEmpty(strL)) {
                    return null;
                }
                return strL;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static JSONObject hp(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject != null) {
            try {
                try {
                    String strHp = hp.hp();
                    String str = "2" + strHp + hp.hp(jSONObject.toString(), hp.hp(strHp));
                    if (!TextUtils.isEmpty(str)) {
                        jSONObject2.put("message", str);
                        jSONObject2.put("cypher", 2);
                        return jSONObject2;
                    }
                    jSONObject2.put("message", jSONObject.toString());
                    jSONObject2.put("cypher", 0);
                    return jSONObject2;
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                jSONObject2.put("message", jSONObject.toString());
                jSONObject2.put("cypher", 0);
            }
        }
        return jSONObject2;
    }

    private static byte[] j(String str) throws Throwable {
        GZIPOutputStream gZIPOutputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
        GZIPOutputStream gZIPOutputStream2 = null;
        try {
            try {
                gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            } catch (Exception unused) {
            }
            try {
                gZIPOutputStream.write(str.getBytes());
                gZIPOutputStream.close();
            } catch (Exception unused2) {
                gZIPOutputStream2 = gZIPOutputStream;
                if (gZIPOutputStream2 != null) {
                    gZIPOutputStream2.close();
                }
                return byteArrayOutputStream.toByteArray();
            } catch (Throwable th) {
                th = th;
                gZIPOutputStream2 = gZIPOutputStream;
                if (gZIPOutputStream2 != null) {
                    try {
                        gZIPOutputStream2.close();
                    } catch (Exception unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static void hp(String str, Object obj, boolean z2) {
        if (com.byazt.jz.s.u().rz()) {
            com.byazt.yf.l.getInstance().reportRequestResult(str, obj, z2);
        }
    }
}
