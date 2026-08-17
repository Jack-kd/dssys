package com.beizi.fusion;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class ip {

    /* renamed from: a, reason: collision with root package name */
    private EnumC1137i f14505a;

    /* renamed from: b, reason: collision with root package name */
    private String f14506b;

    /* renamed from: c, reason: collision with root package name */
    private String f14507c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f14508d;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        static final ip f14509a = new ip();
    }

    public static ip a() {
        return a.f14509a;
    }

    private boolean d(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            return !Pattern.compile("^[A-Fa-f0-9]{2}$").matcher(str).matches();
        } catch (Exception e2) {
            e2.printStackTrace();
            return true;
        }
    }

    public boolean b() {
        return this.f14505a == EnumC1137i.UI_MODEL_DARK;
    }

    public boolean c(String str) {
        try {
            return Pattern.compile("^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{8})$").matcher(str).matches();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private int b(String str) {
        return Integer.parseInt(str, 16);
    }

    public void a(Context context, EnumC1137i enumC1137i, String str, String str2) {
        if (this.f14508d) {
            return;
        }
        this.f14508d = true;
        this.f14505a = enumC1137i;
        this.f14506b = str;
        this.f14507c = str2;
        if (TextUtils.isEmpty(str)) {
            this.f14506b = "#FFFFFF";
        }
        if (TextUtils.isEmpty(str2)) {
            this.f14507c = "#000000";
        }
        boolean zA = a(context);
        if (enumC1137i == EnumC1137i.UI_MODEL_AUTO && zA) {
            this.f14505a = EnumC1137i.UI_MODEL_DARK;
        }
    }

    private boolean a(Context context) {
        try {
            Configuration configuration = context.getResources().getConfiguration();
            if (configuration != null) {
                return (configuration.uiMode & 48) == 32;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }

    public String a(String str) {
        String strSubstring;
        String strSubstring2;
        String strSubstring3;
        String strReplace;
        try {
            if (this.f14505a == EnumC1137i.UI_MODEL_LIGHT) {
                return c(str) ? str : this.f14506b;
            }
            String strReplace2 = str.replace("#", "");
            int length = strReplace2.length();
            String str2 = "FF";
            if (length == 6) {
                strSubstring = strReplace2.substring(0, 2);
                strSubstring2 = strReplace2.substring(2, 4);
                strSubstring3 = strReplace2.substring(4, 6);
            } else if (length != 8) {
                strSubstring3 = this.f14505a == EnumC1137i.UI_MODEL_DARK ? com.sigmob.sdk.archives.tar.e.f35456V : "FF";
                strSubstring = strSubstring3;
                strSubstring2 = strSubstring;
            } else {
                String strSubstring4 = strReplace2.substring(0, 2);
                if (!d(strSubstring4)) {
                    str2 = strSubstring4;
                }
                strSubstring = strReplace2.substring(2, 4);
                strSubstring2 = strReplace2.substring(4, 6);
                strSubstring3 = strReplace2.substring(6, 8);
            }
            if (!d(strSubstring) && !d(strSubstring2) && !d(strSubstring3)) {
                int iB = b(strSubstring);
                int iB2 = b(strSubstring2);
                int iB3 = b(strSubstring3);
                if (iB != iB2 || iB2 != iB3 || this.f14505a != EnumC1137i.UI_MODEL_DARK) {
                    return str;
                }
                String upperCase = a(255 - iB).toUpperCase();
                return "#" + str2 + "" + upperCase + "" + upperCase + "" + upperCase;
            }
            if (this.f14505a == EnumC1137i.UI_MODEL_DARK) {
                strReplace = this.f14507c.replace("#", "");
            } else {
                strReplace = this.f14506b.replace("#", "");
            }
            return "#" + str2 + "" + strReplace.toUpperCase();
        } catch (Throwable th) {
            th.printStackTrace();
            return str;
        }
    }

    private String a(int i2) {
        String hexString = Integer.toHexString(i2);
        if (hexString.length() != 1) {
            return hexString;
        }
        return "0" + hexString;
    }
}
