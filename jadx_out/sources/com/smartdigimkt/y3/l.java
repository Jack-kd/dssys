package com.smartdigimkt.y3;

import android.content.Context;
import com.smartdigimkt.sdk.core.SDKContext;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
public final class l {

    /* renamed from: m, reason: collision with root package name */
    public static volatile l f45220m;

    /* renamed from: f, reason: collision with root package name */
    public Context f45226f;

    /* renamed from: g, reason: collision with root package name */
    public File f45227g;

    /* renamed from: h, reason: collision with root package name */
    public AtomicInteger f45228h;

    /* renamed from: a, reason: collision with root package name */
    public int f45221a = 5;

    /* renamed from: b, reason: collision with root package name */
    public int f45222b = 10;

    /* renamed from: c, reason: collision with root package name */
    public long f45223c = com.anythink.core.common.g.c.f3507a;

    /* renamed from: d, reason: collision with root package name */
    public String f45224d = "";

    /* renamed from: e, reason: collision with root package name */
    public String f45225e = "";

    /* renamed from: i, reason: collision with root package name */
    public boolean f45229i = false;

    /* renamed from: j, reason: collision with root package name */
    public final i f45230j = new i(this);

    /* renamed from: k, reason: collision with root package name */
    public final j f45231k = new j(this);

    /* renamed from: l, reason: collision with root package name */
    public final Object f45232l = new Object();

    public static l a() {
        if (f45220m == null) {
            synchronized (l.class) {
                try {
                    if (f45220m == null) {
                        f45220m = new l();
                    }
                } finally {
                }
            }
        }
        return f45220m;
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00eb, code lost:
    
        if (r2 == null) goto L100;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.smartdigimkt.q4.d] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.smartdigimkt.q4.d] */
    /* JADX WARN: Type inference failed for: r2v12, types: [com.smartdigimkt.l4.b, com.smartdigimkt.y3.i] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v15, types: [com.smartdigimkt.l4.b, com.smartdigimkt.y3.i] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void b() {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.y3.l.b():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00ed A[Catch: all -> 0x0094, Error -> 0x0147, OutOfMemoryError | StackOverflowError -> 0x0151, OutOfMemoryError | StackOverflowError -> 0x0151, Exception -> 0x016a, TryCatch #1 {OutOfMemoryError | StackOverflowError -> 0x0151, blocks: (B:10:0x001d, B:12:0x0077, B:14:0x008a, B:17:0x0097, B:19:0x009f, B:29:0x00d3, B:29:0x00d3, B:39:0x00e9, B:39:0x00e9, B:41:0x00ed, B:41:0x00ed, B:42:0x00f4, B:42:0x00f4, B:46:0x0103, B:46:0x0103, B:50:0x0114, B:50:0x0114, B:53:0x011b, B:53:0x011b, B:56:0x0124, B:56:0x0124, B:59:0x012d, B:59:0x012d, B:49:0x0112, B:49:0x0112, B:45:0x0101, B:45:0x0101, B:35:0x00e0, B:35:0x00e0, B:36:0x00e3, B:36:0x00e3, B:38:0x00e6, B:38:0x00e6), top: B:93:0x001d, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0101 A[Catch: all -> 0x0094, Error -> 0x0147, OutOfMemoryError | StackOverflowError -> 0x0151, OutOfMemoryError | StackOverflowError -> 0x0151, Exception -> 0x016a, TryCatch #1 {OutOfMemoryError | StackOverflowError -> 0x0151, blocks: (B:10:0x001d, B:12:0x0077, B:14:0x008a, B:17:0x0097, B:19:0x009f, B:29:0x00d3, B:29:0x00d3, B:39:0x00e9, B:39:0x00e9, B:41:0x00ed, B:41:0x00ed, B:42:0x00f4, B:42:0x00f4, B:46:0x0103, B:46:0x0103, B:50:0x0114, B:50:0x0114, B:53:0x011b, B:53:0x011b, B:56:0x0124, B:56:0x0124, B:59:0x012d, B:59:0x012d, B:49:0x0112, B:49:0x0112, B:45:0x0101, B:45:0x0101, B:35:0x00e0, B:35:0x00e0, B:36:0x00e3, B:36:0x00e3, B:38:0x00e6, B:38:0x00e6), top: B:93:0x001d, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0112 A[Catch: all -> 0x0094, Error -> 0x0147, OutOfMemoryError | StackOverflowError -> 0x0151, OutOfMemoryError | StackOverflowError -> 0x0151, Exception -> 0x016a, TryCatch #1 {OutOfMemoryError | StackOverflowError -> 0x0151, blocks: (B:10:0x001d, B:12:0x0077, B:14:0x008a, B:17:0x0097, B:19:0x009f, B:29:0x00d3, B:29:0x00d3, B:39:0x00e9, B:39:0x00e9, B:41:0x00ed, B:41:0x00ed, B:42:0x00f4, B:42:0x00f4, B:46:0x0103, B:46:0x0103, B:50:0x0114, B:50:0x0114, B:53:0x011b, B:53:0x011b, B:56:0x0124, B:56:0x0124, B:59:0x012d, B:59:0x012d, B:49:0x0112, B:49:0x0112, B:45:0x0101, B:45:0x0101, B:35:0x00e0, B:35:0x00e0, B:36:0x00e3, B:36:0x00e3, B:38:0x00e6, B:38:0x00e6), top: B:93:0x001d, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x013f A[Catch: all -> 0x0145, TryCatch #4 {all -> 0x0145, blocks: (B:4:0x0007, B:8:0x000f, B:60:0x013b, B:62:0x013f, B:80:0x0173, B:81:0x0175, B:73:0x015e, B:75:0x0162, B:76:0x0169, B:65:0x0147, B:67:0x014b, B:70:0x0154, B:72:0x0158, B:77:0x016a, B:79:0x016e, B:83:0x0177, B:10:0x001d, B:12:0x0077, B:14:0x008a, B:17:0x0097, B:19:0x009f, B:29:0x00d3, B:39:0x00e9, B:41:0x00ed, B:42:0x00f4, B:46:0x0103, B:50:0x0114, B:53:0x011b, B:56:0x0124, B:59:0x012d, B:49:0x0112, B:45:0x0101, B:35:0x00e0, B:36:0x00e3, B:38:0x00e6, B:69:0x0151), top: B:95:0x0007, inners: #2, #6, #8 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.y3.l.a(android.content.Context):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x006f, code lost:
    
        if (r0 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0075, code lost:
    
        if (r0 == null) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007f, code lost:
    
        if (r0 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0081, code lost:
    
        r0.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(com.smartdigimkt.q3.c r5, boolean r6) {
        /*
            r4 = this;
            monitor-enter(r4)
            java.io.File r0 = r4.f45227g     // Catch: java.lang.Throwable -> La
            if (r0 == 0) goto Ld
            java.util.concurrent.atomic.AtomicInteger r0 = r4.f45228h     // Catch: java.lang.Throwable -> La
            if (r0 != 0) goto L18
            goto Ld
        La:
            r5 = move-exception
            goto L8b
        Ld:
            com.smartdigimkt.sdk.core.SDKContext r0 = com.smartdigimkt.sdk.core.SDKContext.getInstance()     // Catch: java.lang.Throwable -> La
            android.content.Context r0 = r0.d()     // Catch: java.lang.Throwable -> La
            r4.a(r0)     // Catch: java.lang.Throwable -> La
        L18:
            java.io.File r0 = r4.f45227g     // Catch: java.lang.Throwable -> La
            if (r0 == 0) goto L89
            java.util.concurrent.atomic.AtomicInteger r0 = r4.f45228h     // Catch: java.lang.Throwable -> La
            if (r0 != 0) goto L22
            goto L89
        L22:
            com.smartdigimkt.z4.d r0 = com.smartdigimkt.z4.d.c()     // Catch: java.lang.Throwable -> La
            com.smartdigimkt.a5.a r0 = r0.a()     // Catch: java.lang.Throwable -> La
            if (r0 == 0) goto L3d
            int r1 = r0.f39385p     // Catch: java.lang.Throwable -> La
            if (r1 == 0) goto L31
            goto L33
        L31:
            int r1 = r4.f45221a     // Catch: java.lang.Throwable -> La
        L33:
            r4.f45221a = r1     // Catch: java.lang.Throwable -> La
            int r1 = r1 * 2
            r4.f45222b = r1     // Catch: java.lang.Throwable -> La
            long r0 = r0.f39386q     // Catch: java.lang.Throwable -> La
            r4.f45223c = r0     // Catch: java.lang.Throwable -> La
        L3d:
            r0 = 0
            org.json.JSONObject r5 = r5.a()     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L6f java.lang.Throwable -> L72 java.lang.Exception -> L7f
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L6f java.lang.Throwable -> L72 java.lang.Exception -> L7f
            java.io.FileWriter r1 = new java.io.FileWriter     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L6f java.lang.Throwable -> L72 java.lang.Exception -> L7f
            java.io.File r2 = r4.f45227g     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L6f java.lang.Throwable -> L72 java.lang.Exception -> L7f
            r3 = 1
            r1.<init>(r2, r3)     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L6f java.lang.Throwable -> L72 java.lang.Exception -> L7f
            r1.append(r5)     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            java.lang.String r5 = "\n"
            r1.append(r5)     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            r1.flush()     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            r1.close()     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            java.util.concurrent.atomic.AtomicInteger r5 = r4.f45228h     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            r5.incrementAndGet()     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            r1.close()     // Catch: java.lang.Throwable -> La java.io.IOException -> L84
            goto L84
        L65:
            r5 = move-exception
            goto L79
        L67:
            r0 = r1
            goto L6f
        L69:
            r0 = r1
            goto L72
        L6b:
            r0 = r1
            goto L7f
        L6d:
            r5 = move-exception
            goto L78
        L6f:
            if (r0 == 0) goto L84
            goto L81
        L72:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L6d
            if (r0 == 0) goto L84
            goto L81
        L78:
            r1 = r0
        L79:
            if (r1 == 0) goto L7e
            r1.close()     // Catch: java.lang.Throwable -> La java.io.IOException -> L7e
        L7e:
            throw r5     // Catch: java.lang.Throwable -> La
        L7f:
            if (r0 == 0) goto L84
        L81:
            r0.close()     // Catch: java.lang.Throwable -> La java.io.IOException -> L84
        L84:
            r4.a(r6)     // Catch: java.lang.Throwable -> La
            monitor-exit(r4)
            return
        L89:
            monitor-exit(r4)
            return
        L8b:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> La
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.y3.l.a(com.smartdigimkt.q3.c, boolean):void");
    }

    public final synchronized void a(boolean z2) {
        String line;
        AtomicInteger atomicInteger;
        try {
            if (this.f45226f == null) {
                return;
            }
            if (SDKContext.getInstance().f44116e) {
                if (!this.f45229i && (z2 || ((atomicInteger = this.f45228h) != null && atomicInteger.get() >= this.f45221a))) {
                    this.f45229i = true;
                    BufferedReader bufferedReader = null;
                    try {
                        try {
                            try {
                                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(this.f45227g));
                                try {
                                    ArrayList arrayList = new ArrayList();
                                    for (int i2 = 0; i2 < this.f45222b && (line = bufferedReader2.readLine()) != null; i2++) {
                                        arrayList.add(line);
                                    }
                                    com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
                                    if (aVarA != null) {
                                        int i3 = aVarA.f39340B;
                                        if (i3 != 1) {
                                            new com.smartdigimkt.q4.d(i3, arrayList).a(0, (com.smartdigimkt.l4.b) this.f45230j);
                                        } else {
                                            com.smartdigimkt.s4.a aVar = new com.smartdigimkt.s4.a(arrayList);
                                            String str = aVarA.f39343E;
                                            aVar.f43140a = 1;
                                            aVar.f43141b = str;
                                            aVar.a(this.f45231k);
                                        }
                                    } else {
                                        new com.smartdigimkt.q4.d(0, arrayList).a(0, (com.smartdigimkt.l4.b) this.f45230j);
                                    }
                                    bufferedReader2.close();
                                } catch (Exception unused) {
                                    bufferedReader = bufferedReader2;
                                    this.f45229i = false;
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                } catch (OutOfMemoryError | StackOverflowError unused2) {
                                    bufferedReader = bufferedReader2;
                                    this.f45229i = false;
                                    System.gc();
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                } catch (Throwable unused3) {
                                    bufferedReader = bufferedReader2;
                                    this.f45229i = false;
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                }
                            } finally {
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (Exception unused4) {
                                    }
                                }
                            }
                        } catch (Exception unused5) {
                        } catch (OutOfMemoryError | StackOverflowError unused6) {
                        } catch (Throwable unused7) {
                        }
                    } catch (Exception unused8) {
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x006d, code lost:
    
        if (r0 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0070, code lost:
    
        if (r0 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0076, code lost:
    
        if (r0 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0080, code lost:
    
        if (r0 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0082, code lost:
    
        r0.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(int r7) {
        /*
            r6 = this;
            monitor-enter(r6)
            r0 = 0
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L70 java.lang.Throwable -> L73 java.lang.Exception -> L80
            java.lang.String r2 = r6.f45225e     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L70 java.lang.Throwable -> L73 java.lang.Exception -> L80
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L70 java.lang.Throwable -> L73 java.lang.Exception -> L80
            boolean r2 = r1.exists()     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L70 java.lang.Throwable -> L73 java.lang.Exception -> L80
            if (r2 != 0) goto L12
            r1.createNewFile()     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L70 java.lang.Throwable -> L73 java.lang.Exception -> L80
        L12:
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L70 java.lang.Throwable -> L73 java.lang.Exception -> L80
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L70 java.lang.Throwable -> L73 java.lang.Exception -> L80
            java.io.File r4 = r6.f45227g     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L70 java.lang.Throwable -> L73 java.lang.Exception -> L80
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L70 java.lang.Throwable -> L73 java.lang.Exception -> L80
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L6d java.lang.Error -> L70 java.lang.Throwable -> L73 java.lang.Exception -> L80
            java.io.FileWriter r0 = new java.io.FileWriter     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            r3 = 0
            r4 = r3
        L25:
            java.lang.String r5 = r2.readLine()     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            if (r5 == 0) goto L38
            int r4 = r4 + 1
            if (r4 <= r7) goto L25
            r0.append(r5)     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            java.lang.String r5 = "\n"
            r0.append(r5)     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            goto L25
        L38:
            r0.flush()     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            r0.close()     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            r2.close()     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            java.util.concurrent.atomic.AtomicInteger r0 = r6.f45228h     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            int r4 = r0.get()     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            int r4 = r4 - r7
            if (r4 >= 0) goto L4b
            goto L52
        L4b:
            java.util.concurrent.atomic.AtomicInteger r3 = r6.f45228h     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            int r3 = r3.get()     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            int r3 = r3 - r7
        L52:
            r0.set(r3)     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            java.io.File r7 = r6.f45227g     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            r7.delete()     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            java.io.File r7 = r6.f45227g     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            r1.renameTo(r7)     // Catch: java.lang.Throwable -> L65 java.lang.Error -> L67 java.lang.Throwable -> L69 java.lang.Exception -> L6b
            r2.close()     // Catch: java.lang.Throwable -> L63 java.io.IOException -> L88
            goto L88
        L63:
            r7 = move-exception
            goto L86
        L65:
            r0 = r2
            goto L6d
        L67:
            r0 = r2
            goto L70
        L69:
            r0 = r2
            goto L73
        L6b:
            r0 = r2
            goto L80
        L6d:
            if (r0 == 0) goto L88
            goto L82
        L70:
            if (r0 == 0) goto L88
            goto L82
        L73:
            java.lang.System.gc()     // Catch: java.lang.Throwable -> L79
            if (r0 == 0) goto L88
            goto L82
        L79:
            r7 = move-exception
            if (r0 == 0) goto L7f
            r0.close()     // Catch: java.lang.Throwable -> L63 java.io.IOException -> L7f
        L7f:
            throw r7     // Catch: java.lang.Throwable -> L63
        L80:
            if (r0 == 0) goto L88
        L82:
            r0.close()     // Catch: java.lang.Throwable -> L63 java.io.IOException -> L88
            goto L88
        L86:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L63
            throw r7
        L88:
            monitor-exit(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.y3.l.a(int):void");
    }

    public final synchronized void a(ArrayList arrayList) {
        BufferedWriter bufferedWriter;
        if (this.f45227g != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            arrayList.size();
            BufferedReader bufferedReader = null;
            try {
                try {
                    File file = new File(this.f45225e);
                    if (file.exists()) {
                        file.delete();
                    }
                    file.createNewFile();
                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader(this.f45227g));
                    try {
                        bufferedWriter = new BufferedWriter(new FileWriter(file));
                        int i2 = 0;
                        for (int i3 = 0; i3 < size; i3++) {
                            try {
                                if (bufferedReader2.readLine() == null) {
                                    break;
                                }
                            } catch (Throwable unused) {
                                bufferedReader = bufferedReader2;
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                if (bufferedWriter != null) {
                                    bufferedWriter.close();
                                }
                            }
                        }
                        int size2 = arrayList.size();
                        while (i2 < size2) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            bufferedWriter.write((String) obj);
                            bufferedWriter.newLine();
                        }
                        while (true) {
                            String line = bufferedReader2.readLine();
                            if (line != null) {
                                bufferedWriter.write(line);
                                bufferedWriter.newLine();
                            } else {
                                try {
                                    break;
                                } catch (Throwable unused2) {
                                }
                            }
                        }
                        bufferedReader2.close();
                        bufferedWriter.close();
                        this.f45227g.delete();
                        file.renameTo(this.f45227g);
                        bufferedReader2.close();
                        bufferedWriter.close();
                    } catch (Throwable unused3) {
                        bufferedWriter = null;
                    }
                } catch (Throwable unused4) {
                }
            } catch (Throwable unused5) {
                bufferedWriter = null;
            }
        }
    }
}
