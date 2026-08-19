package com.byazt.xgv;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.byazt.jz.sz;
import com.byazt.ymw.u;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1189, 34})
/* loaded from: classes3.dex */
public class l {
    public static String hp;
    public static Map<String, Integer> jx = new HashMap();

    /* renamed from: l, reason: collision with root package name */
    public static String f27650l;

    static {
        if (j.hp()) {
            f27650l = Build.SUPPORTED_ABIS[0];
        } else {
            f27650l = Build.CPU_ABI;
        }
        jx.put("arm64-v8a", 64);
        jx.put("armeabi-v7a", 32);
        jx.put("armeabi", 32);
        jx.put("x86_64", 64);
        jx.put("x86", 32);
        jx.put("mips64", 64);
        jx.put("mips", 32);
        hp = l();
    }

    private static Map<String, List<ZipEntry>> hp(ZipFile zipFile) {
        String[] strArrSplit;
        HashMap map = new HashMap();
        Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
        Pattern patternCompile = Pattern.compile("^lib/[^/]+/lib[^/]+.so$");
        while (enumerationEntries.hasMoreElements()) {
            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
            if (!zipEntryNextElement.isDirectory() && patternCompile.matcher(zipEntryNextElement.getName()).matches() && (strArrSplit = zipEntryNextElement.getName().split(File.separator)) != null && strArrSplit.length >= 2) {
                String str = strArrSplit[strArrSplit.length - 2];
                if (jx.containsKey(str)) {
                    if (map.get(str) == null) {
                        map.put(str, new LinkedList());
                    }
                    ((List) map.get(str)).add(zipEntryNextElement);
                }
            }
        }
        zipFile.getName();
        return map;
    }

    private static JSONObject jx() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("primaryCpuAbi", "0");
            jSONObject.put("processMode", "0");
            jSONObject.put("supportedABI0", "0");
            jSONObject.put("matchCpuAbi", "0");
            jSONObject.put("defaultABI0", "0");
            jSONObject.put("defaultABI", "0");
            jSONObject.put("autoError", "0");
            jSONObject.put("manualError", "0");
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    private static String l() throws JSONException {
        JSONObject jSONObjectJx = jx();
        String strHp = hp(jSONObjectJx);
        return strHp == null ? l(jSONObjectJx) : strHp;
    }

    private static String l(JSONObject jSONObject) throws JSONException {
        HashSet hashSet;
        String[] strArr;
        try {
            Context context = sz.getContext();
            ZipFile zipFile = new ZipFile(new File(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.sourceDir));
            hashSet = new HashSet(hp(zipFile).keySet());
            try {
                zipFile.close();
            } catch (IOException unused) {
            }
            if (j.hp()) {
                strArr = Build.SUPPORTED_ABIS;
            } else {
                strArr = new String[]{Build.CPU_ABI, Build.CPU_ABI2};
            }
        } catch (Throwable th) {
            u.hp("NativeLibHelper", "NativeLibHelper inferHostAbiManual failed!", th);
            hp(jSONObject, "manualError", "1");
        }
        if (hashSet.isEmpty()) {
            hp(jSONObject, "supportedABI0", strArr[0]);
            return strArr[0];
        }
        for (String str : strArr) {
            if (hashSet.contains(str)) {
                hp(jSONObject, "matchCpuAbi", str);
                return str;
            }
        }
        if (j.hp()) {
            String[] strArr2 = Build.SUPPORTED_ABIS;
            hp(jSONObject, "defaultABI0", strArr2[0]);
            return strArr2[0];
        }
        String str2 = Build.CPU_ABI;
        hp(jSONObject, "defaultABI", str2);
        return str2;
    }

    public static String hp() throws JSONException {
        String str = hp;
        if (str != null) {
            return str;
        }
        String strL = l();
        hp = strL;
        return strL;
    }

    private static String hp(JSONObject jSONObject) throws JSONException {
        int i2;
        if (!j.hp()) {
            return null;
        }
        try {
            String str = (String) hp.hp(sz.getContext().getApplicationInfo(), "primaryCpuAbi");
            hp(jSONObject, "primaryCpuAbi", str);
            if (str == null) {
                return null;
            }
            if (j.l()) {
                try {
                    i2 = Process.is64Bit() ? 64 : 32;
                } catch (Exception unused) {
                }
            } else {
                i2 = 0;
            }
            hp(jSONObject, "processMode", String.valueOf(i2));
            if (i2 != 0) {
                if (jx.get(str).intValue() != i2) {
                    return null;
                }
            }
            return str;
        } catch (Exception e2) {
            u.hp("NativeLibHelper", "NativeLibHelper inferHostAbiAuto failed!", e2);
            hp(jSONObject, "autoError", "1");
            return null;
        }
    }

    private static void hp(JSONObject jSONObject, String str, String str2) throws JSONException {
        try {
            jSONObject.put(str, str2);
        } catch (JSONException unused) {
        }
    }
}
