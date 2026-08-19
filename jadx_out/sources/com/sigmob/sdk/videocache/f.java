package com.sigmob.sdk.videocache;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
class f {

    /* renamed from: d, reason: collision with root package name */
    private static final Pattern f38890d = Pattern.compile("[R,r]ange:[ ]?bytes=(\\d*)-");

    /* renamed from: e, reason: collision with root package name */
    private static final Pattern f38891e = Pattern.compile("GET /(.*) HTTP");

    /* renamed from: a, reason: collision with root package name */
    public final String f38892a;

    /* renamed from: b, reason: collision with root package name */
    public final long f38893b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f38894c;

    public f(String str) {
        n.a(str);
        long jA = a(str);
        this.f38893b = Math.max(0L, jA);
        this.f38894c = jA >= 0;
        this.f38892a = b(str);
    }

    private long a(String str) {
        Matcher matcher = f38890d.matcher(str);
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return -1L;
    }

    private String b(String str) {
        Matcher matcher = f38891e.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        throw new IllegalArgumentException("Invalid request `" + str + "`: url not found!");
    }

    public String toString() {
        return "GetRequest{rangeOffset=" + this.f38893b + ", partial=" + this.f38894c + ", uri='" + this.f38892a + "'}";
    }

    public static f a(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (TextUtils.isEmpty(line)) {
                return new f(sb.toString());
            }
            sb.append(line);
            sb.append('\n');
        }
    }
}
