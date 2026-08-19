package com.byazt.qk;

import android.graphics.Color;
import android.text.TextUtils;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 64, 38})
/* loaded from: classes3.dex */
public class j {
    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void hp(org.json.JSONObject r4, org.json.JSONObject r5) throws java.lang.Exception {
        /*
            if (r5 == 0) goto L7c
            java.lang.String r0 = "xAppInfo"
            org.json.JSONObject r0 = r5.optJSONObject(r0)
            if (r0 == 0) goto L7c
            java.lang.String r1 = "themeStatus"
            int r0 = r0.optInt(r1)
            r1 = 1
            if (r0 != r1) goto L7c
            java.lang.String r0 = "xSetting"
            org.json.JSONObject r2 = r5.optJSONObject(r0)
            if (r2 == 0) goto L36
            org.json.JSONObject r2 = r5.optJSONObject(r0)
            java.util.Objects.requireNonNull(r2)
            java.lang.String r3 = "dark_mode_config"
            org.json.JSONObject r2 = r2.optJSONObject(r3)
            if (r2 == 0) goto L36
            org.json.JSONObject r5 = r5.optJSONObject(r0)
            java.util.Objects.requireNonNull(r5)
            org.json.JSONObject r5 = r5.optJSONObject(r3)
            goto L37
        L36:
            r5 = 0
        L37:
            if (r5 != 0) goto L3e
            org.json.JSONObject r5 = new org.json.JSONObject
            r5.<init>()
        L3e:
            java.lang.String r0 = "backgroundColor"
            java.lang.String r2 = r4.optString(r0)
            int r2 = hp(r2, r5)
            if (r2 == r1) goto L5a
            r3 = 2
            if (r2 == r3) goto L4e
            goto L65
        L4e:
            java.lang.String r2 = r4.optString(r0)
            java.lang.String r2 = l(r2, r5)
            r4.put(r0, r2)
            goto L65
        L5a:
            java.lang.String r2 = r4.optString(r0)
            java.lang.String r2 = j(r2, r5)
            r4.put(r0, r2)
        L65:
            java.lang.String r0 = "textColor"
            java.lang.String r2 = r4.optString(r0)
            int r2 = hp(r2, r5)
            if (r2 != r1) goto L7c
            java.lang.String r1 = r4.optString(r0)
            java.lang.String r5 = jx(r1, r5)
            r4.put(r0, r5)
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.qk.j.hp(org.json.JSONObject, org.json.JSONObject):void");
    }

    private static String j(String str, JSONObject jSONObject) {
        int iHp = com.byazt.xa.hp.hp(str);
        try {
            int iOptInt = jSONObject.optInt("black_bright_offset", 20);
            int iRed = Color.red(iHp);
            int iGreen = Color.green(iHp);
            int iBlue = Color.blue(iHp);
            int iAlpha = Color.alpha(iHp);
            int iMax = Math.max(0, Math.min(100, iOptInt));
            return hp(iAlpha, Math.min(255, iRed + ((255 - iRed) * (iMax / 100))), Math.min(255, iGreen + ((255 - iGreen) * (iMax / 100))), Math.min(255, iBlue + ((255 - iBlue) * (iMax / 100))));
        } catch (Exception unused) {
            return str;
        }
    }

    private static String jx(String str, JSONObject jSONObject) {
        int iHp = com.byazt.xa.hp.hp(str);
        try {
            int iOptInt = jSONObject.optInt("gray_threshold", 20);
            int iOptInt2 = jSONObject.optInt("light_gray_threshold", 225);
            int iRed = Color.red(iHp);
            int iGreen = Color.green(iHp);
            int iBlue = Color.blue(iHp);
            int iAlpha = Color.alpha(iHp);
            if (iAlpha < 0) {
                iAlpha = 1;
            }
            return Math.max(iRed, Math.max(iGreen, iBlue)) - Math.min(iRed, Math.min(iGreen, iBlue)) < iOptInt ? hp(iAlpha, 255 - iRed, 255 - iGreen, 255 - iBlue) : hp(iAlpha, iOptInt2, iOptInt2, iOptInt2);
        } catch (Exception unused) {
            return str;
        }
    }

    private static String l(String str, JSONObject jSONObject) {
        int iHp = com.byazt.xa.hp.hp(str);
        try {
            int iOptInt = jSONObject.optInt("gray_threshold", 20);
            int iOptInt2 = jSONObject.optInt("dark_gray_threshold", 30);
            int iRed = Color.red(iHp);
            int iGreen = Color.green(iHp);
            int iBlue = Color.blue(iHp);
            int iAlpha = Color.alpha(iHp);
            if (iAlpha < 0) {
                iAlpha = 1;
            }
            return Math.max(iRed, Math.max(iGreen, iBlue)) - Math.min(iRed, Math.min(iGreen, iBlue)) < iOptInt ? hp(iAlpha, 255 - iRed, 255 - iGreen, 255 - iBlue) : hp(iAlpha, iOptInt2, iOptInt2, iOptInt2);
        } catch (Exception unused) {
            return str;
        }
    }

    private static int hp(String str, JSONObject jSONObject) {
        int iOptInt;
        int iOptInt2;
        int iOptInt3;
        try {
            iOptInt = jSONObject.optInt("luminance_upper", 90);
            iOptInt2 = jSONObject.optInt("luminance_lower", 40);
            iOptInt3 = jSONObject.optInt("gray_threshold", 20);
        } catch (Exception unused) {
        }
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        int iHp = com.byazt.xa.hp.hp(str);
        int iRed = Color.red(iHp);
        int iGreen = Color.green(iHp);
        int iBlue = Color.blue(iHp);
        int iMax = Math.max(iRed, Math.max(iGreen, iBlue));
        int iMin = Math.min(iRed, Math.min(iGreen, iBlue));
        int i2 = (iMax + iMin) / 2;
        int i3 = iMax - iMin;
        if (i2 <= iOptInt || i3 >= iOptInt3) {
            return (i2 >= iOptInt2 || i3 >= iOptInt3) ? 0 : 1;
        }
        return 2;
    }

    private static String hp(int i2, int i3, int i4, int i5) {
        return String.format("#%02X%02X%02X%02X", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }
}
