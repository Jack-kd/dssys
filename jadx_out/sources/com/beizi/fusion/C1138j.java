package com.beizi.fusion;

import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.umeng.analytics.pro.bv;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* renamed from: com.beizi.fusion.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1138j implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14511a;

    /* renamed from: b, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f14512b;

    /* renamed from: com.beizi.fusion.j$b */
    public static class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final Throwable f14513a;

        /* renamed from: b, reason: collision with root package name */
        private final Context f14514b;

        private boolean a(String str) {
            return str.contains("biz.beizi.adn") || str.contains("xyz.adscope.common");
        }

        private void b(String str) {
            if (TextUtils.isEmpty(str) || !a(str)) {
                return;
            }
            p0.a(this.f14514b, C1138j.b(m0.a()), "asnpCause", true);
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            String strA = a(this.f14513a);
            b(strA);
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strA2 = a();
            try {
                if (TextUtils.isEmpty(strA2)) {
                    return;
                }
                a(String.format(strA2, Thread.currentThread().getId() + bv.aI + qn.b(), Long.valueOf(jCurrentTimeMillis)), jCurrentTimeMillis, strA);
            } catch (IOException e2) {
                rm.a(e2);
            }
        }

        private b(Context context, Throwable th) {
            this.f14514b = context;
            this.f14513a = th;
        }

        private String a() {
            File fileA = e8.a(this.f14514b);
            if (fileA == null) {
                return "";
            }
            String str = fileA.getPath() + "/AdScope/crash/log/";
            File file = new File(str);
            if (!file.exists()) {
                try {
                    file.mkdirs();
                } catch (Exception unused) {
                    return "";
                }
            }
            return str + "asnp_crash_%s_%d.trace";
        }

        private String a(Throwable th) {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
                cause.printStackTrace(printWriter);
            }
            printWriter.close();
            return stringWriter.toString();
        }

        private void a(String str, long j2, String str2) throws Throwable {
            e8.a(str, j2, str2);
        }
    }

    public C1138j(Context context) {
        this.f14511a = context.getApplicationContext();
    }

    private void b(Throwable th) throws InterruptedException {
        rm.b("ASNPCrashHandler", "handle uncaught exception..." + th.getMessage());
        a(th);
    }

    public static boolean c(Context context) {
        return p0.b(context, b(m0.a()), "asnpCause");
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) throws InterruptedException {
        b(th);
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f14512b;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            Process.killProcess(Process.myPid());
        }
    }

    public void a() {
        this.f14512b = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(String str) {
        return String.format("asnpCrash_%s", str);
    }

    private void a(Throwable th) throws InterruptedException {
        Thread thread = new Thread(new b(this.f14511a, th));
        thread.setPriority(10);
        thread.start();
        try {
            thread.join(1000L);
        } catch (InterruptedException e2) {
            rm.a(e2);
        }
    }

    public static List b(Context context) throws Throwable {
        File[] fileArrListFiles;
        final File fileA = a(context);
        if (fileA == null || !fileA.exists() || (fileArrListFiles = fileA.listFiles(new FileFilter() { // from class: com.beizi.fusion.K
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                return C1138j.b(file);
            }
        })) == null || fileArrListFiles.length <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (File file : fileArrListFiles) {
            if (file.exists()) {
                String strB = e8.b(file);
                if (!TextUtils.isEmpty(strB)) {
                    arrayList.add(new j6(strB, a(file)));
                }
            }
        }
        Runnable runnable = new Runnable() { // from class: com.beizi.fusion.L
            @Override // java.lang.Runnable
            public final void run() {
                e8.a(fileA, (Set) null);
            }
        };
        hb hbVar = (hb) fn.a().b(context);
        if (hbVar != null) {
            hbVar.a(runnable);
        }
        return arrayList;
    }

    private static File a(Context context) {
        File fileA = e8.a(context);
        if (fileA == null) {
            return null;
        }
        File file = new File(fileA.getPath() + "/AdScope/crash/log/");
        if (file.exists() && file.isDirectory()) {
            return file;
        }
        return null;
    }

    private static String a(File file) {
        if (file != null) {
            String name = file.getName();
            if (!TextUtils.isEmpty(name)) {
                return name.substring(name.lastIndexOf("_") + 1, name.lastIndexOf(com.anythink.core.common.d.i.f2495E));
            }
            return "";
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean b(File file) {
        String name = file.getName();
        return !TextUtils.isEmpty(name) && name.endsWith(".trace");
    }
}
