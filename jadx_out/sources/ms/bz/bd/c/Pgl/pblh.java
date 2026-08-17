package ms.bz.bd.c.Pgl;

import android.text.TextUtils;
import com.umeng.analytics.pro.ek;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileReader;
import java.util.HashMap;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class pblh {
    private static final String hp = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0, "5472a9", new byte[]{20, 36, 75, 69, 91, 61, 37, 26, 116});

    /* renamed from: l, reason: collision with root package name */
    private static final String f51977l = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0, "9a221b", new byte[]{0, 98, com.sigmob.sdk.archives.tar.e.f35451Q, 66, 25, 116, 40, 69});
    private static final String jx = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0, "282bcb", new byte[]{5, 63, com.anythink.core.common.s.a.c.f7561b, 2, 73, com.sigmob.sdk.archives.tar.e.f35454T, com.sigmob.sdk.archives.tar.e.f35446L, 10});

    /* renamed from: j, reason: collision with root package name */
    private static final String f51976j = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0, "30b2bd", new byte[]{com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35443I});

    /* renamed from: w, reason: collision with root package name */
    private static final String f51980w = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0, "c626d2", new byte[]{122, 35});

    /* renamed from: a, reason: collision with root package name */
    private static final String f51974a = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0, "7fc3b8", new byte[]{32, 112});
    private static final String eb = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0, "0a27a8", new byte[]{44, 98, 89});

    /* renamed from: s, reason: collision with root package name */
    private static final String f51979s = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0, "80518d", new byte[]{36, 59, 72});

    /* renamed from: q, reason: collision with root package name */
    private static final String f51978q = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0, "a0cf7e", new byte[]{115, 61, 2, 23});

    /* renamed from: e, reason: collision with root package name */
    private static final FileFilter f51975e = new pgla();

    public class pgla implements FileFilter {
        @Override // java.io.FileFilter
        public final boolean accept(File file) {
            return Pattern.matches((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e14253", new byte[]{119, 35, 82, 125, 90, 105, 63, 45}), file.getName());
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:7|(2:34|8)|(4:37|9|32|10)|30|11|(2:20|21)(2:22|23)) */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String hp(java.lang.String r10) {
        /*
            r0 = 0
            r1 = 1
            r2 = 0
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L3a
            r3.<init>(r10)     // Catch: java.lang.Throwable -> L3a
            boolean r10 = r3.exists()     // Catch: java.lang.Throwable -> L3a
            if (r10 != 0) goto L23
            java.lang.String r8 = "f52d58"
            byte[] r9 = new byte[r1]     // Catch: java.lang.Throwable -> L3a
            r10 = 39
            r9[r0] = r10     // Catch: java.lang.Throwable -> L3a
            r4 = 16777217(0x1000001, float:2.350989E-38)
            r5 = 0
            r6 = 0
            java.lang.Object r10 = com.volcengine.mobsecBiz.matrix.pgla.a(r4, r5, r6, r8, r9)     // Catch: java.lang.Throwable -> L3a
            java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Throwable -> L3a
            return r10
        L23:
            java.io.FileReader r10 = new java.io.FileReader     // Catch: java.lang.Throwable -> L3a
            r10.<init>(r3)     // Catch: java.lang.Throwable -> L3a
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L38
            r3.<init>(r10)     // Catch: java.lang.Throwable -> L38
            java.lang.String r2 = r3.readLine()     // Catch: java.lang.Throwable -> L3c
            r3.close()     // Catch: java.lang.Throwable -> L34
        L34:
            r10.close()     // Catch: java.lang.Throwable -> L44
            goto L44
        L38:
            r3 = r2
            goto L3c
        L3a:
            r10 = r2
            r3 = r10
        L3c:
            if (r3 == 0) goto L41
            r3.close()     // Catch: java.lang.Throwable -> L41
        L41:
            if (r10 == 0) goto L44
            goto L34
        L44:
            if (r2 != 0) goto L5b
            byte[] r8 = new byte[r1]
            r10 = 32
            r8[r0] = r10
            r5 = 0
            java.lang.String r7 = "aab14a"
            r3 = 16777217(0x1000001, float:2.350989E-38)
            r4 = 0
            java.lang.Object r10 = com.volcengine.mobsecBiz.matrix.pgla.a(r3, r4, r5, r7, r8)
            java.lang.String r10 = (java.lang.String) r10
            return r10
        L5b:
            java.lang.String r10 = r2.trim()
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: ms.bz.bd.c.Pgl.pblh.hp(java.lang.String):java.lang.String");
    }

    private static int jx() {
        try {
            return new File((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a3b82e", new byte[]{63, 34, 8, 95, 66, 118, com.sigmob.sdk.archives.tar.e.f35454T, 4, 58, 107, 117, 34, 94, 95, 20, 97, 118, 23, 62, 39, 115, 33, 4, 3})).listFiles(f51975e).length;
        } catch (Throwable unused) {
            return -1;
        }
    }

    private static HashMap<String, String> l() {
        FileReader fileReader;
        HashMap<String, String> map = new HashMap<>();
        BufferedReader bufferedReader = null;
        try {
            fileReader = new FileReader((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "aab1e2", new byte[]{63, 115, 3, 74, 89, 106, 97, 80, 38, 104, 126, 101, 30}));
            try {
                BufferedReader bufferedReader2 = new BufferedReader(fileReader);
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            try {
                                break;
                            } catch (Throwable unused) {
                            }
                        } else {
                            String[] strArrSplit = line.split((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b33f5e", new byte[]{41}), 2);
                            if (strArrSplit.length >= 2) {
                                String strTrim = strArrSplit[0].trim();
                                String strTrim2 = strArrSplit[1].trim();
                                if (map.get(strTrim) == null) {
                                    map.put(strTrim, strTrim2);
                                }
                            }
                        }
                    } catch (Throwable unused2) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable unused3) {
                            }
                        }
                        if (fileReader != null) {
                            fileReader.close();
                        }
                        return map;
                    }
                }
                bufferedReader2.close();
            } catch (Throwable unused4) {
            }
        } catch (Throwable unused5) {
            fileReader = null;
        }
        try {
            fileReader.close();
        } catch (Throwable unused6) {
        }
        return map;
    }

    public static String hp() {
        String str;
        String str2;
        JSONObject jSONObject = new JSONObject();
        try {
            HashMap<String, String> mapL = l();
            jSONObject.put(f51978q, jx());
            String str3 = null;
            try {
                str = mapL.get(hp);
            } catch (Throwable unused) {
                str = null;
            }
            jSONObject.put(f51976j, str == null ? "" : str.trim());
            try {
                str2 = mapL.get(f51977l);
            } catch (Throwable unused2) {
                str2 = null;
            }
            jSONObject.put(f51980w, str2 == null ? "" : str2.trim());
            jSONObject.put(eb, hp((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "cbb2c6", new byte[]{61, 115, 8, 85, 19, 37, 101, 85, 58, 97, 119, 115, 94, 85, 69, com.sigmob.sdk.archives.tar.e.f35444J, 116, 70, 62, 45, 113, 112, 4, 9, 95, com.sigmob.sdk.archives.tar.e.f35443I, 117, 19, 124, 97, 98, 117, 23, 84, 89, com.sigmob.sdk.archives.tar.e.f35442H, 47, com.anythink.core.common.s.a.c.f7561b, 35, 119, 123, 110, 23, 73, 99, 44, 97, 91, 12, 100, 96, 101, 0})));
            jSONObject.put(f51979s, hp((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "131645", new byte[]{111, 34, 91, 81, 68, 38, com.sigmob.sdk.archives.tar.e.f35449O, 4, 105, 101, 37, 34, ek.f49293k, 81, 18, com.sigmob.sdk.archives.tar.e.f35443I, 38, 23, 109, 41, 35, 33, 87, ek.f49293k, 8, com.sigmob.sdk.archives.tar.e.f35444J, 39, 66, 47, 101, com.sigmob.sdk.archives.tar.e.f35442H, 36, 68, 80, ek.f49294l, com.sigmob.sdk.archives.tar.e.f35445K, 125, 17, 112, 115, 41, 63, 68, 77, com.sigmob.sdk.archives.tar.e.f35446L, 47, 59, 28, 95, 96, com.sigmob.sdk.archives.tar.e.f35444J, com.sigmob.sdk.archives.tar.e.f35446L, com.sigmob.sdk.archives.tar.e.f35451Q})));
            try {
                str3 = mapL.get(jx);
            } catch (Throwable unused3) {
            }
            jSONObject.put(f51974a, str3 != null ? str3.trim() : "");
        } catch (Throwable unused4) {
        }
        String string = jSONObject.toString();
        return TextUtils.isEmpty(string) ? (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b64f15", new byte[]{104, 41}) : string.trim();
    }
}
