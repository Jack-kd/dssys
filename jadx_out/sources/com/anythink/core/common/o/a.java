package com.anythink.core.common.o;

import android.os.Process;
import android.os.SystemClock;
import com.anythink.core.common.v.j;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final int f7160a = 100;

    /* renamed from: b, reason: collision with root package name */
    private static long f7161b;

    /* renamed from: c, reason: collision with root package name */
    private static long f7162c = SystemClock.uptimeMillis();

    /* renamed from: d, reason: collision with root package name */
    private static final File f7163d = new File(j.b("L3Byb2Mv") + Process.myPid() + j.b("L3N0YXQ="));

    public static int a() {
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        Throwable th;
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(f7163d);
            try {
                inputStreamReader = new InputStreamReader(fileInputStream);
                try {
                    bufferedReader = new BufferedReader(inputStreamReader);
                    try {
                        String[] strArrSplit = bufferedReader.readLine().split(" ");
                        long j2 = Long.parseLong(strArrSplit[13]) + Long.parseLong(strArrSplit[14]);
                        long j3 = j2 - f7161b;
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        float f2 = ((jUptimeMillis - f7162c) / 1000.0f) * 100.0f;
                        f7161b = j2;
                        f7162c = jUptimeMillis;
                        int iAvailableProcessors = (int) (((j3 / f2) * 100.0f) / Runtime.getRuntime().availableProcessors());
                        try {
                            bufferedReader.close();
                            inputStreamReader.close();
                            fileInputStream.close();
                        } catch (Throwable unused) {
                        }
                        return iAvailableProcessors;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            th.printStackTrace();
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Throwable unused2) {
                                    return 0;
                                }
                            }
                        } finally {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Throwable unused3) {
                                }
                            }
                            if (inputStreamReader != null) {
                                inputStreamReader.close();
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                        }
                    }
                } catch (Throwable th3) {
                    bufferedReader = null;
                    th = th3;
                }
            } catch (Throwable th4) {
                bufferedReader = null;
                th = th4;
                inputStreamReader = null;
            }
        } catch (Throwable th5) {
            inputStreamReader = null;
            bufferedReader = null;
            th = th5;
            fileInputStream = null;
        }
    }
}
