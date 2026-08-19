package com.anythink.core.common.res;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.x;
import com.anythink.core.common.res.a;
import com.anythink.core.common.v.n;
import com.anythink.core.common.v.v;
import com.baidu.mobads.sdk.internal.bn;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static final String f7446a = "about:blank";

    /* renamed from: d, reason: collision with root package name */
    public static final String f7447d = "foldername";

    /* renamed from: f, reason: collision with root package name */
    private static final String f7448f = "anythink_internal_resouce";

    /* renamed from: g, reason: collision with root package name */
    private static final String f7449g = "anythink_custom_resouce";

    /* renamed from: h, reason: collision with root package name */
    private static final String f7450h = "anythink_internal_extra_resource";

    /* renamed from: i, reason: collision with root package name */
    private static final String f7451i = "anythink_internal_video_resource";

    /* renamed from: j, reason: collision with root package name */
    private static final String f7452j = "anythink_internal_html_resouce";

    /* renamed from: k, reason: collision with root package name */
    private static final String f7453k = "anythink_internal_html_template";

    /* renamed from: l, reason: collision with root package name */
    private static volatile d f7454l;

    /* renamed from: m, reason: collision with root package name */
    private Context f7458m;

    /* renamed from: n, reason: collision with root package name */
    private File f7459n;

    /* renamed from: e, reason: collision with root package name */
    private final String f7457e = getClass().getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    ConcurrentHashMap<Integer, a> f7455b = new ConcurrentHashMap<>();

    /* renamed from: c, reason: collision with root package name */
    final long f7456c = bn.f11192e;

    private d(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f7458m = applicationContext;
        this.f7459n = v.a(applicationContext);
    }

    public static d a(Context context) {
        if (f7454l == null) {
            synchronized (d.class) {
                try {
                    if (f7454l == null) {
                        f7454l = new d(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f7454l;
    }

    public static void b() {
        try {
            long jE = s.b().e(1);
            String strA = a(s.b().g()).a(1);
            long jA = v.a(strA);
            if (jA <= 0 || jA <= jE * 1.5d) {
                return;
            }
            File[] fileArrListFiles = new File(strA).listFiles();
            ArrayList arrayList = new ArrayList();
            if (fileArrListFiles != null) {
                Collections.addAll(arrayList, fileArrListFiles);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (arrayList.size() > 0) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    File file = (File) arrayList.get(i2);
                    if (jCurrentTimeMillis - file.lastModified() > bn.f11192e) {
                        try {
                            file.delete();
                        } catch (Throwable unused) {
                        }
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private String c() {
        return this.f7459n.getAbsolutePath();
    }

    private void d(int i2, String str) {
        File file;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (i2 != 4) {
                file = new File(a(i2) + File.separator + str + ".0");
            } else {
                file = new File(a(i2) + File.separator + str);
            }
            file.delete();
        } catch (Throwable unused) {
        }
    }

    private static String c(int i2, String str) {
        if (i2 != 4) {
            if (i2 == 5) {
                return str + ".zip";
            }
            if (i2 != 6) {
                return str + ".0";
            }
        }
        return str;
    }

    private String a(String str, x xVar, w wVar) {
        FileOutputStream fileOutputStream;
        byte[] bytes;
        File file = new File(this.f7459n, f7452j);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, xVar.f4486f + "_" + wVar.i() + ".html");
        try {
            bytes = str.getBytes("utf-8");
            fileOutputStream = new FileOutputStream(file2);
        } catch (Throwable unused) {
            fileOutputStream = null;
        }
        try {
            fileOutputStream.write(bytes, 0, bytes.length);
            String string = file2.toURI().toString();
            try {
                fileOutputStream.close();
                return string;
            } catch (Throwable unused2) {
                return string;
            }
        } catch (Throwable unused3) {
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Throwable unused4) {
                }
            }
            return "";
        }
    }

    private File b(x xVar, w wVar) {
        File file = new File(new File(this.f7459n, f7452j), xVar.f4486f + "_" + wVar.i() + ".html");
        if (file.exists()) {
            return file;
        }
        return null;
    }

    private void a(x xVar, w wVar) {
        try {
            File file = new File(new File(this.f7459n, f7452j), xVar.f4486f + "_" + wVar.i() + ".html");
            if (file.exists()) {
                file.delete();
            }
        } catch (Throwable unused) {
        }
    }

    private boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new File(b(5, str)).exists();
    }

    public final String b(int i2, String str) {
        return a(i2) + File.separator + c(i2, str);
    }

    public final void a() {
        File[] fileArrListFiles;
        try {
            File file = new File(this.f7459n, f7452j);
            if (!file.exists() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 0) {
                return;
            }
            for (File file2 : fileArrListFiles) {
                try {
                    if (file2.isFile() && System.currentTimeMillis() - file2.lastModified() > 86400000) {
                        file2.delete();
                    }
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(int r6, java.lang.String r7, java.io.InputStream r8) throws java.lang.Throwable {
        /*
            r5 = this;
            r0 = 0
            if (r7 == 0) goto L7c
            if (r8 != 0) goto L7
            goto L7c
        L7:
            java.lang.String r1 = r5.a(r6)
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
            com.anythink.core.common.res.a r6 = r5.a(r6, r2)
            if (r6 == 0) goto L7c
            r1 = 0
            com.anythink.core.common.res.a$c r2 = r6.a(r7)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L61
            if (r2 != 0) goto L53
            com.anythink.core.common.res.a$a r6 = r6.b(r7)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L61
            if (r6 == 0) goto L5a
            java.io.OutputStream r1 = r6.a(r0)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4f
            r7 = 2048(0x800, float:2.87E-42)
            byte[] r7 = new byte[r7]     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4f
        L3b:
            int r2 = r8.read(r7)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4f
            r3 = -1
            if (r2 == r3) goto L48
            r1.write(r7, r0, r2)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4f
            goto L3b
        L46:
            r6 = move-exception
            goto L71
        L48:
            r6.a()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4f
            r1.close()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4f
            goto L5a
        L4f:
            r4 = r1
            r1 = r6
            r6 = r4
            goto L62
        L53:
            java.io.InputStream r6 = r2.a()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L61
            r6.close()     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L61
        L5a:
            if (r1 == 0) goto L5f
            r1.close()     // Catch: java.io.IOException -> L5f
        L5f:
            r0 = 1
            goto L7c
        L61:
            r6 = r1
        L62:
            if (r1 == 0) goto L77
            r1.b()     // Catch: java.lang.Throwable -> L68 java.lang.Exception -> L6c
            goto L77
        L68:
            r7 = move-exception
            r1 = r6
            r6 = r7
            goto L71
        L6c:
            r7 = move-exception
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L68
            goto L77
        L71:
            if (r1 == 0) goto L76
            r1.close()     // Catch: java.io.IOException -> L76
        L76:
            throw r6
        L77:
            if (r6 == 0) goto L7c
            r6.close()     // Catch: java.io.IOException -> L7c
        L7c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.res.d.a(int, java.lang.String, java.io.InputStream):boolean");
    }

    public final FileInputStream a(int i2, String str) throws Throwable {
        InputStream inputStreamA;
        if (i2 != 4) {
            String strA = a(i2);
            if (TextUtils.isEmpty(strA)) {
                return null;
            }
            File file = new File(strA);
            if (!file.exists()) {
                file.mkdirs();
            }
            a aVarA = a(i2, file);
            if (aVarA != null) {
                try {
                    a.c cVarA = aVarA.a(str);
                    if (cVarA != null && (inputStreamA = cVarA.a()) != null) {
                        return (FileInputStream) inputStreamA;
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

    private synchronized a a(int i2, File file) {
        a aVarA;
        aVarA = this.f7455b.get(Integer.valueOf(i2));
        if (aVarA == null) {
            try {
                aVarA = a.a(file, s.b().e(i2));
                this.f7455b.put(Integer.valueOf(i2), aVarA);
            } catch (Throwable th) {
                if (s.b().G()) {
                    Log.e(this.f7457e, "Create DiskCache error.");
                    th.printStackTrace();
                }
            }
        }
        return aVarA;
    }

    public final String a(int i2) {
        String str;
        if (i2 == 1) {
            str = f7448f;
        } else if (i2 == 3) {
            str = f7450h;
        } else if (i2 == 4) {
            str = f7451i;
        } else if (i2 != 5 && i2 != 6) {
            str = f7449g;
        } else {
            str = f7453k;
        }
        return new File(this.f7459n, str).getAbsolutePath();
    }

    public final String a(String str) {
        String strB = b(6, n.a(str));
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
}
