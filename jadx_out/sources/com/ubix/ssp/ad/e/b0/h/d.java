package com.ubix.ssp.ad.e.b0.h;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
class d {

    /* renamed from: a, reason: collision with root package name */
    private static final Pattern f46689a = Pattern.compile("[R,r]ange:[ ]?bytes=(\\d*)-");

    /* renamed from: b, reason: collision with root package name */
    private static final Pattern f46690b = Pattern.compile("GET /(.*) HTTP");

    /* renamed from: c, reason: collision with root package name */
    public final String f46691c;

    /* renamed from: d, reason: collision with root package name */
    public final long f46692d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f46693e;

    public d(String str) {
        l.a(str);
        long jA = a(str);
        this.f46692d = Math.max(0L, jA);
        this.f46693e = jA >= 0;
        this.f46691c = b(str);
    }

    private long a(String str) {
        Matcher matcher = f46689a.matcher(str);
        if (matcher.find()) {
            return Long.parseLong(matcher.group(1));
        }
        return -1L;
    }

    private String b(String str) {
        Matcher matcher = f46690b.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        throw new IllegalArgumentException("Invalid request `" + str + "`: url not found!");
    }

    public String toString() {
        return "GetRequest{rangeOffset=" + this.f46692d + ", partial=" + this.f46693e + ", uri='" + this.f46691c + "'}";
    }

    public static d a(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (TextUtils.isEmpty(line)) {
                return new d(sb.toString());
            }
            sb.append(line);
            sb.append('\n');
        }
    }
}
