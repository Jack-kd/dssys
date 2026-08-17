package com.czhj.sdk.common.track;

import android.text.TextUtils;
import com.czhj.sdk.logger.SigmobLog;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class BaseMacroCommon implements Serializable {
    public static final String _BUNDLEID_ = "_BUNDLEID_";
    public static final String _COUNTRY_ = "_COUNTRY_";
    public static final String _LANGUAGE_ = "_LANGUAGE_";
    public static final String _MC_ = "_MC_";
    public static final String _OSVERSION_ = "_OSVERSION_";
    public static final String _TIMEMILLIS_ = "_TIMEMILLIS_";
    public static final String _TIMESTAMP_ = "_TIMESTAMP_";
    private static final long serialVersionUID = 1;
    private final Map<String, String> mMacroMap = new HashMap();
    private Map<String, String> mServerMacroMap = new HashMap();

    /* JADX WARN: Removed duplicated region for block: B:24:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getMacroValue(java.lang.String r7) {
        /*
            java.lang.String r0 = "unFind"
            int r1 = r7.hashCode()     // Catch: java.lang.Throwable -> L92
            r2 = 2
            r3 = 4
            r4 = 1
            r5 = 5
            r6 = 3
            switch(r1) {
                case -1478958456: goto L41;
                case -1012646968: goto L37;
                case -181892765: goto L2d;
                case 501136648: goto L23;
                case 1632828845: goto L19;
                case 1846323754: goto Lf;
                default: goto Le;
            }     // Catch: java.lang.Throwable -> L92
        Le:
            goto L4b
        Lf:
            java.lang.String r1 = "_OSVERSION_"
            boolean r7 = r7.equals(r1)     // Catch: java.lang.Throwable -> L92
            if (r7 == 0) goto L4b
            r7 = r6
            goto L4c
        L19:
            java.lang.String r1 = "_TIMEMILLIS_"
            boolean r7 = r7.equals(r1)     // Catch: java.lang.Throwable -> L92
            if (r7 == 0) goto L4b
            r7 = r5
            goto L4c
        L23:
            java.lang.String r1 = "_COUNTRY_"
            boolean r7 = r7.equals(r1)     // Catch: java.lang.Throwable -> L92
            if (r7 == 0) goto L4b
            r7 = 0
            goto L4c
        L2d:
            java.lang.String r1 = "_BUNDLEID_"
            boolean r7 = r7.equals(r1)     // Catch: java.lang.Throwable -> L92
            if (r7 == 0) goto L4b
            r7 = r4
            goto L4c
        L37:
            java.lang.String r1 = "_TIMESTAMP_"
            boolean r7 = r7.equals(r1)     // Catch: java.lang.Throwable -> L92
            if (r7 == 0) goto L4b
            r7 = r3
            goto L4c
        L41:
            java.lang.String r1 = "_LANGUAGE_"
            boolean r7 = r7.equals(r1)     // Catch: java.lang.Throwable -> L92
            if (r7 == 0) goto L4b
            r7 = r2
            goto L4c
        L4b:
            r7 = -1
        L4c:
            if (r7 == 0) goto L85
            if (r7 == r4) goto L7c
            if (r7 == r2) goto L6f
            if (r7 == r6) goto L6a
            if (r7 == r3) goto L62
            if (r7 == r5) goto L59
            return r0
        L59:
            long r1 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L92
        L5d:
            java.lang.String r7 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> L92
            return r7
        L62:
            long r1 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L92
            r3 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 / r3
            goto L5d
        L6a:
            java.lang.String r7 = com.czhj.sdk.common.ClientMetadata.getDeviceOsVersion()     // Catch: java.lang.Throwable -> L92
            return r7
        L6f:
            com.czhj.sdk.common.ClientMetadata r7 = com.czhj.sdk.common.ClientMetadata.getInstance()     // Catch: java.lang.Throwable -> L92
            java.util.Locale r7 = r7.getDeviceLocale()     // Catch: java.lang.Throwable -> L92
            java.lang.String r7 = r7.getLanguage()     // Catch: java.lang.Throwable -> L92
            return r7
        L7c:
            com.czhj.sdk.common.ClientMetadata r7 = com.czhj.sdk.common.ClientMetadata.getInstance()     // Catch: java.lang.Throwable -> L92
            java.lang.String r7 = r7.getAppPackageName()     // Catch: java.lang.Throwable -> L92
            return r7
        L85:
            com.czhj.sdk.common.ClientMetadata r7 = com.czhj.sdk.common.ClientMetadata.getInstance()     // Catch: java.lang.Throwable -> L92
            java.util.Locale r7 = r7.getDeviceLocale()     // Catch: java.lang.Throwable -> L92
            java.lang.String r7 = r7.getCountry()     // Catch: java.lang.Throwable -> L92
            return r7
        L92:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.czhj.sdk.common.track.BaseMacroCommon.getMacroValue(java.lang.String):java.lang.String");
    }

    private String replaceMacroWithMap(String str, Map<String, String> map) {
        String str2 = this.mServerMacroMap.get(str);
        SigmobLog.d("macroProcess() called with:[" + str + "][" + str2 + "]");
        if (!TextUtils.isEmpty(str2) && !str2.equals("unFind")) {
            return str2;
        }
        String str3 = this.mMacroMap.get(str);
        SigmobLog.d("macroProcess() called with:[" + str + "][" + str3 + "]");
        if (!TextUtils.isEmpty(str3) && !str3.equals("unFind")) {
            return str3;
        }
        if (map == null) {
            return null;
        }
        String str4 = map.get(str);
        SigmobLog.d("macroProcess() called with:[" + str + "][" + str4 + "]");
        if (TextUtils.isEmpty(str4) || str4.equals("unFind")) {
            return null;
        }
        return str4;
    }

    public void addAllMarco(Map<String, String> map) {
        this.mMacroMap.putAll(map);
    }

    public void addMarcoKey(String str, String str2) {
        this.mMacroMap.put(str, str2);
    }

    public void clearMacro() {
        this.mMacroMap.clear();
    }

    public Map<String, String> getMacroMap() {
        return this.mMacroMap;
    }

    public String getMarcoKey(String str) {
        return this.mMacroMap.get(str);
    }

    public String macroProcess(String str) {
        return macroProcess(str, null);
    }

    public void removeMarcoKey(String str) {
        this.mMacroMap.remove(str);
    }

    public String replaceWithDefault(String str) {
        String macroValue = getMacroValue(str);
        SigmobLog.d("macroProcess() called with:[" + str + "][" + macroValue + "]");
        if (TextUtils.isEmpty(macroValue) || macroValue.equals("unFind")) {
            return null;
        }
        return macroValue;
    }

    public void setServerMacroMap(Map<String, String> map) {
        this.mServerMacroMap = map;
    }

    public String macroProcess(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Matcher matcher = Pattern.compile("_([A-Z,0-9])+_").matcher(str);
        try {
            SigmobLog.d("macroProcess() called with: origin url " + str);
            while (matcher.find()) {
                String strGroup = matcher.group();
                String strReplaceMacroWithMap = replaceMacroWithMap(strGroup, map);
                if (TextUtils.isEmpty(strReplaceMacroWithMap) || strReplaceMacroWithMap.equals("unFind")) {
                    strReplaceMacroWithMap = replaceWithDefault(strGroup);
                    if (TextUtils.isEmpty(strReplaceMacroWithMap) || strReplaceMacroWithMap.equals("unFind")) {
                    }
                }
                str = str.replaceAll(strGroup, strReplaceMacroWithMap);
            }
            SigmobLog.d("macroProcess() called with: final url " + str);
            return str;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return str;
        }
    }
}
