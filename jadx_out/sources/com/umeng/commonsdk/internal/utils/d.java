package com.umeng.commonsdk.internal.utils;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes5.dex */
public class d {

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public String f50159a;

        /* renamed from: b, reason: collision with root package name */
        public String f50160b;

        /* renamed from: c, reason: collision with root package name */
        public int f50161c;

        /* renamed from: d, reason: collision with root package name */
        public String f50162d;

        /* renamed from: e, reason: collision with root package name */
        public String f50163e;

        /* renamed from: f, reason: collision with root package name */
        public String f50164f;

        /* renamed from: g, reason: collision with root package name */
        public String f50165g;

        /* renamed from: h, reason: collision with root package name */
        public String f50166h;

        /* renamed from: i, reason: collision with root package name */
        public String f50167i;

        /* renamed from: j, reason: collision with root package name */
        public String f50168j;

        /* renamed from: k, reason: collision with root package name */
        public String f50169k;

        /* renamed from: l, reason: collision with root package name */
        public String f50170l;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x0135 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0130 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0140 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x013b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.umeng.commonsdk.internal.utils.d.a a() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.internal.utils.d.a():com.umeng.commonsdk.internal.utils.d$a");
    }

    public static String b() throws IOException {
        String str = "";
        try {
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
        } catch (Exception unused) {
        }
        return str.trim();
    }

    public static String c() throws IOException {
        String str = "";
        try {
            InputStream inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq").start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                str = str + new String(bArr);
            }
            inputStream.close();
        } catch (Exception unused) {
        }
        return str.trim();
    }

    public static String d() throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"));
            try {
                String strTrim = bufferedReader.readLine().trim();
                try {
                    bufferedReader.close();
                    return strTrim;
                } catch (Throwable unused) {
                    return strTrim;
                }
            } catch (Exception unused2) {
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable unused3) {
                    }
                }
                return "";
            } catch (Throwable th2) {
                th = th2;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception unused5) {
        } catch (Throwable th3) {
            bufferedReader = null;
            th = th3;
        }
    }
}
