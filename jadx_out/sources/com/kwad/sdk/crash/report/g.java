package com.kwad.sdk.crash.report;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.baidu.mobads.sdk.internal.aw;
import com.kwad.sdk.crash.message.Backtrace;
import com.kwad.sdk.crash.message.NativeBackTraceElement;
import com.kwad.sdk.crash.model.message.ExceptionMessage;
import com.kwad.sdk.crash.model.message.NativeExceptionMessage;
import com.kwad.sdk.utils.y;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class g extends d {
    public static final Pattern bfJ = Pattern.compile("(.*)\\s\\(tid=(\\d+), index=(\\d+)*");
    public static final Pattern bfK = Pattern.compile("\\sd+\\spc");

    private NativeExceptionMessage E(File file) {
        String strY;
        try {
            strY = y.Y(file);
        } catch (IOException e2) {
            this.mErrorMessage += e2 + "\n";
            strY = null;
        }
        NativeExceptionMessage nativeExceptionMessage = new NativeExceptionMessage();
        if (strY != null) {
            try {
                nativeExceptionMessage.parseJson(new JSONObject(strY));
            } catch (Exception e3) {
                this.mErrorMessage += e3 + "\n";
            }
        }
        y.W(file);
        return nativeExceptionMessage;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0030, code lost:
    
        r0 = r5.group(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
    
        if (r0 == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        r4.setSignal(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003d, code lost:
    
        r0 = r5.group(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0042, code lost:
    
        if (r0 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
    
        r4.setCode(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0047, code lost:
    
        r0 = r5.group(5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004c, code lost:
    
        if (r0 == null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004e, code lost:
    
        r4.setFaultAddr(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0057, code lost:
    
        if (r0.equals("--------") == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0059, code lost:
    
        r0 = java.lang.Boolean.TRUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0060, code lost:
    
        r0 = java.lang.Boolean.FALSE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0063, code lost:
    
        r4.setManuallyKill(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
    
        r0 = r5.group(7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006b, code lost:
    
        if (r0 == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006d, code lost:
    
        r4.setThreadName(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0070, code lost:
    
        r5 = r5.group(6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0075, code lost:
    
        if (r5 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0077, code lost:
    
        r4.setTid(java.lang.Integer.parseInt(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007e, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.kwad.sdk.crash.model.message.NativeExceptionMessage r4, java.io.File r5) throws java.io.IOException {
        /*
            r3 = this;
            boolean r0 = r5.exists()
            if (r0 != 0) goto L8
            goto L7e
        L8:
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.io.IOException -> L3b
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.io.IOException -> L3b
            r1.<init>(r5)     // Catch: java.io.IOException -> L3b
            r0.<init>(r1)     // Catch: java.io.IOException -> L3b
        L12:
            java.lang.String r5 = r0.readLine()     // Catch: java.io.IOException -> L3b
            if (r5 == 0) goto L7e
            java.lang.String r1 = "Fatal signal (\\d+) \\((\\w+)\\), code (-*\\d+) \\((\\w+)\\), fault addr (-*\\w*) in tid (\\d+) \\((.*)\\), pid (\\d+).*"
            java.util.regex.Pattern r1 = r3.gD(r1)     // Catch: java.io.IOException -> L3b
            java.util.regex.Matcher r5 = r1.matcher(r5)     // Catch: java.io.IOException -> L3b
            boolean r1 = r5.lookingAt()     // Catch: java.io.IOException -> L3b
            if (r1 == 0) goto L12
            int r1 = r5.groupCount()     // Catch: java.io.IOException -> L3b
            r2 = 8
            if (r1 < r2) goto L12
            r0 = 2
            java.lang.String r0 = r5.group(r0)     // Catch: java.io.IOException -> L3b
            if (r0 == 0) goto L3d
            r4.setSignal(r0)     // Catch: java.io.IOException -> L3b
            goto L3d
        L3b:
            r4 = move-exception
            goto L7f
        L3d:
            r0 = 4
            java.lang.String r0 = r5.group(r0)     // Catch: java.io.IOException -> L3b
            if (r0 == 0) goto L47
            r4.setCode(r0)     // Catch: java.io.IOException -> L3b
        L47:
            r0 = 5
            java.lang.String r0 = r5.group(r0)     // Catch: java.io.IOException -> L3b
            if (r0 == 0) goto L66
            r4.setFaultAddr(r0)     // Catch: java.io.IOException -> L3b
            java.lang.String r1 = "--------"
            boolean r0 = r0.equals(r1)     // Catch: java.io.IOException -> L3b
            if (r0 == 0) goto L60
            java.lang.Boolean r0 = java.lang.Boolean.TRUE     // Catch: java.io.IOException -> L3b
        L5b:
            java.lang.String r0 = r0.toString()     // Catch: java.io.IOException -> L3b
            goto L63
        L60:
            java.lang.Boolean r0 = java.lang.Boolean.FALSE     // Catch: java.io.IOException -> L3b
            goto L5b
        L63:
            r4.setManuallyKill(r0)     // Catch: java.io.IOException -> L3b
        L66:
            r0 = 7
            java.lang.String r0 = r5.group(r0)     // Catch: java.io.IOException -> L3b
            if (r0 == 0) goto L70
            r4.setThreadName(r0)     // Catch: java.io.IOException -> L3b
        L70:
            r0 = 6
            java.lang.String r5 = r5.group(r0)     // Catch: java.io.IOException -> L3b
            if (r5 == 0) goto L7e
            int r5 = java.lang.Integer.parseInt(r5)     // Catch: java.io.IOException -> L3b
            r4.setTid(r5)     // Catch: java.io.IOException -> L3b
        L7e:
            return
        L7f:
            r4.printStackTrace()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r0 = r3.mErrorMessage
            r5.append(r0)
            java.lang.String r4 = r4.getMessage()
            r5.append(r4)
            java.lang.String r4 = "\n"
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            r3.mErrorMessage = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.crash.report.g.a(com.kwad.sdk.crash.model.message.NativeExceptionMessage, java.io.File):void");
    }

    @Override // com.kwad.sdk.crash.report.d
    public final ExceptionMessage a(@NonNull File file, File file2, File file3, File file4, File file5) {
        File file6 = new File(file5, "java_backtrace");
        new File(file5, "all_java_backtrace");
        File file7 = new File(file5, "maps");
        NativeExceptionMessage nativeExceptionMessageE = E(file2);
        try {
            a(nativeExceptionMessageE, file, file6, file7, false);
            if (nativeExceptionMessageE.mTid == 0) {
                a(nativeExceptionMessageE, new File(file5, aw.f11060a));
            }
            File file8 = new File(file5, ".minfo");
            if (file8.exists()) {
                nativeExceptionMessageE.mDumpsys = y.Y(file8);
            } else {
                com.kwad.sdk.core.d.c.w("NativeCrashReporter", "memory file not exist:" + file8.getName());
            }
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.w("NativeCrashReporter", Log.getStackTraceString(e2));
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            this.mErrorMessage += e2 + "\n";
        }
        TextUtils.isEmpty(this.mErrorMessage);
        return nativeExceptionMessageE;
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x00f8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x00b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.kwad.sdk.crash.model.message.NativeExceptionMessage r17, java.io.File r18, java.io.File r19, java.io.File r20, boolean r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.crash.report.g.a(com.kwad.sdk.crash.model.message.NativeExceptionMessage, java.io.File, java.io.File, java.io.File, boolean):void");
    }

    private void a(String str, BufferedReader bufferedReader, NativeExceptionMessage nativeExceptionMessage) throws IOException {
        StringBuilder sb = new StringBuilder();
        Backtrace backtrace = new Backtrace();
        StringBuilder sb2 = new StringBuilder();
        Backtrace backtrace2 = new Backtrace();
        boolean zStartsWith = str.startsWith("de");
        if (zStartsWith) {
            sb2.append(str);
            sb2.append("\n");
        } else {
            sb.append(str);
            sb.append("\n");
        }
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null || TextUtils.isEmpty(line)) {
                break;
            } else {
                a(line, zStartsWith ? backtrace2 : backtrace);
            }
        }
        if (zStartsWith) {
            nativeExceptionMessage.setGwpAsanDeallocationThread(sb2.toString());
            nativeExceptionMessage.setGwpAsanDeallocationBacktrace(backtrace2.toJson().toString());
        } else {
            nativeExceptionMessage.setGwpAsanAllocationThread(sb.toString());
            nativeExceptionMessage.setGwpAsanAllocationBacktrace(backtrace.toJson().toString());
        }
    }

    private void a(String str, Backtrace backtrace) {
        String strGroup;
        if (backtrace.mFrame > 256) {
            return;
        }
        NativeBackTraceElement nativeBackTraceElement = new NativeBackTraceElement(str, backtrace.mFrame);
        Matcher matcher = gD(".*#\\d+\\s+pc\\s+(\\w+)\\s+.*?([^/]+\\.so)(?:\\s+\\(offset\\s+\\w+\\))?(?:\\s+\\((.*?)\\+\\d+\\))?(\\s+\\(BuildId:\\s+(\\b\\w+)\\))?").matcher(str);
        Matcher matcher2 = gD(".*#\\d+\\s+pc\\s+(\\w+)\\s+.*?([^/]+)\\s+\\((.*?)\\+\\d+\\)\\s+\\(BuildId:\\s+(\\b\\w+)\\)").matcher(str);
        Matcher matcher3 = gD(".*#\\d+\\s+pc\\s+(\\w+)\\s+.*-cache.*\\(offset\\s+\\w+\\)\\s+\\((.*?)\\+\\d+\\)").matcher(str);
        if (matcher.lookingAt() && matcher.groupCount() >= 5) {
            nativeBackTraceElement.setPc(matcher.group(1));
            nativeBackTraceElement.setFileName(matcher.group(2));
            String strGroup2 = matcher.group(3);
            if (!TextUtils.isEmpty(strGroup2)) {
                if (gD(".*(Mterp|ExecuteMterp|(art::|_ZN3art11)(interpreter|.*Invoke)|art_?interpreter|art_?quick|ZN3art9ArtMethod6Invoke|art::ArtMethod::Invoke).*").matcher(strGroup2).lookingAt()) {
                    nativeBackTraceElement.setNeedClustering(false);
                    return;
                }
                Matcher matcher4 = gD("[^\\[(<\\]]+").matcher(strGroup2);
                if (matcher4.lookingAt()) {
                    Matcher matcher5 = gD(".*(\\b\\w+)").matcher(matcher4.group());
                    if (matcher5.lookingAt() && matcher.groupCount() > 0 && (strGroup = matcher5.group(1)) != null) {
                        nativeBackTraceElement.setMethodName(strGroup);
                    }
                }
                if (nativeBackTraceElement.getMethodName() == null) {
                    nativeBackTraceElement.setMethodName(strGroup2);
                }
            }
            String strGroup3 = matcher.group(5);
            if (strGroup3 != null) {
                nativeBackTraceElement.setBuildId(strGroup3);
            }
        } else if (matcher2.lookingAt() && matcher2.groupCount() >= 4) {
            nativeBackTraceElement.setPc(matcher2.group(1));
            nativeBackTraceElement.setFileName(matcher2.group(2));
            String strGroup4 = matcher2.group(3);
            if (strGroup4 != null) {
                nativeBackTraceElement.setMethodName(strGroup4);
            }
            String strGroup5 = matcher2.group(4);
            if (strGroup5 != null) {
                nativeBackTraceElement.setBuildId(strGroup5);
            }
        } else {
            if (!matcher3.lookingAt() || matcher3.groupCount() < 2) {
                return;
            }
            nativeBackTraceElement.setPc(matcher3.group(1));
            nativeBackTraceElement.setFileName("jit-code-cache");
            String strGroup6 = matcher3.group(2);
            if (strGroup6 != null) {
                nativeBackTraceElement.setMethodName(strGroup6);
            }
        }
        backtrace.setFrame(backtrace.getFrame() + 1);
        backtrace.getBacktraces().add(nativeBackTraceElement);
    }

    private static void a(BufferedReader bufferedReader, File file) throws IOException {
        boolean zExists = file.exists();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null || line.startsWith("---")) {
                return;
            }
            if (!zExists) {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, true));
                bufferedWriter.write(line);
                bufferedWriter.newLine();
                bufferedWriter.close();
            }
        }
    }

    private static void a(BufferedReader bufferedReader, ExceptionMessage exceptionMessage) throws IOException {
        boolean z2 = false;
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return;
            }
            if (!z2 && line.contains("JNI DETECTED ERROR IN APPLICATION")) {
                exceptionMessage.mJNIError = line.substring(line.indexOf("JNI DETECTED ERROR IN APPLICATION"));
                z2 = true;
            } else if (!line.contains("Waiting for a blocking GC ") && !line.contains("WaitForGcToComplete")) {
                if (line.contains("dvm_lock_sample")) {
                    if (TextUtils.isEmpty(exceptionMessage.mLockInfo)) {
                        exceptionMessage.mLockInfo = line + "\n";
                    } else {
                        exceptionMessage.mLockInfo += line + "\n";
                    }
                } else if (line.contains("Long monitor")) {
                    if (TextUtils.isEmpty(exceptionMessage.mMonitorInfo)) {
                        exceptionMessage.mMonitorInfo = line + "\n";
                    } else {
                        exceptionMessage.mMonitorInfo += line + "\n";
                    }
                } else if (line.contains("Slow Looper")) {
                    if (TextUtils.isEmpty(exceptionMessage.mSlowLooper)) {
                        exceptionMessage.mSlowLooper = line + "\n";
                    } else {
                        exceptionMessage.mSlowLooper += line + "\n";
                    }
                } else if (line.contains("Slow Operation")) {
                    if (TextUtils.isEmpty(exceptionMessage.mSlowOperation)) {
                        exceptionMessage.mSlowOperation = line + "\n";
                    } else {
                        exceptionMessage.mSlowOperation += line + "\n";
                    }
                }
            } else if (TextUtils.isEmpty(exceptionMessage.mGCInfo)) {
                exceptionMessage.mGCInfo = line + "\n";
            } else {
                exceptionMessage.mGCInfo += line + "\n";
            }
        }
    }

    private static void a(NativeExceptionMessage nativeExceptionMessage, String str, StringBuilder sb) {
        if (str.startsWith("Build fingerprint: ")) {
            nativeExceptionMessage.mFingerprint = str.substring(19);
            return;
        }
        if (str.startsWith("Revision: ")) {
            nativeExceptionMessage.mRevision = str.substring(10);
            return;
        }
        if (str.startsWith("ABI: ")) {
            nativeExceptionMessage.mAbi = str.substring(5);
            return;
        }
        if (str.startsWith("Current UTC: ")) {
            nativeExceptionMessage.mCurrentTimeStamp = Long.parseLong(str.substring(13));
            return;
        }
        if (str.startsWith("Abort message: ")) {
            nativeExceptionMessage.mAbortMsg = str.substring(15);
            return;
        }
        if (!str.startsWith("    r") && !str.startsWith("    ip") && !str.startsWith("    x") && !str.startsWith("    sp")) {
            if (str.startsWith("pid: ")) {
                String[] strArrSplit = str.split("\\s+");
                if (strArrSplit.length < 9) {
                    return;
                }
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < strArrSplit.length; i5++) {
                    if ("name:".equals(strArrSplit[i5])) {
                        i2 = i5;
                    } else if (">>>".equals(strArrSplit[i5])) {
                        i3 = i5;
                    } else if ("<<<".equals(strArrSplit[i5])) {
                        i4 = i5;
                    }
                }
                StringBuilder sb2 = new StringBuilder();
                int i6 = i2 + 1;
                sb2.append(strArrSplit[i6]);
                while (true) {
                    i6++;
                    if (i6 >= i3) {
                        break;
                    }
                    sb2.append(" ");
                    sb2.append(strArrSplit[i6]);
                }
                nativeExceptionMessage.mThreadName = sb2.toString();
                sb2.setLength(0);
                int i7 = i3 + 1;
                sb2.append(strArrSplit[i7]);
                while (true) {
                    i7++;
                    if (i7 < i4) {
                        sb2.append(" ");
                        sb2.append(strArrSplit[i7]);
                    } else {
                        nativeExceptionMessage.mProcessName = sb2.toString();
                        return;
                    }
                }
            } else if (str.startsWith("signal ")) {
                String[] strArrSplit2 = str.split("\\s+");
                if (strArrSplit2.length >= 9) {
                    nativeExceptionMessage.mSignal = com.kwad.sdk.crash.utils.g.gJ(strArrSplit2[2]);
                    nativeExceptionMessage.mCode = com.kwad.sdk.crash.utils.g.gJ(strArrSplit2[5]);
                    nativeExceptionMessage.mFaultAddr = strArrSplit2[strArrSplit2.length - 1];
                    nativeExceptionMessage.mManuallyKill = "--------".equals(strArrSplit2[strArrSplit2.length + (-1)]) ? "True" : "False";
                }
            }
        } else {
            sb.append(str);
            sb.append('\n');
        }
    }
}
