package k1;

import android.os.Process;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public abstract class t {

    /* renamed from: a, reason: collision with root package name */
    public static volatile String f51309a;

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicBoolean f51310b = new AtomicBoolean(false);

    public static String a(long j2) {
        StringBuilder sb = new StringBuilder(2048);
        sb.append("===== VerbAnr Report =====\n");
        f(sb, "timestamp", String.valueOf(j2));
        f(sb, "triggerTime", g(j2));
        f(sb, "triggerSource", "native");
        try {
            f(sb, "pid", String.valueOf(Process.myPid()));
        } catch (Throwable unused) {
        }
        try {
            f(sb, "tid", String.valueOf(Process.myTid()));
        } catch (Throwable unused2) {
        }
        try {
            e(sb);
        } catch (Throwable unused3) {
        }
        sb.append("\n----- Static Info -----\n");
        String str = f51309a;
        if (str == null || str.length() <= 0) {
            sb.append("(static info not ready)\n");
        } else {
            sb.append(str);
        }
        sb.append("===== End Header =====\n");
        if (sb.length() > 8192) {
            String strSubstring = sb.substring(0, 8128);
            sb.setLength(0);
            sb.append(strSubstring);
            sb.append("\n[... header truncated ...]\n===== End Header =====\n");
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0235 A[Catch: all -> 0x023c, TryCatch #15 {all -> 0x023c, blocks: (B:104:0x022b, B:108:0x0239, B:107:0x0235), top: B:160:0x022b }] */
    /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0245 A[Catch: all -> 0x024c, TryCatch #4 {all -> 0x024c, blocks: (B:109:0x023c, B:113:0x0249, B:112:0x0245), top: B:137:0x023c }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01d9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(android.content.Context r12) {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k1.t.b(android.content.Context):java.lang.String");
    }

    public static void c(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Throwable unused) {
        }
    }

    public static void d(String str, Throwable th) {
        try {
            s.b("SystemInfoCollector", str, th, new Object[0]);
        } catch (Throwable unused) {
        }
    }

    public static void e(StringBuilder sb) {
        boolean zExists;
        BufferedReader bufferedReader;
        try {
            Runtime runtime = Runtime.getRuntime();
            long j2 = runtime.totalMemory();
            long jFreeMemory = runtime.freeMemory();
            f(sb, "vmUsedMemoryMB", String.valueOf((j2 - jFreeMemory) / 1048576));
            f(sb, "vmTotalMemoryMB", String.valueOf(j2 / 1048576));
            f(sb, "vmFreeMemoryMB", String.valueOf(jFreeMemory / 1048576));
        } catch (Throwable unused) {
        }
        File file = new File("/proc/self/status");
        int i2 = 0;
        try {
            zExists = file.exists();
        } catch (Throwable unused2) {
            zExists = false;
        }
        if (!zExists) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream2), 4096);
                String strTrim = null;
                String strTrim2 = null;
                String strTrim3 = null;
                int length = 0;
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        i2++;
                        length += line.length();
                        if (i2 > 256 || length > 16384) {
                            break;
                        }
                        if (strTrim == null && line.startsWith("VmRSS:")) {
                            strTrim = line.substring(6).trim();
                        } else if (strTrim2 == null && line.startsWith("Threads:")) {
                            strTrim2 = line.substring(8).trim();
                        } else if (strTrim3 == null && line.startsWith("FDSize:")) {
                            strTrim3 = line.substring(7).trim();
                        }
                        if (strTrim != null && strTrim2 != null && strTrim3 != null) {
                            break;
                        }
                    } catch (Throwable unused3) {
                        fileInputStream = fileInputStream2;
                        c(bufferedReader);
                        c(fileInputStream);
                        return;
                    }
                }
                if (strTrim != null) {
                    f(sb, "procVmRSS", strTrim);
                }
                if (strTrim2 != null) {
                    f(sb, "procThreads", strTrim2);
                }
                if (strTrim3 != null) {
                    f(sb, "procFDSize", strTrim3);
                }
                c(bufferedReader);
                c(fileInputStream2);
            } catch (Throwable unused4) {
                bufferedReader = null;
            }
        } catch (Throwable unused5) {
            bufferedReader = null;
        }
    }

    public static void f(StringBuilder sb, String str, String str2) {
        try {
            sb.append(str);
            sb.append('=');
            if (str2 != null) {
                sb.append(str2);
            }
            sb.append('\n');
        } catch (Throwable unused) {
        }
    }

    public static String g(long j2) {
        if (j2 <= 0) {
            return "0";
        }
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US).format(new Date(j2));
        } catch (Throwable unused) {
            return String.valueOf(j2);
        }
    }

    public static void h(StringBuilder sb, String str, String str2) {
        if (str2 == null) {
            str2 = "unknown";
        }
        f(sb, str, str2);
    }
}
