package com.varbto.utils.crash;

import android.content.Context;
import android.util.Log;
import com.varbto.internal.g;
import com.varbto.internal.i;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import k1.h;
import org.json.JSONArray;

/* loaded from: classes5.dex */
public class LoggingCrashRecorder implements CrashRecorder {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f50610a;

    /* renamed from: b, reason: collision with root package name */
    public final File f50611b;

    /* renamed from: c, reason: collision with root package name */
    public final i f50612c;

    public LoggingCrashRecorder(Context context, boolean z2) {
        this.f50610a = z2;
        File file = new File(context.getFilesDir(), "crash_reports");
        this.f50611b = file;
        if (!file.exists()) {
            if (file.mkdirs()) {
                if (h.f51286a) {
                    file.getAbsolutePath();
                }
            } else if (h.f51286a) {
                Log.e("LoggingCrashRecorder", "Failed to create Crash report directory");
            }
        }
        this.f50612c = i.c(context);
    }

    public static void a(File file, CrashReport crashReport, Throwable th) throws IOException {
        FileWriter fileWriter = new FileWriter(file);
        try {
            fileWriter.write("=== Crash Report ===\n");
            fileWriter.write("Time: " + new Date() + "\n");
            StringBuilder sb = new StringBuilder("Error ID: ");
            sb.append(crashReport != null ? crashReport.getErrorId() : "Unknown");
            sb.append("\n");
            fileWriter.write(sb.toString());
            StringBuilder sb2 = new StringBuilder("Category: ");
            sb2.append(crashReport != null ? crashReport.getCategory() : g.f50556e);
            sb2.append("\n");
            fileWriter.write(sb2.toString());
            StringBuilder sb3 = new StringBuilder("Confidence: ");
            sb3.append(crashReport != null ? crashReport.getConfidence() : 0);
            sb3.append("\n");
            fileWriter.write(sb3.toString());
            StringBuilder sb4 = new StringBuilder("MatchedType: ");
            sb4.append(crashReport != null ? crashReport.getMatchedType() : "None");
            sb4.append("\n");
            fileWriter.write(sb4.toString());
            StringBuilder sb5 = new StringBuilder("MatchedPackage: ");
            sb5.append(crashReport != null ? crashReport.getMatchedPackage() : "None");
            sb5.append("\n");
            fileWriter.write(sb5.toString());
            fileWriter.write("Exception: " + th.getClass().getName() + "\n");
            StringBuilder sb6 = new StringBuilder("Message: ");
            sb6.append(th.getMessage() != null ? th.getMessage() : "null");
            sb6.append("\n");
            fileWriter.write(sb6.toString());
            fileWriter.write("\n");
            fileWriter.write("=== Final Trigger Point ===\n");
            fileWriter.write(a(th).concat("\n\n"));
            fileWriter.write("=== Stack Trace (Top) ===\n");
            StackTraceElement[] stackTrace = th.getStackTrace();
            if (stackTrace == null || stackTrace.length <= 0) {
                fileWriter.write("No stack trace information\n");
            } else {
                int iMin = Math.min(stackTrace.length, 64);
                for (int i2 = 0; i2 < iMin; i2++) {
                    StackTraceElement stackTraceElement = stackTrace[i2];
                    fileWriter.write(String.format(Locale.US, "%02d. %s.%s(%s:%d)\n", Integer.valueOf(i2), stackTraceElement.getClassName(), stackTraceElement.getMethodName(), stackTraceElement.getFileName() != null ? stackTraceElement.getFileName() : "Unknown", Integer.valueOf(stackTraceElement.getLineNumber())));
                }
            }
            fileWriter.write("\n");
            fileWriter.write("=== Cause Chain ===\n");
            Throwable cause = th.getCause();
            int i3 = 0;
            while (cause != null) {
                Locale locale = Locale.US;
                fileWriter.write("Cause[" + i3 + "]: " + cause.getClass().getName() + " - " + String.valueOf(cause.getMessage()) + "\n");
                StackTraceElement[] stackTrace2 = cause.getStackTrace();
                int iMin2 = Math.min(stackTrace2 != null ? stackTrace2.length : 0, 32);
                for (int i4 = 0; i4 < iMin2; i4++) {
                    StackTraceElement stackTraceElement2 = stackTrace2[i4];
                    fileWriter.write(String.format(Locale.US, "  %02d. %s.%s(%s:%d)\n", Integer.valueOf(i4), stackTraceElement2.getClassName(), stackTraceElement2.getMethodName(), stackTraceElement2.getFileName() != null ? stackTraceElement2.getFileName() : "Unknown", Integer.valueOf(stackTraceElement2.getLineNumber())));
                }
                fileWriter.write("\n");
                cause = cause.getCause();
                i3++;
            }
            fileWriter.write("=== End of Report ===\n");
            fileWriter.close();
        } catch (Throwable th2) {
            try {
                fileWriter.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    @Override // com.varbto.utils.crash.CrashRecorder
    public void cleanupOldFiles(int i2) {
    }

    @Override // com.varbto.utils.crash.CrashRecorder
    public int getCrashCountWithinDays(int i2) {
        return this.f50612c.a(i2);
    }

    @Override // com.varbto.utils.crash.CrashRecorder
    public int getCrashFileCount() {
        return getCrashFileList().size();
    }

    @Override // com.varbto.utils.crash.CrashRecorder
    public List<File> getCrashFileList() {
        File[] fileArrListFiles;
        ArrayList arrayList = new ArrayList();
        File file = this.f50611b;
        if (file == null || !file.exists() || (fileArrListFiles = this.f50611b.listFiles()) == null || fileArrListFiles.length <= 0) {
            return arrayList;
        }
        Arrays.sort(fileArrListFiles, new Comparator() { // from class: m1.c
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Long.compare(((File) obj2).lastModified(), ((File) obj).lastModified());
            }
        });
        return Arrays.asList(fileArrListFiles);
    }

    @Override // com.varbto.utils.crash.CrashRecorder
    public JSONArray getCrashTimestampsWithinDays(int i2) {
        return this.f50612c.v(i2);
    }

    @Override // com.varbto.utils.crash.CrashRecorder
    public void markFileSent(String str, String str2) throws NumberFormatException {
        try {
            this.f50612c.r(Long.parseLong(str), str2, new k1.i() { // from class: m1.d
                @Override // k1.i
                public final void a(long j2) {
                    this.f51954a.a(j2);
                }
            });
        } catch (NumberFormatException unused) {
        }
    }

    @Override // com.varbto.utils.crash.CrashRecorder
    public void recordCrash(CrashReport crashReport, Throwable th) {
        String str = System.currentTimeMillis() + "";
        File file = new File(this.f50611b, str);
        try {
            if (!this.f50610a || th == null) {
                a(file);
                if (h.f51286a) {
                    file.getName();
                }
            } else {
                a(file, crashReport, th);
                if (h.f51286a) {
                    file.getName();
                }
            }
            this.f50612c.u(Long.parseLong(str), crashReport != null ? crashReport.getCategory().name() : "UNKNOWN");
        } catch (Throwable th2) {
            if (h.f51286a) {
                Log.e("LoggingCrashRecorder", "Failed to save Crash file: " + th2.getMessage(), th2);
            }
        }
    }

    @Override // com.varbto.utils.crash.CrashRecorder
    public int getCrashCountWithinDays(String str, int i2) {
        return this.f50612c.b(i2, str);
    }

    @Override // com.varbto.utils.crash.CrashRecorder
    public JSONArray getCrashTimestampsWithinDays(String str, int i2) {
        return this.f50612c.o(i2, str);
    }

    @Override // com.varbto.utils.crash.CrashRecorder
    public List<File> getCrashFileList(String str) {
        File[] fileArrListFiles;
        ArrayList arrayList = new ArrayList();
        File file = this.f50611b;
        if (file != null && file.exists() && (fileArrListFiles = this.f50611b.listFiles()) != null) {
            HashSet hashSetH = this.f50612c.h(str);
            Arrays.sort(fileArrListFiles, new Comparator() { // from class: m1.a
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Long.compare(((File) obj2).lastModified(), ((File) obj).lastModified());
                }
            });
            for (File file2 : fileArrListFiles) {
                if (file2.exists()) {
                    try {
                        if (hashSetH.contains(Long.valueOf(Long.parseLong(file2.getName())))) {
                            arrayList.add(file2);
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.varbto.utils.crash.CrashRecorder
    public List<File> getCrashFileList(String str, String str2) {
        File[] fileArrListFiles;
        ArrayList arrayList = new ArrayList();
        File file = this.f50611b;
        if (file != null && file.exists() && (fileArrListFiles = this.f50611b.listFiles()) != null) {
            HashSet hashSetI = this.f50612c.i(str, str2);
            Arrays.sort(fileArrListFiles, new Comparator() { // from class: m1.b
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Long.compare(((File) obj2).lastModified(), ((File) obj).lastModified());
                }
            });
            for (File file2 : fileArrListFiles) {
                if (file2.exists()) {
                    try {
                        if (hashSetI.contains(Long.valueOf(Long.parseLong(file2.getName())))) {
                            arrayList.add(file2);
                        }
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
        return arrayList;
    }

    public static String a(Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace != null && stackTrace.length > 0) {
            int length = stackTrace.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    StackTraceElement stackTraceElement = stackTrace[i2];
                    String className = stackTraceElement.getClassName();
                    if (className != null && !className.startsWith("android.") && !className.startsWith("java.") && !className.startsWith("kotlin.")) {
                        Locale locale = Locale.US;
                        return stackTraceElement.getClassName() + com.anythink.core.common.d.i.f2495E + stackTraceElement.getMethodName() + "(" + (stackTraceElement.getFileName() != null ? stackTraceElement.getFileName() : "Unknown") + ":" + stackTraceElement.getLineNumber() + ")";
                    }
                    i2++;
                } else {
                    StackTraceElement stackTraceElement2 = stackTrace[0];
                    Locale locale2 = Locale.US;
                    return stackTraceElement2.getClassName() + com.anythink.core.common.d.i.f2495E + stackTraceElement2.getMethodName() + "(" + (stackTraceElement2.getFileName() != null ? stackTraceElement2.getFileName() : "Unknown") + ":" + stackTraceElement2.getLineNumber() + ")";
                }
            }
        } else {
            return "Unknown trigger";
        }
    }

    public static void a(File file) throws IOException {
        FileWriter fileWriter = new FileWriter(file);
        try {
            fileWriter.write("Crash detected but stack trace not saved (configured not to save)\n");
            fileWriter.write("Generated at: " + new Date() + "\n");
            fileWriter.close();
        } catch (Throwable th) {
            try {
                fileWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final /* synthetic */ void a(long j2) {
        File file = new File(this.f50611b, String.valueOf(j2));
        if (file.exists()) {
            if (h.f51286a) {
                file.getName();
            }
            file.delete();
        }
    }
}
