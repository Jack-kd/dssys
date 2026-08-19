package com.kwad.sdk.crash.report;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.crash.model.message.ExceptionMessage;
import com.kwad.sdk.crash.model.message.MemoryInfo;
import com.kwad.sdk.crash.model.message.ThreadInfo;
import com.kwad.sdk.utils.y;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes4.dex */
public final class f extends d {
    private static void b(File file, ExceptionMessage exceptionMessage) throws Throwable {
        BufferedReader bufferedReader;
        try {
            MemoryInfo memoryInfo = new MemoryInfo(exceptionMessage.mMemoryInfo);
            ArrayList arrayList = new ArrayList();
            BufferedReader bufferedReader2 = null;
            try {
                try {
                    bufferedReader = new BufferedReader(new FileReader(file));
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e2) {
                e = e2;
            }
            try {
                ThreadInfo threadInfo = new ThreadInfo();
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        memoryInfo.mJavaThreads = arrayList;
                        exceptionMessage.mMemoryInfo = memoryInfo.toJson().toString();
                        com.kwad.sdk.crash.utils.b.closeQuietly(bufferedReader);
                        return;
                    }
                    if (line.isEmpty()) {
                        arrayList.add(threadInfo);
                        threadInfo = new ThreadInfo();
                    } else if (line.startsWith("at ") || line.startsWith("(no ")) {
                        if (threadInfo.mTrace != null) {
                            line = threadInfo.mTrace + line;
                        }
                        threadInfo.mTrace = line;
                        threadInfo.mTrace += "#";
                    } else {
                        threadInfo.mName = line;
                    }
                }
            } catch (IOException e3) {
                e = e3;
                bufferedReader2 = bufferedReader;
                com.kwad.sdk.core.d.c.printStackTraceOnly(e);
                com.kwad.sdk.crash.utils.b.closeQuietly(bufferedReader2);
            } catch (Throwable th2) {
                th = th2;
                bufferedReader2 = bufferedReader;
                com.kwad.sdk.crash.utils.b.closeQuietly(bufferedReader2);
                throw th;
            }
        } catch (Exception e4) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e4);
        }
    }

    @Override // com.kwad.sdk.crash.report.d
    public final void D(File file) {
        com.kwad.sdk.core.d.c.d("AnrAndNativeAdExceptionCollector", "reportException dir =" + file);
        File[] fileArrListFiles = file.listFiles(new FileFilter() { // from class: com.kwad.sdk.crash.report.f.1
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                return file2.getName().endsWith(".dump");
            }
        });
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                a(file2, (CountDownLatch) null);
            }
        }
    }

    @Override // com.kwad.sdk.crash.report.d
    public final ExceptionMessage a(@NonNull File file, File file2, File file3, File file4, File file5) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.kwad.sdk.crash.model.message.ExceptionMessage a(@androidx.annotation.NonNull java.io.File r8, java.io.File r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.crash.report.f.a(java.io.File, java.io.File, java.lang.String):com.kwad.sdk.crash.model.message.ExceptionMessage");
    }

    @Override // com.kwad.sdk.crash.report.d
    public final void a(File file, @Nullable CountDownLatch countDownLatch) {
        String strGI = com.kwad.sdk.crash.utils.g.gI(file.getPath());
        File file2 = new File(strGI + ".msg");
        File file3 = new File(strGI + ".log");
        File file4 = new File(strGI + ".blog");
        File file5 = new File(strGI + ".jtrace");
        File file6 = new File(strGI + ".minfo");
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        try {
            ExceptionMessage exceptionMessageA = a(file, file3, strGI);
            if (exceptionMessageA == null) {
                try {
                    return;
                } catch (Throwable th) {
                    return;
                }
            }
            com.kwad.sdk.core.d.c.d("ExceptionJavaCrashReporter", "message.mCrashSource=" + exceptionMessageA.mCrashSource);
            if (exceptionMessageA.mCrashSource == 2) {
                try {
                    y.delete(file.getPath());
                    y.delete(file3.getPath());
                    y.delete(file4.getPath());
                    y.delete(file2.getPath());
                    y.delete(file5.getPath());
                    y.delete(file6.getPath());
                    int size = arrayList.size();
                    while (i2 < size) {
                        Object obj = arrayList.get(i2);
                        i2++;
                        y.delete(((File) obj).getPath());
                    }
                    com.kwad.sdk.crash.utils.g.G(com.kwad.sdk.crash.handler.b.sBackupDir);
                    return;
                } catch (Throwable th2) {
                    com.kwad.sdk.core.d.c.printStackTraceOnly(th2);
                    return;
                }
            }
            this.mUploader.a(exceptionMessageA, countDownLatch);
            com.kwad.sdk.core.d.c.d("ExceptionJavaCrashReporter", " java crash 不上传文件");
            try {
                y.delete(file.getPath());
                y.delete(file3.getPath());
                y.delete(file4.getPath());
                y.delete(file2.getPath());
                y.delete(file5.getPath());
                y.delete(file6.getPath());
                int size2 = arrayList.size();
                while (i2 < size2) {
                    Object obj2 = arrayList.get(i2);
                    i2++;
                    y.delete(((File) obj2).getPath());
                }
                com.kwad.sdk.crash.utils.g.G(com.kwad.sdk.crash.handler.b.sBackupDir);
            } catch (Throwable th3) {
                com.kwad.sdk.core.d.c.printStackTraceOnly(th3);
            }
        } catch (Throwable th4) {
            try {
                com.kwad.sdk.core.d.c.printStackTraceOnly(th4);
                com.kwad.sdk.crash.utils.g.x(th4);
                try {
                    y.delete(file.getPath());
                    y.delete(file3.getPath());
                    y.delete(file4.getPath());
                    y.delete(file2.getPath());
                    y.delete(file5.getPath());
                    y.delete(file6.getPath());
                    int size3 = arrayList.size();
                    while (i2 < size3) {
                        Object obj3 = arrayList.get(i2);
                        i2++;
                        y.delete(((File) obj3).getPath());
                    }
                    com.kwad.sdk.crash.utils.g.G(com.kwad.sdk.crash.handler.b.sBackupDir);
                } catch (Throwable th5) {
                    com.kwad.sdk.core.d.c.printStackTraceOnly(th5);
                }
            } finally {
                try {
                    y.delete(file.getPath());
                    y.delete(file3.getPath());
                    y.delete(file4.getPath());
                    y.delete(file2.getPath());
                    y.delete(file5.getPath());
                    y.delete(file6.getPath());
                    int size4 = arrayList.size();
                    while (i2 < size4) {
                        Object obj4 = arrayList.get(i2);
                        i2++;
                        y.delete(((File) obj4).getPath());
                    }
                    com.kwad.sdk.crash.utils.g.G(com.kwad.sdk.crash.handler.b.sBackupDir);
                } catch (Throwable th6) {
                    com.kwad.sdk.core.d.c.printStackTraceOnly(th6);
                }
            }
        }
    }
}
