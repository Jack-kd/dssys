package com.meishu.sdk.core.utils;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;

/* loaded from: classes4.dex */
public class u1 {
    public static String a() {
        try {
            if (y0.f32070n == null && d()) {
                String strC = c();
                y0.f32070n = strC;
                if (TextUtils.isEmpty(strC)) {
                    y0.f32070n = f1.a("romVersionVivo", null);
                } else {
                    f1.b("romVersionVivo", y0.f32070n);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return y0.f32070n;
    }

    public static String b() {
        try {
            String strA = a("ro.vivo.internet.name", "unknown");
            if (!TextUtils.isEmpty(strA) && !"unknown".equals(strA)) {
                if (strA.toLowerCase().contains("vivo")) {
                    return strA;
                }
                return "vivo " + strA;
            }
            String strA2 = a("ro.vivo.market.name", "unknown");
            if ("unknown".equals(strA2) || TextUtils.isEmpty(strA2)) {
                return Build.MODEL;
            }
            if (strA2.toLowerCase().contains("vivo")) {
                return strA2;
            }
            return "vivo " + strA2;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String c() throws Throwable {
        BufferedReader bufferedReader;
        String line;
        BufferedReader bufferedReader2;
        String str = "";
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader3 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.vivo.os.name").getInputStream()), 1024);
            try {
                line = bufferedReader.readLine();
                bufferedReader.close();
                try {
                    bufferedReader.close();
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused3) {
                    }
                }
                line = "";
                sb.append(line);
                bufferedReader2 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.vivo.os.version").getInputStream()), 1024);
                try {
                    String line2 = bufferedReader2.readLine();
                    bufferedReader2.close();
                    try {
                        bufferedReader2.close();
                    } catch (Exception unused4) {
                    }
                    str = line2;
                } catch (Exception unused5) {
                    bufferedReader3 = bufferedReader2;
                    if (bufferedReader3 != null) {
                        try {
                            bufferedReader3.close();
                        } catch (Exception unused6) {
                        }
                    }
                    sb.append(str);
                    return sb.toString();
                } catch (Throwable th) {
                    th = th;
                    bufferedReader3 = bufferedReader2;
                    if (bufferedReader3 != null) {
                        try {
                            bufferedReader3.close();
                        } catch (Exception unused7) {
                        }
                    }
                    throw th;
                }
                sb.append(str);
                return sb.toString();
            } catch (Throwable th2) {
                th = th2;
                bufferedReader3 = bufferedReader;
                if (bufferedReader3 != null) {
                    try {
                        bufferedReader3.close();
                    } catch (Exception unused8) {
                    }
                }
                throw th;
            }
        } catch (Exception unused9) {
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
        }
        sb.append(line);
        try {
            bufferedReader2 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.vivo.os.version").getInputStream()), 1024);
            String line22 = bufferedReader2.readLine();
            bufferedReader2.close();
            bufferedReader2.close();
            str = line22;
        } catch (Exception unused10) {
        } catch (Throwable th4) {
            th = th4;
        }
        sb.append(str);
        return sb.toString();
    }

    public static boolean d() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.toLowerCase().contains("bbk") || str.toLowerCase().startsWith("vivo");
    }

    public static String a(String str, String str2) {
        String str3;
        try {
            str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (Throwable th) {
            th.printStackTrace();
            str3 = str2;
        }
        return (str3 == null || str3.length() == 0) ? str2 : str3;
    }
}
