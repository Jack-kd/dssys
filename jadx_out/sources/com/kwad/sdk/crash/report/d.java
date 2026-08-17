package com.kwad.sdk.crash.report;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.crash.message.Backtrace;
import com.kwad.sdk.crash.message.JavaBackTraceElement;
import com.kwad.sdk.crash.model.message.ExceptionMessage;
import com.kwad.sdk.utils.r;
import com.kwad.sdk.utils.y;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public abstract class d {
    protected e mUploader;
    protected String mErrorMessage = "";
    private final ConcurrentHashMap<String, Pattern> bfG = new ConcurrentHashMap<>();

    @SuppressLint({"CheckResult"})
    private static void b(File file, @Nullable CountDownLatch countDownLatch) {
        com.kwad.sdk.crash.report.upload.d.a(file, true, countDownLatch);
    }

    public static String gE(String str) {
        return (str == null || !str.contains("-")) ? str : str.substring(0, str.lastIndexOf(45));
    }

    @SuppressLint({"CheckResult"})
    public void D(File file) {
        com.kwad.sdk.core.d.c.d("AnrAndNativeAdExceptionCollector", "reportException dir =" + file);
        File[] fileArrListFiles = file.listFiles(new FileFilter() { // from class: com.kwad.sdk.crash.report.d.1
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                com.kwad.sdk.core.d.c.d("AnrAndNativeAdExceptionCollector", "reportException file =" + file2.getName());
                return file2.isDirectory();
            }
        });
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                a(file2, (CountDownLatch) null);
            }
        }
    }

    public abstract ExceptionMessage a(@NonNull File file, File file2, File file3, File file4, File file5);

    public final void a(e eVar) {
        this.mUploader = eVar;
    }

    public final Pattern gD(String str) {
        if (!this.bfG.containsKey(str)) {
            if (str.equals(".*at\\s+(.*)\\.(.*)\\(((.*):(-?\\d+)|Native method)\\)") || str.equals(".*(Mterp|ExecuteMterp|(art::|_ZN3art11)(interpreter|.*Invoke)|art_?interpreter|art_?quick|ZN3art9ArtMethod6Invoke|art::ArtMethod::Invoke).*")) {
                this.bfG.put(str, Pattern.compile(str, 66));
            } else {
                this.bfG.put(str, Pattern.compile(str));
            }
        }
        return this.bfG.get(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:99:0x02fd A[Catch: all -> 0x030d, LOOP:4: B:98:0x02fb->B:99:0x02fd, LOOP_END, TryCatch #7 {all -> 0x030d, blocks: (B:97:0x02d3, B:99:0x02fd, B:102:0x030f), top: B:130:0x02d3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.io.File r19, @androidx.annotation.Nullable java.util.concurrent.CountDownLatch r20) {
        /*
            Method dump skipped, instructions count: 885
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.crash.report.d.a(java.io.File, java.util.concurrent.CountDownLatch):void");
    }

    public final void a(ExceptionMessage exceptionMessage, @NonNull List<File> list, @Nullable CountDownLatch countDownLatch) throws Throwable {
        com.kwad.sdk.core.d.c.d("AnrAndNativeAdExceptionCollector", "compressAndUpload");
        File filePZ = this.mUploader.PZ();
        if (!filePZ.exists()) {
            filePZ.mkdir();
        }
        File file = new File(filePZ, exceptionMessage.mLogUUID + ".zip");
        StringBuilder sb = new StringBuilder("compressAndUpload zipFile=");
        sb.append(file.getPath());
        com.kwad.sdk.core.d.c.d("AnrAndNativeAdExceptionCollector", sb.toString());
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            }
        }
        r.a((File[]) list.toArray(new File[0]), file.getPath());
        if (file.length() > 0) {
            HashMap map = new HashMap();
            map.put("mLogUUID", exceptionMessage.mLogUUID);
            new JSONObject(map);
            b(file, countDownLatch);
            return;
        }
        y.W(file);
    }

    public final void a(String str, Backtrace backtrace, boolean z2) {
        if (backtrace.getFrame() > 256) {
            return;
        }
        JavaBackTraceElement javaBackTraceElement = new JavaBackTraceElement(str, backtrace.getFrame());
        Matcher matcher = gD(".*at\\s+(.*)\\.(.*)\\(((.*):(-?\\d+)|Native method)\\)").matcher(str);
        if (matcher.lookingAt()) {
            javaBackTraceElement.setDeclaringClass(matcher.group(1));
            javaBackTraceElement.setMethodName(matcher.group(2));
            if (matcher.groupCount() >= 5) {
                String strGroup = matcher.group(4);
                if (strGroup != null) {
                    javaBackTraceElement.setFileName(strGroup);
                } else {
                    javaBackTraceElement.setIsNative(true);
                }
                String strGroup2 = matcher.group(5);
                if (strGroup2 != null) {
                    try {
                        javaBackTraceElement.setLineNumber(Long.parseLong(strGroup2));
                    } catch (NumberFormatException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        } else {
            backtrace.getFrame();
            if (str.startsWith("Caused by: ")) {
                javaBackTraceElement.setIsCausedBy(true);
            }
        }
        if (javaBackTraceElement.isTitle() || javaBackTraceElement.isCausedBy() || javaBackTraceElement.isNative()) {
            javaBackTraceElement.setNeedClustering(false);
        }
        backtrace.setFrame(backtrace.getFrame() + 1);
        backtrace.getBacktraces().add(javaBackTraceElement);
    }

    public final void a(File file, ExceptionMessage exceptionMessage) throws Throwable {
        StringBuilder sb;
        StringBuilder sb2;
        String str;
        String str2;
        String str3;
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
                boolean z2 = false;
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line != null) {
                            if (!z2 && line.contains("JNI DETECTED ERROR IN APPLICATION")) {
                                exceptionMessage.mJNIError = line.substring(line.indexOf("JNI DETECTED ERROR IN APPLICATION"));
                                z2 = true;
                            } else if (!line.contains("Waiting for a blocking GC ") && !line.contains("WaitForGcToComplete")) {
                                if (line.contains("dvm_lock_sample")) {
                                    if (TextUtils.isEmpty(exceptionMessage.mLockInfo)) {
                                        sb2 = new StringBuilder();
                                        sb2.append(line);
                                        sb2.append("\n");
                                    } else {
                                        sb2 = new StringBuilder();
                                        sb2.append(exceptionMessage.mLockInfo);
                                        sb2.append(line);
                                        sb2.append("\n");
                                    }
                                    exceptionMessage.mLockInfo = sb2.toString();
                                } else if (line.contains("Long monitor")) {
                                    if (TextUtils.isEmpty(exceptionMessage.mMonitorInfo)) {
                                        str = line + "\n";
                                    } else {
                                        str = exceptionMessage.mMonitorInfo + line + "\n";
                                    }
                                    exceptionMessage.mMonitorInfo = str;
                                } else if (line.contains("Slow Looper")) {
                                    if (TextUtils.isEmpty(exceptionMessage.mSlowLooper)) {
                                        str2 = line + "\n";
                                    } else {
                                        str2 = exceptionMessage.mSlowLooper + line + "\n";
                                    }
                                    exceptionMessage.mSlowLooper = str2;
                                } else if (line.contains("Slow Operation")) {
                                    if (TextUtils.isEmpty(exceptionMessage.mSlowOperation)) {
                                        str3 = line + "\n";
                                    } else {
                                        str3 = exceptionMessage.mSlowOperation + line + "\n";
                                    }
                                    exceptionMessage.mSlowOperation = str3;
                                }
                            } else {
                                if (TextUtils.isEmpty(exceptionMessage.mGCInfo)) {
                                    sb = new StringBuilder();
                                    sb.append(line);
                                    sb.append("\n");
                                } else {
                                    sb = new StringBuilder();
                                    sb.append(exceptionMessage.mGCInfo);
                                    sb.append(line);
                                    sb.append("\n");
                                }
                                exceptionMessage.mGCInfo = sb.toString();
                            }
                        } else {
                            com.kwad.sdk.crash.utils.b.closeQuietly(bufferedReader2);
                            return;
                        }
                    } catch (FileNotFoundException e2) {
                        e = e2;
                        bufferedReader = bufferedReader2;
                        this.mErrorMessage += e + "\n";
                        com.kwad.sdk.crash.utils.b.closeQuietly(bufferedReader);
                        return;
                    } catch (IOException e3) {
                        e = e3;
                        bufferedReader = bufferedReader2;
                        this.mErrorMessage += e + "\n";
                        com.kwad.sdk.crash.utils.b.closeQuietly(bufferedReader);
                        return;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        com.kwad.sdk.crash.utils.b.closeQuietly(bufferedReader);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException e4) {
            e = e4;
        } catch (IOException e5) {
            e = e5;
        }
    }
}
