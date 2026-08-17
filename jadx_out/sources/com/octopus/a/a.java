package com.octopus.a;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.octopus.ad.Octopus;
import com.octopus.ad.d.b.d;
import com.octopus.ad.d.b.f;
import com.octopus.ad.d.b.h;
import com.octopus.ad.d.b.i;
import com.octopus.ad.internal.q;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class a implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    private static a f33185a;

    /* renamed from: b, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f33186b;

    /* renamed from: c, reason: collision with root package name */
    private Context f33187c;

    private a() {
    }

    private void b(final String str, final boolean z2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        new Thread(new Runnable() { // from class: com.octopus.a.a.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.c(str, z2);
                } catch (Throwable th) {
                    f.a("CrashHandler", "A Throwable Caught", th);
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, boolean z2) throws JSONException {
        if (str.contains("com.octopus.ad")) {
            a(str, z2);
            if (z2) {
                return;
            }
            a(str);
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(@NonNull Thread thread, @NonNull Throwable th) throws InterruptedException {
        try {
            a(th);
            Thread.sleep(1000L);
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f33186b;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            Process.killProcess(Process.myPid());
        }
    }

    public static a a() {
        if (f33185a == null) {
            f33185a = new a();
        }
        return f33185a;
    }

    public void b() {
        try {
            if (this.f33187c == null) {
                this.f33187c = q.a().l();
            }
            File filesDir = this.f33187c.getFilesDir();
            if (filesDir != null) {
                File[] fileArrListFiles = new File(filesDir.getPath() + "/octopus-crash/").listFiles();
                if (fileArrListFiles != null) {
                    for (File file : fileArrListFiles) {
                        if (file.exists()) {
                            b(a(file), true);
                            file.delete();
                        }
                    }
                }
            }
        } catch (Exception e2) {
            f.d("OctopusAd", "Catch An Exception: " + e2.getMessage());
        }
    }

    public void a(Context context) {
        this.f33187c = context.getApplicationContext();
        this.f33186b = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    private void a(String str, boolean z2) throws JSONException {
        String str2;
        try {
            if (this.f33187c == null) {
                this.f33187c = q.a().l();
            }
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put("appId", q.a().j());
            jSONObject.put("packageName", this.f33187c.getPackageName());
            jSONObject.put("versionName", i.e(this.f33187c));
            jSONObject.put("versionCode", i.h(this.f33187c) + "");
            jSONObject.put("sdkVersion", "2.6.5.7");
            jSONObject.put("sdkTag", "OctopusAd");
            jSONObject2.put("oaid", Octopus.getOaid(this.f33187c));
            jSONObject2.put("osVersion", Build.VERSION.RELEASE + "_" + Build.VERSION.SDK_INT);
            jSONObject2.put("vendor", Build.MANUFACTURER);
            jSONObject2.put("model", Build.MODEL);
            jSONObject2.put("cpu", Build.CPU_ABI);
            jSONObject.put("device", jSONObject2);
            jSONObject.put("crashType", z2 ? "native" : "java");
            jSONObject.put("crashMessage", str);
            String strO = q.a().o();
            if (z2) {
                str2 = strO + "/sdk/soCrashReport";
            } else {
                str2 = strO + "/sdk/crashReport";
            }
            d.a(str2, jSONObject.toString().getBytes());
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    private void a(Throwable th) {
        if (th == null) {
            return;
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
            cause.printStackTrace(printWriter);
        }
        printWriter.close();
        b(stringWriter.toString(), false);
    }

    private void a(String str) {
        try {
            if (!Environment.getExternalStorageState().equals("mounted")) {
                Log.e("CrashHandler", "sdcard unmounted,skip dump exception");
                return;
            }
            Context context = this.f33187c;
            if (context == null) {
                return;
            }
            File fileA = h.a(context);
            f.a("OctopusAd", "CrashHandler storagePath == " + fileA);
            if (fileA != null) {
                String str2 = fileA.getPath() + "/Octopus/log/";
                File file = new File(str2);
                if (!file.exists()) {
                    file.mkdirs();
                }
                String str3 = new SimpleDateFormat("yyyy-MM-dd HH:MM:SS").format(new Date(System.currentTimeMillis()));
                File file2 = new File(str2 + "crash_" + str3 + ".trace");
                file2.createNewFile();
                FileWriter fileWriter = new FileWriter(file2, true);
                BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
                bufferedWriter.write(str3);
                bufferedWriter.write("\r\n");
                bufferedWriter.write("------------------crash----------------------");
                bufferedWriter.write("\r\n");
                bufferedWriter.write(str);
                bufferedWriter.write("\r\n");
                bufferedWriter.write("-------------------end-----------------------");
                bufferedWriter.newLine();
                bufferedWriter.close();
                fileWriter.close();
            }
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        } catch (Throwable th) {
            f.a("OctopusAd", "A Throwable Caught", th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008a A[Catch: Exception -> 0x0086, TryCatch #7 {Exception -> 0x0086, blocks: (B:34:0x0082, B:38:0x008a, B:40:0x008f), top: B:61:0x0082 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008f A[Catch: Exception -> 0x0086, TRY_LEAVE, TryCatch #7 {Exception -> 0x0086, blocks: (B:34:0x0082, B:38:0x008a, B:40:0x008f), top: B:61:0x0082 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a8 A[Catch: Exception -> 0x00a4, TryCatch #9 {Exception -> 0x00a4, blocks: (B:46:0x00a0, B:50:0x00a8, B:52:0x00ad), top: B:63:0x00a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ad A[Catch: Exception -> 0x00a4, TRY_LEAVE, TryCatch #9 {Exception -> 0x00a4, blocks: (B:46:0x00a0, B:50:0x00a8, B:52:0x00ad), top: B:63:0x00a0 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String a(java.io.File r8) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "Catch An Exception: "
            java.lang.String r1 = "OctopusAd"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r3 = 0
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L66
            r4.<init>(r8)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L66
            java.io.InputStreamReader r8 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L59 java.lang.Exception -> L5d
            r8.<init>(r4)     // Catch: java.lang.Throwable -> L59 java.lang.Exception -> L5d
            java.io.BufferedReader r5 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L54
            r5.<init>(r8)     // Catch: java.lang.Throwable -> L51 java.lang.Exception -> L54
        L19:
            java.lang.String r3 = r5.readLine()     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2c
            if (r3 == 0) goto L2e
            r2.append(r3)     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2c
            java.lang.String r3 = "\r\n"
            r2.append(r3)     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2c
            goto L19
        L28:
            r2 = move-exception
        L29:
            r3 = r4
            goto L9e
        L2c:
            r3 = move-exception
            goto L6a
        L2e:
            r4.close()     // Catch: java.lang.Exception -> L39
            r8.close()     // Catch: java.lang.Exception -> L39
            r5.close()     // Catch: java.lang.Exception -> L39
            goto L99
        L39:
            r8 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
        L3f:
            r3.append(r0)
            java.lang.String r8 = r8.getMessage()
            r3.append(r8)
            java.lang.String r8 = r3.toString()
            com.octopus.ad.d.b.f.d(r1, r8)
            goto L99
        L51:
            r2 = move-exception
            r5 = r3
            goto L29
        L54:
            r5 = move-exception
            r7 = r5
            r5 = r3
            r3 = r7
            goto L6a
        L59:
            r2 = move-exception
            r8 = r3
            r5 = r8
            goto L29
        L5d:
            r8 = move-exception
            r5 = r3
        L5f:
            r3 = r8
            r8 = r5
            goto L6a
        L62:
            r2 = move-exception
            r8 = r3
            r5 = r8
            goto L9e
        L66:
            r8 = move-exception
            r4 = r3
            r5 = r4
            goto L5f
        L6a:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L28
            r6.<init>()     // Catch: java.lang.Throwable -> L28
            r6.append(r0)     // Catch: java.lang.Throwable -> L28
            java.lang.String r3 = r3.getMessage()     // Catch: java.lang.Throwable -> L28
            r6.append(r3)     // Catch: java.lang.Throwable -> L28
            java.lang.String r3 = r6.toString()     // Catch: java.lang.Throwable -> L28
            com.octopus.ad.d.b.f.d(r1, r3)     // Catch: java.lang.Throwable -> L28
            if (r4 == 0) goto L88
            r4.close()     // Catch: java.lang.Exception -> L86
            goto L88
        L86:
            r8 = move-exception
            goto L93
        L88:
            if (r8 == 0) goto L8d
            r8.close()     // Catch: java.lang.Exception -> L86
        L8d:
            if (r5 == 0) goto L99
            r5.close()     // Catch: java.lang.Exception -> L86
            goto L99
        L93:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            goto L3f
        L99:
            java.lang.String r8 = r2.toString()
            return r8
        L9e:
            if (r3 == 0) goto La6
            r3.close()     // Catch: java.lang.Exception -> La4
            goto La6
        La4:
            r8 = move-exception
            goto Lb1
        La6:
            if (r8 == 0) goto Lab
            r8.close()     // Catch: java.lang.Exception -> La4
        Lab:
            if (r5 == 0) goto Lc7
            r5.close()     // Catch: java.lang.Exception -> La4
            goto Lc7
        Lb1:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r0)
            java.lang.String r8 = r8.getMessage()
            r3.append(r8)
            java.lang.String r8 = r3.toString()
            com.octopus.ad.d.b.f.d(r1, r8)
        Lc7:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.octopus.a.a.a(java.io.File):java.lang.String");
    }
}
