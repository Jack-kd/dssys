package com.fl.saas;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
class P {

    /* renamed from: d, reason: collision with root package name */
    private static final Pattern f30012d = Pattern.compile("[R,r]ange:[ ]?bytes=(\\d*)-");

    /* renamed from: e, reason: collision with root package name */
    private static final Pattern f30013e = Pattern.compile("GET /(.*) HTTP");

    /* renamed from: a, reason: collision with root package name */
    public final String f30014a;

    /* renamed from: b, reason: collision with root package name */
    public final long f30015b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f30016c;

    public P(String str) {
        AbstractC1228w0.a(str);
        long jA = a(str);
        this.f30015b = Math.max(0L, jA);
        this.f30016c = jA >= 0;
        this.f30014a = b(str);
    }

    private long a(String str) {
        Matcher matcher = f30012d.matcher(str);
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return -1L;
    }

    private String b(String str) {
        Matcher matcher = f30013e.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        throw new IllegalArgumentException("Invalid request `" + str + "`: url not found!");
    }

    public String toString() {
        return "GetRequest{rangeOffset=" + this.f30015b + ", partial=" + this.f30016c + ", uri='" + this.f30014a + "'}";
    }

    public static P a(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (TextUtils.isEmpty(line)) {
                return new P(sb.toString());
            }
            sb.append(line);
            sb.append('\n');
        }
    }
}
