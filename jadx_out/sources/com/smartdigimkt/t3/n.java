package com.smartdigimkt.t3;

import android.text.TextUtils;
import android.util.Log;
import com.smartdigimkt.c5.q;
import com.smartdigimkt.sdk.core.SDKContext;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class n {

    /* renamed from: e, reason: collision with root package name */
    public static volatile n f44325e;

    /* renamed from: a, reason: collision with root package name */
    public final String f44326a = n.class.getSimpleName();

    /* renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f44328c = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    public final Object[] f44329d = new Object[64];

    /* renamed from: b, reason: collision with root package name */
    public final File f44327b = q.a(SDKContext.getInstance().d());

    public n() {
        for (int i2 = 0; i2 < 64; i2++) {
            this.f44329d[i2] = new Object();
        }
    }

    public static n a() {
        if (f44325e == null) {
            synchronized (n.class) {
                try {
                    if (f44325e == null) {
                        f44325e = new n();
                    }
                } finally {
                }
            }
        }
        return f44325e;
    }

    public final String b(String str) {
        String strB = b(6, com.smartdigimkt.c5.i.b(str));
        try {
            if (!new File(strB).exists()) {
                return "";
            }
            String str2 = strB + File.separator + "index.html";
            return !new File(str2).exists() ? "" : str2;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static long a(int i2) {
        if (i2 != 1 && i2 != 4 && i2 != 5) {
            return 26214400L;
        }
        com.smartdigimkt.z4.d dVarC = com.smartdigimkt.z4.d.c();
        return ((dVarC.f45458b == null || dVarC.f45458b.f39388s == 0) ? 204800L : dVarC.f45458b.f39388s) * 1024;
    }

    public final String b(int i2) {
        String str;
        if (i2 == 1) {
            str = "sdm_internal_resouce";
        } else if (i2 == 3) {
            str = "sdm_internal_extra_resource";
        } else if (i2 == 4) {
            str = "sdm_internal_video_resource";
        } else if (i2 != 5 && i2 != 6) {
            str = "sdm_custom_resouce";
        } else {
            str = "sdm_internal_html_template";
        }
        return new File(this.f44327b, str).getAbsolutePath();
    }

    public final void a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        try {
            File file = new File(new File(this.f44327b, "sdm_internal_html_resouce"), aVar.f41632f + "_" + cVar.f41806a + ".html");
            if (file.exists()) {
                file.delete();
            }
        } catch (Throwable unused) {
        }
    }

    public final String b(int i2, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(b(i2));
        sb.append(File.separator);
        if (i2 != 4) {
            if (i2 == 5) {
                str = com.smartdigimkt.p.a.a(str, ".zip");
            } else if (i2 != 6) {
                str = com.smartdigimkt.p.a.a(str, ".0");
            }
        }
        sb.append(str);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x008b A[EXC_TOP_SPLITTER, PHI: r0 r2
      0x008b: PHI (r0v1 boolean) = (r0v0 boolean), (r0v3 boolean) binds: [B:46:0x008a, B:35:0x0073] A[DONT_GENERATE, DONT_INLINE]
      0x008b: PHI (r2v10 com.smartdigimkt.t3.b) = (r2v9 com.smartdigimkt.t3.b), (r2v14 com.smartdigimkt.t3.b) binds: [B:46:0x008a, B:35:0x0073] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(int r7, java.lang.String r8, java.io.InputStream r9) {
        /*
            r6 = this;
            r0 = 0
            if (r8 == 0) goto L9b
            if (r9 != 0) goto L7
            goto L9b
        L7:
            java.lang.String r1 = r6.b(r7)
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 == 0) goto L12
            return r0
        L12:
            java.io.File r2 = new java.io.File
            r2.<init>(r1)
            boolean r1 = r2.exists()
            if (r1 != 0) goto L20
            r2.mkdirs()
        L20:
            com.smartdigimkt.t3.f r1 = r6.a(r7, r2)
            if (r1 != 0) goto L27
            return r0
        L27:
            int r7 = r7 * 31
            int r2 = r8.hashCode()
            int r2 = r2 + r7
            r7 = 2147483647(0x7fffffff, float:NaN)
            r7 = r7 & r2
            java.lang.Object[] r2 = r6.f44329d
            int r7 = r7 % 64
            r7 = r2[r7]
            monitor-enter(r7)
            r2 = 0
            com.smartdigimkt.t3.e r3 = r1.b(r8)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            if (r3 == 0) goto L4d
            java.io.InputStream[] r8 = r3.f44285a     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            r8 = r8[r0]     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            r8.close()     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            goto L72
        L48:
            r8 = move-exception
            goto L93
        L4a:
            r8 = move-exception
            r9 = r2
            goto L76
        L4d:
            com.smartdigimkt.t3.c r8 = r1.a(r8)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4a
            if (r8 == 0) goto L73
            com.smartdigimkt.t3.b r2 = r8.b()     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L66
            r1 = 2048(0x800, float:2.87E-42)
            byte[] r1 = new byte[r1]     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L66
        L5b:
            int r3 = r9.read(r1)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L66
            r4 = -1
            if (r3 == r4) goto L6c
            r2.write(r1, r0, r3)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L66
            goto L5b
        L66:
            r9 = move-exception
            r5 = r2
            r2 = r8
            r8 = r9
            r9 = r5
            goto L76
        L6c:
            r8.a()     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L66
            r2.close()     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L66
        L72:
            r0 = 1
        L73:
            if (r2 == 0) goto L91
            goto L8b
        L76:
            r8.toString()     // Catch: java.lang.Throwable -> L81
            if (r2 == 0) goto L88
            com.smartdigimkt.t3.f r8 = r2.f44279c     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            com.smartdigimkt.t3.f.a(r8, r2, r0)     // Catch: java.lang.Throwable -> L81 java.lang.Exception -> L84
            goto L88
        L81:
            r8 = move-exception
            r2 = r9
            goto L93
        L84:
            r8 = move-exception
            r8.printStackTrace()     // Catch: java.lang.Throwable -> L81
        L88:
            if (r9 == 0) goto L91
            r2 = r9
        L8b:
            r2.close()     // Catch: java.lang.Throwable -> L8f java.io.IOException -> L91
            goto L91
        L8f:
            r8 = move-exception
            goto L99
        L91:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L8f
            return r0
        L93:
            if (r2 == 0) goto L98
            r2.close()     // Catch: java.lang.Throwable -> L8f java.io.IOException -> L98
        L98:
            throw r8     // Catch: java.lang.Throwable -> L8f
        L99:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L8f
            throw r8
        L9b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.t3.n.a(int, java.lang.String, java.io.InputStream):boolean");
    }

    public final FileInputStream a(int i2, String str) {
        InputStream inputStream;
        if (i2 != 4) {
            String strB = b(i2);
            if (TextUtils.isEmpty(strB)) {
                return null;
            }
            File file = new File(strB);
            if (!file.exists()) {
                file.mkdirs();
            }
            f fVarA = a(i2, file);
            if (fVarA != null) {
                try {
                    e eVarB = fVarA.b(str);
                    if (eVarB != null && (inputStream = eVarB.f44285a[0]) != null) {
                        return (FileInputStream) inputStream;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            return null;
        }
        try {
            return new FileInputStream(new File(b(4, str)));
        } catch (Throwable unused) {
            return null;
        }
    }

    public final synchronized f a(int i2, File file) {
        f fVarA;
        fVarA = (f) this.f44328c.get(Integer.valueOf(i2));
        if (fVarA == null) {
            try {
                fVarA = f.a(file, a(i2));
                this.f44328c.put(Integer.valueOf(i2), fVarA);
            } catch (Throwable th) {
                if (SDKContext.getInstance().j()) {
                    Log.e(this.f44326a, "Create DiskCache error.");
                    th.printStackTrace();
                }
            }
        }
        return fVarA;
    }

    public final void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            new File(b(3) + File.separator + str + ".0").delete();
        } catch (Throwable unused) {
        }
    }
}
