package com.yxcorp.kuaishou.addfp.android.a;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class c {

    /* renamed from: d, reason: collision with root package name */
    private static boolean f50637d = true;

    /* renamed from: e, reason: collision with root package name */
    private static int f50638e;

    /* renamed from: a, reason: collision with root package name */
    private String f50639a;

    /* renamed from: b, reason: collision with root package name */
    private String f50640b;

    /* renamed from: c, reason: collision with root package name */
    private ReentrantLock f50641c;

    private c() {
        this.f50640b = "";
        this.f50641c = new ReentrantLock();
    }

    public static c c() {
        return b.f50636a;
    }

    public String a() {
        try {
            return !TextUtils.isEmpty(this.f50639a) ? this.f50639a : "KWE_N";
        } catch (Throwable th) {
            th.printStackTrace();
            return "KWE_N";
        }
    }

    public void b(String str) {
        this.f50639a = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0045 A[PHI: r4
      0x0045: PHI (r4v1 boolean) = (r4v0 boolean), (r4v2 boolean) binds: [B:12:0x0017, B:21:0x0042] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b() {
        /*
            boolean r0 = com.yxcorp.kuaishou.addfp.android.a.c.f50637d     // Catch: java.lang.Throwable -> L66
            if (r0 != 0) goto L7
            java.lang.String r0 = "KWE_NPN"
            return r0
        L7:
            java.lang.String r0 = ""
            int r1 = com.yxcorp.kuaishou.addfp.android.a.c.f50638e     // Catch: java.lang.Throwable -> L66
            if (r1 != 0) goto L5f
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L66
            r2 = 33
            r3 = 1
            if (r1 >= r2) goto L46
            r2 = 29
            r4 = 0
            if (r1 < r2) goto L45
            java.lang.String r1 = android.os.Build.MODEL     // Catch: java.lang.Throwable -> L66
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L66
            if (r2 != 0) goto L3a
            java.lang.String r2 = r1.toLowerCase()     // Catch: java.lang.Throwable -> L66
            java.lang.String r5 = "redmi"
            boolean r2 = r2.contains(r5)     // Catch: java.lang.Throwable -> L66
            if (r2 == 0) goto L3a
            java.lang.String r1 = r1.toLowerCase()     // Catch: java.lang.Throwable -> L66
            java.lang.String r2 = "note 7"
            boolean r1 = r1.contains(r2)     // Catch: java.lang.Throwable -> L66
            if (r1 == 0) goto L3a
            r4 = r3
        L3a:
            java.lang.String r1 = android.os.Build.BRAND     // Catch: java.lang.Throwable -> L66
            java.lang.String r2 = "HONOR"
            boolean r1 = r1.equalsIgnoreCase(r2)     // Catch: java.lang.Throwable -> L66
            if (r1 == 0) goto L45
            goto L46
        L45:
            r3 = r4
        L46:
            if (r3 != 0) goto L5f
            com.yxcorp.kuaishou.addfp.android.Orange r1 = com.yxcorp.kuaishou.addfp.android.Orange.getInstance()     // Catch: java.lang.Throwable -> L66
            java.lang.String r1 = r1.gSer()     // Catch: java.lang.Throwable -> L66
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L66
            if (r2 != 0) goto L5f
            java.lang.String r2 = "KWE"
            boolean r2 = r1.startsWith(r2)     // Catch: java.lang.Throwable -> L66
            if (r2 != 0) goto L5f
            return r1
        L5f:
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L66
            if (r1 != 0) goto L6a
            return r0
        L66:
            r0 = move-exception
            r0.printStackTrace()
        L6a:
            java.lang.String r0 = "KWE_N"
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yxcorp.kuaishou.addfp.android.a.c.b():java.lang.String");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(85:10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|(3:170|28|29)|32|33|34|35|36|37|38|39|40|41|42|43|44|45|(3:180|46|(1:48))|51|52|53|54|151|55|59|60|61|62|63|64|(3:168|65|66)|(3:172|67|68)|71|72|161|73|159|74|75|153|76|86|87|166|88|91|92|93|94|95|96|97|98|99|100|101|(1:117)(4:107|(3:109|178|110)(1:114)|111|115)|118|119|174|120|(4:123|(2:125|184)(1:183)|128|121)|182|129|132|139|(1:141)|142|143) */
    /* JADX WARN: Can't wrap try/catch for region: R(87:10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|170|28|29|32|33|34|35|36|37|38|39|40|41|42|43|44|45|(3:180|46|(1:48))|51|52|53|54|151|55|59|60|61|62|63|64|(3:168|65|66)|(3:172|67|68)|71|72|161|73|159|74|75|153|76|86|87|166|88|91|92|93|94|95|96|97|98|99|100|101|(1:117)(4:107|(3:109|178|110)(1:114)|111|115)|118|119|174|120|(4:123|(2:125|184)(1:183)|128|121)|182|129|132|139|(1:141)|142|143) */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x02d3, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x02fc, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x032d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x032e, code lost:
    
        if (r15 != null) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0330, code lost:
    
        r15.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0333, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01e8, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01ea, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01eb, code lost:
    
        r15 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01ec, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01ef, code lost:
    
        if (r15 != null) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01f1, code lost:
    
        r15.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01f4, code lost:
    
        r17 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x020e, code lost:
    
        r5 = "KWE_PE";
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x026c A[Catch: all -> 0x002c, TryCatch #6 {all -> 0x002c, blocks: (B:3:0x0017, B:5:0x0024, B:10:0x002f, B:12:0x0036, B:14:0x0045, B:16:0x005a, B:18:0x0067, B:20:0x0075, B:22:0x0083, B:24:0x008c, B:26:0x0099, B:32:0x00b7, B:34:0x00d3, B:36:0x00dc, B:38:0x00e9, B:40:0x00f6, B:42:0x0103, B:44:0x0118, B:51:0x013e, B:53:0x014b, B:59:0x0166, B:61:0x016f, B:63:0x0182, B:71:0x01b4, B:76:0x01e4, B:86:0x01f6, B:91:0x020f, B:93:0x0218, B:95:0x0229, B:97:0x0232, B:99:0x0250, B:101:0x025d, B:103:0x026c, B:105:0x0272, B:107:0x027a, B:109:0x0280, B:110:0x0287, B:115:0x0299, B:119:0x02a2, B:132:0x02ff, B:131:0x02fc, B:113:0x0292, B:84:0x01f1, B:136:0x0330, B:137:0x0333, B:58:0x0162, B:50:0x013a, B:31:0x00b2, B:55:0x0154, B:82:0x01ec, B:28:0x00a6, B:120:0x02a9, B:123:0x02b3, B:125:0x02c7, B:128:0x02d5, B:129:0x02d8, B:46:0x0121), top: B:163:0x0017, inners: #0, #7, #10, #12, #14, #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02b3 A[Catch: all -> 0x02d3, TryCatch #12 {all -> 0x02d3, blocks: (B:120:0x02a9, B:123:0x02b3, B:125:0x02c7, B:128:0x02d5, B:129:0x02d8), top: B:174:0x02a9, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0350  */
    /* JADX WARN: Type inference failed for: r16v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(android.content.Context r23, com.yxcorp.kuaishou.addfp.ResponseDfpCallback r24, boolean r25) {
        /*
            Method dump skipped, instructions count: 860
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yxcorp.kuaishou.addfp.android.a.c.a(android.content.Context, com.yxcorp.kuaishou.addfp.ResponseDfpCallback, boolean):java.lang.String");
    }

    private static String a(String str) {
        return TextUtils.isEmpty(str) ? "KWE_N" : str.replace("=", "").replace("&", "");
    }

    public static void a(JSONObject jSONObject) {
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if ("64".equals(next) && jSONObject.optInt(next, 1) == 0) {
                    f50637d = false;
                }
                if ("64_level".equals(next)) {
                    f50638e = jSONObject.optInt(next, 0);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
