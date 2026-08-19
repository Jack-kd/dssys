package com.octopus.ad.internal.d;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
class e {

    /* renamed from: d, reason: collision with root package name */
    private static final Pattern f34660d = Pattern.compile("[R,r]ange:[ ]?bytes=(\\d*)-");

    /* renamed from: e, reason: collision with root package name */
    private static final Pattern f34661e = Pattern.compile("GET /(.*) HTTP");

    /* renamed from: a, reason: collision with root package name */
    public final String f34662a;

    /* renamed from: b, reason: collision with root package name */
    public final long f34663b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f34664c;

    public e(String str) {
        n.a(str);
        long jA = a(str);
        this.f34663b = Math.max(0L, jA);
        this.f34664c = jA >= 0;
        this.f34662a = b(str);
    }

    public static e a(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (TextUtils.isEmpty(line)) {
                return new e(sb.toString());
            }
            sb.append(line);
            sb.append('\n');
        }
    }

    private String b(String str) {
        Matcher matcher = f34661e.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        throw new IllegalArgumentException("Invalid request `" + str + "`: url not found!");
    }

    public String toString() {
        return "GetRequest{rangeOffset=" + this.f34663b + ", partial=" + this.f34664c + ", uri='" + this.f34662a + "'}";
    }

    private long a(String str) {
        Matcher matcher = f34660d.matcher(str);
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return -1L;
    }
}
