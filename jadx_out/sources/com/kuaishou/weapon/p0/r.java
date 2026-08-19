package com.kuaishou.weapon.p0;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import android.util.Pair;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public class r {

    /* renamed from: c, reason: collision with root package name */
    private static r f31226c;

    /* renamed from: d, reason: collision with root package name */
    private static Application f31227d;

    /* renamed from: a, reason: collision with root package name */
    public boolean f31231a;

    /* renamed from: e, reason: collision with root package name */
    private String f31232e;

    /* renamed from: f, reason: collision with root package name */
    private static Random f31228f = new Random();

    /* renamed from: g, reason: collision with root package name */
    private static Map<String, s> f31229g = new ConcurrentHashMap();

    /* renamed from: h, reason: collision with root package name */
    private static Map<String, s> f31230h = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public static List<Integer> f31225b = new ArrayList();

    private r() {
    }

    public static r a(Context context, boolean z2) {
        try {
            if (f31226c == null) {
                f31227d = (Application) context.getApplicationContext();
                f31226c = new r();
            }
        } catch (Throwable unused) {
        }
        return f31226c;
    }

    public static boolean e(String str) {
        try {
            File file = new File(str);
            if (file.exists() && !file.isDirectory()) {
                file.delete();
            }
            if (file.exists()) {
                return true;
            }
            file.mkdirs();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean b(String str) {
        s sVar = f31230h.get(str);
        if (sVar == null) {
            return false;
        }
        f31229g.remove(sVar.f31237e);
        f31230h.remove(str);
        dl.c(sVar.f31245m);
        Application application = f31227d;
        if (application == null) {
            return true;
        }
        dl.c(application.getFileStreamPath(sVar.f31235c).getAbsolutePath());
        return true;
    }

    public s c(String str) {
        try {
            return f31229g.get(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public s d(String str) {
        try {
            return f31230h.get(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static r a() {
        return f31226c;
    }

    public boolean a(s sVar, boolean z2) {
        this.f31231a = z2;
        this.f31232e = sVar.f31236d;
        return a(sVar);
    }

    public Map<String, s> b() {
        return f31230h;
    }

    private synchronized boolean a(s sVar) {
        boolean z2;
        if (sVar != null) {
            if (!TextUtils.isEmpty(sVar.f31237e)) {
                s sVar2 = f31229g.get(sVar.f31237e);
                if (sVar2 != null) {
                    if (sVar2.f31236d.equals(sVar.f31236d)) {
                        return true;
                    }
                    a(sVar2.f31237e);
                }
                try {
                    sVar.f31238f = f31227d;
                    if (sVar.f31248p == 1) {
                        try {
                            try {
                                if (!TextUtils.isEmpty(sVar.f31235c) && !TextUtils.isEmpty(sVar.f31237e)) {
                                    sVar.f31245m = f31227d.getFilesDir().getCanonicalPath() + bg.f30864j + sVar.f31233a;
                                    String str = sVar.f31245m + "/dex";
                                    String str2 = sVar.f31245m + "/lib/" + this.f31232e;
                                    dl.c(sVar.f31245m + "/lib");
                                    String str3 = str2 + ServiceReference.DELIMITER + f31228f.nextInt();
                                    e(str);
                                    dl.a(str, Boolean.FALSE);
                                    e(str3);
                                    a(sVar, str3, str, false);
                                    f31230h.put(sVar.f31235c, sVar);
                                    f31229g.put(sVar.f31237e, sVar);
                                    z2 = false;
                                } else {
                                    throw new RuntimeException("apkPackageName or apkPkgPath is null");
                                }
                            } catch (Throwable unused) {
                                return false;
                            }
                        } catch (Throwable unused2) {
                            a(sVar.f31237e);
                            z2 = true;
                        }
                    } else {
                        z2 = false;
                    }
                    if (sVar.f31248p != 1 || z2) {
                        PackageInfo packageArchiveInfo = sVar.f31250r;
                        if (packageArchiveInfo == null || TextUtils.isEmpty(packageArchiveInfo.packageName) || TextUtils.isEmpty(packageArchiveInfo.versionName)) {
                            packageArchiveInfo = f31227d.getPackageManager().getPackageArchiveInfo(sVar.f31237e, 1);
                        }
                        if (!TextUtils.isEmpty(packageArchiveInfo.packageName) && packageArchiveInfo.packageName.startsWith("com.kuaishou.weapon")) {
                            if (sVar.f31248p != 1 && sVar.f31234b != 1 && !((Boolean) a(sVar.f31242j, sVar.f31237e).first).booleanValue()) {
                                return false;
                            }
                            sVar.f31235c = packageArchiveInfo.packageName;
                            ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
                            sVar.f31247o = applicationInfo.className;
                            sVar.f31236d = packageArchiveInfo.versionName;
                            sVar.f31244l = packageArchiveInfo.activities;
                            sVar.f31249q = applicationInfo.theme;
                            sVar.f31245m = f31227d.getFilesDir().getCanonicalPath() + bg.f30864j + sVar.f31233a;
                            String str4 = sVar.f31245m + "/dex";
                            String str5 = sVar.f31245m + "/lib/" + this.f31232e;
                            dl.c(sVar.f31245m + "/lib");
                            String str6 = str5 + ServiceReference.DELIMITER + f31228f.nextInt();
                            e(str4);
                            dl.a(str4, Boolean.FALSE);
                            e(str6);
                            a(sVar, str6, str4, true);
                            f31230h.put(sVar.f31235c, sVar);
                            f31229g.put(sVar.f31237e, sVar);
                            f31225b.add(Integer.valueOf(sVar.f31233a));
                        } else {
                            throw new Exception("weapon package name check failed");
                        }
                    }
                    return true;
                } catch (Throwable unused3) {
                    a(sVar.f31237e);
                    return false;
                }
            }
        }
        return false;
    }

    private Pair<Boolean, String> a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            File file = new File(str2);
            if (!dl.a(file)) {
                return new Pair<>(Boolean.FALSE, "");
            }
            String strA = f.a(file);
            if (TextUtils.isEmpty(strA)) {
                return new Pair<>(Boolean.FALSE, "");
            }
            if (!strA.equalsIgnoreCase(str)) {
                return new Pair<>(Boolean.FALSE, strA);
            }
            return new Pair<>(Boolean.TRUE, "");
        }
        return new Pair<>(Boolean.FALSE, "");
    }

    public boolean a(String str) {
        s sVar = f31229g.get(str);
        if (sVar == null) {
            return false;
        }
        f31229g.remove(str);
        f31230h.remove(sVar.f31235c);
        dl.c(sVar.f31245m);
        Application application = f31227d;
        if (application == null) {
            return true;
        }
        dl.c(application.getFileStreamPath(sVar.f31235c).getAbsolutePath());
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02c7 A[PHI: r7 r18
      0x02c7: PHI (r7v12 java.lang.StringBuilder) = (r7v10 java.lang.StringBuilder), (r7v15 java.lang.StringBuilder) binds: [B:149:0x02c5, B:158:0x02e4] A[DONT_GENERATE, DONT_INLINE]
      0x02c7: PHI (r18v8 java.io.FileOutputStream) = (r18v6 java.io.FileOutputStream), (r18v9 java.io.FileOutputStream) binds: [B:149:0x02c5, B:158:0x02e4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x03fa A[Catch: all -> 0x0470, TryCatch #9 {all -> 0x0470, blocks: (B:194:0x03d9, B:196:0x03fa, B:198:0x0404, B:202:0x044e, B:203:0x046f, B:200:0x040e), top: B:223:0x03d9, inners: #24 }] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0470 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0473  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0373 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.kuaishou.weapon.p0.s r24, java.lang.String r25, java.lang.String r26, boolean r27) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1153
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kuaishou.weapon.p0.r.a(com.kuaishou.weapon.p0.s, java.lang.String, java.lang.String, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0137 A[EDGE_INSN: B:102:0x0137->B:53:0x0137 BREAK  A[LOOP:2: B:77:0x012c->B:52:0x0132], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0132 A[Catch: all -> 0x0156, LOOP:2: B:77:0x012c->B:52:0x0132, LOOP_END, TryCatch #1 {all -> 0x0156, blocks: (B:50:0x012c, B:52:0x0132, B:53:0x0137, B:55:0x0141, B:56:0x0144), top: B:77:0x012c }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0141 A[Catch: all -> 0x0156, TryCatch #1 {all -> 0x0156, blocks: (B:50:0x012c, B:52:0x0132, B:53:0x0137, B:55:0x0141, B:56:0x0144), top: B:77:0x012c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.kuaishou.weapon.p0.s r17, java.lang.String r18, java.lang.String r19, java.util.HashSet<java.lang.String> r20, byte[] r21, java.lang.StringBuilder r22, boolean r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kuaishou.weapon.p0.r.a(com.kuaishou.weapon.p0.s, java.lang.String, java.lang.String, java.util.HashSet, byte[], java.lang.StringBuilder, boolean):void");
    }
}
