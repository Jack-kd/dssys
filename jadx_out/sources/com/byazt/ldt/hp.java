package com.byazt.ldt;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import com.byazt.ap.jx;
import com.byazt.cm.w;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.pu.TTDownloadField;
import com.byazt.ry.j;
import com.byazt.sf.l;
import com.byazt.zn.ky;
import com.umeng.analytics.pro.bv;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 795, 28})
/* loaded from: classes3.dex */
public class hp implements l {
    public static volatile hp hp;

    /* renamed from: l, reason: collision with root package name */
    public static final FileFilter f22478l = new FileFilter() { // from class: com.byazt.ldt.hp.1
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            if (!name.startsWith("cpu")) {
                return false;
            }
            for (int i2 = 3; i2 < name.length(); i2++) {
                if (!Character.isDigit(name.charAt(i2))) {
                    return false;
                }
            }
            return true;
        }
    };

    private void a(String str) throws JSONException {
        try {
            jx jxVarJx = w.hp().l().jx();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(bv.f48923x, "android");
            jSONObject.put("device_model", Build.MODEL);
            jxVarJx.hp(Uri.parse(ky.gu("/api/ad/union/sdk/device_score")).buildUpon().appendQueryParameter("is_bidding", "1").appendQueryParameter("extra", com.byazt.ymw.hp.l(jSONObject.toString())).toString());
            com.byazt.oyr.l lVarHp = jxVarJx.hp();
            if (lVarHp == null || !lVarHp.q()) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject(lVarHp.w());
            if (jSONObject2.optInt("code") != 200) {
                hp("bytebench_value", "-1.0", str);
                return;
            }
            double dOptDouble = jSONObject2.optDouble("score");
            if (dOptDouble <= 0.0d) {
                hp("bytebench_value", "-1.0", str);
                return;
            }
            hp("bytebench_update_time", String.valueOf(System.currentTimeMillis()), str);
            hp("bytebench_value", String.valueOf(dOptDouble), str);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("score", dOptDouble);
            k.hp().eb(jSONObject3);
        } catch (Exception unused) {
            JSONObject jSONObject4 = new JSONObject();
            try {
                jSONObject4.put("score", -1);
                k.hp().eb(jSONObject4);
            } catch (JSONException unused2) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int eb(java.lang.String r6) throws org.json.JSONException {
        /*
            r5 = this;
            android.content.Context r0 = com.byazt.jz.sz.getContext()
            int r0 = l(r0)
            int r1 = w()
            r2 = 2
            if (r0 == 0) goto L23
            r3 = 1
            if (r0 == r3) goto L23
            if (r1 != 0) goto L15
            goto L23
        L15:
            if (r0 != r2) goto L19
            if (r1 > 0) goto L1f
        L19:
            if (r0 <= r2) goto L21
            if (r1 <= r3) goto L1f
            r2 = 0
            goto L23
        L1f:
            r2 = r3
            goto L23
        L21:
            r2 = -1000(0xfffffffffffffc18, float:NaN)
        L23:
            java.lang.String r3 = "ram_level"
            java.lang.String r4 = java.lang.String.valueOf(r0)
            r5.hp(r3, r4, r6)
            java.lang.String r3 = "cpu_level"
            java.lang.String r4 = java.lang.String.valueOf(r1)
            r5.hp(r3, r4, r6)
            long r3 = java.lang.System.currentTimeMillis()
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r4 = "update_time"
            r5.hp(r4, r3, r6)
            org.json.JSONObject r3 = new org.json.JSONObject
            r3.<init>()
            java.lang.String r4 = "ram"
            r3.put(r4, r0)     // Catch: org.json.JSONException -> L56
            java.lang.String r0 = "cpu"
            r3.put(r0, r1)     // Catch: org.json.JSONException -> L56
            java.lang.String r0 = "level"
            r3.put(r0, r2)     // Catch: org.json.JSONException -> L56
        L56:
            com.byazt.lf.k r0 = com.byazt.lf.k.hp()
            r0.a(r3)
            r5.hp(r2, r6)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ldt.hp.eb(java.lang.String):int");
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public static int j() {
        try {
            int iJ = j("/sys/devices/system/cpu/possible");
            if (iJ == -1) {
                iJ = j("/sys/devices/system/cpu/present");
            }
            return iJ == -1 ? new File("/sys/devices/system/cpu/").listFiles(f22478l).length : iJ;
        } catch (NullPointerException | SecurityException unused) {
            return -1;
        }
    }

    public static int jx() throws IOException {
        int i2 = -1;
        for (int i3 = 0; i3 < j(); i3++) {
            try {
                File file = new File("/sys/devices/system/cpu/cpu" + i3 + "/cpufreq/cpuinfo_max_freq");
                if (file.exists() && file.canRead()) {
                    byte[] bArr = new byte[128];
                    FileInputStream fileInputStream = new FileInputStream(file);
                    try {
                        fileInputStream.read(bArr);
                        int i4 = 0;
                        while (Character.isDigit(bArr[i4]) && i4 < 128) {
                            i4++;
                        }
                        int i5 = Integer.parseInt(new String(bArr, 0, i4));
                        if (i5 > i2) {
                            i2 = i5;
                        }
                    } catch (NumberFormatException unused) {
                    } catch (Throwable th) {
                        fileInputStream.close();
                        throw th;
                    }
                    fileInputStream.close();
                }
            } catch (IOException unused2) {
                return -1;
            }
        }
        if (i2 == -1) {
            FileInputStream fileInputStream2 = new FileInputStream("/proc/cpuinfo");
            try {
                int iHp = hp("cpu MHz", fileInputStream2) * 1000;
                if (iHp > i2) {
                    i2 = iHp;
                }
            } finally {
                fileInputStream2.close();
            }
        }
        return i2;
    }

    private static int w(String str) {
        if (str == null || !str.matches("0-[\\d]+$")) {
            return -1;
        }
        return Integer.valueOf(str.substring(2)).intValue() + 1;
    }

    public boolean l(String str) {
        String strHp = hp("update_time", str);
        return strHp.isEmpty() || System.currentTimeMillis() - Long.parseLong(strHp) >= 2592000000L;
    }

    private static int w() {
        int iJx = jx() / 1000;
        if (iJx <= 1600) {
            return 0;
        }
        if (iJx <= 2000) {
            return 1;
        }
        return iJx <= 2500 ? 2 : 3;
    }

    private static int j(String str) throws IOException {
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
                String line = bufferedReader.readLine();
                bufferedReader.close();
                int iW = w(line);
                fileInputStream.close();
                return iW;
            } finally {
            }
        } catch (IOException unused) {
            return -1;
        }
    }

    private static int l(Context context) {
        long jHp = hp(context) / 1048576;
        if (jHp <= 2000) {
            return 0;
        }
        if (jHp <= 3000) {
            return 1;
        }
        if (jHp <= 4000) {
            return 2;
        }
        return jHp <= 6000 ? 3 : 4;
    }

    @Override // com.byazt.sf.l
    public String l() {
        return "DeviceRate";
    }

    @TargetApi(16)
    public static long hp(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0034, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int hp(java.lang.String r6, java.io.FileInputStream r7) throws java.io.IOException {
        /*
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]
            int r7 = r7.read(r0)     // Catch: java.lang.Throwable -> L37
            r1 = 0
        L9:
            if (r1 >= r7) goto L37
            r2 = r0[r1]     // Catch: java.lang.Throwable -> L37
            r3 = 10
            if (r2 == r3) goto L13
            if (r1 != 0) goto L34
        L13:
            if (r2 != r3) goto L17
            int r1 = r1 + 1
        L17:
            r2 = r1
        L18:
            if (r2 >= r7) goto L34
            int r3 = r2 - r1
            r4 = r0[r2]     // Catch: java.lang.Throwable -> L37
            char r5 = r6.charAt(r3)     // Catch: java.lang.Throwable -> L37
            if (r4 != r5) goto L34
            int r4 = r6.length()     // Catch: java.lang.Throwable -> L37
            int r4 = r4 + (-1)
            if (r3 != r4) goto L31
            int r6 = hp(r0, r2)     // Catch: java.lang.Throwable -> L37
            return r6
        L31:
            int r2 = r2 + 1
            goto L18
        L34:
            int r1 = r1 + 1
            goto L9
        L37:
            r6 = -1
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ldt.hp.hp(java.lang.String, java.io.FileInputStream):int");
    }

    private static int hp(byte[] bArr, int i2) {
        byte b3;
        while (i2 < bArr.length && (b3 = bArr[i2]) != 10) {
            if (Character.isDigit(b3)) {
                int i3 = i2 + 1;
                while (i3 < bArr.length && Character.isDigit(bArr[i3])) {
                    i3++;
                }
                return Integer.parseInt(new String(bArr, 0, i2, i3 - i2));
            }
            i2++;
        }
        return -1;
    }

    public boolean jx(String str) {
        String strHp = hp("bytebench_update_time", str);
        return strHp.isEmpty() || System.currentTimeMillis() - Long.parseLong(strHp) >= 2592000000L;
    }

    public void hp(String str) throws JSONException {
        if (sz.l().mm() && l(str)) {
            eb(str);
        }
        try {
            if (Double.parseDouble(com.byazt.sf.hp.hp().hp("DeviceRate", "bytebench_value", str)) <= 0.0d || (sz.l().vd() && jx(str))) {
                a(str);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.sf.l
    public String hp(String str, String str2) {
        return j.hp(null, l()).get(str, "");
    }

    @Override // com.byazt.sf.l
    public void hp(String str, String str2, String str3) {
        j.hp(null, l()).put(str, str2);
    }

    private void hp(int i2, String str) {
        hp("device_level", String.valueOf(i2), str);
        com.byazt.lca.j.hp().s(i2);
    }
}
