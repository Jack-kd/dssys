package com.ubix.ssp.ad.e.s.g;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public class b implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private String f47097a;

    /* renamed from: b, reason: collision with root package name */
    private String f47098b;

    /* renamed from: c, reason: collision with root package name */
    private String f47099c;

    /* renamed from: d, reason: collision with root package name */
    private long f47100d;

    /* renamed from: e, reason: collision with root package name */
    private long f47101e;

    /* renamed from: f, reason: collision with root package name */
    private int f47102f = 42;

    /* renamed from: g, reason: collision with root package name */
    private String f47103g = "";

    public long a() {
        return this.f47101e;
    }

    public int b() {
        return this.f47102f;
    }

    public String c() {
        return this.f47098b;
    }

    public String d() {
        if (!TextUtils.isEmpty(this.f47103g)) {
            return this.f47103g;
        }
        Matcher matcher = Pattern.compile("([^/]+)\\.apk").matcher(this.f47098b);
        if (matcher.find()) {
            this.f47103g = matcher.group();
        }
        return TextUtils.isEmpty(this.f47103g) ? "" : this.f47103g;
    }

    public String e() {
        return this.f47099c;
    }

    public String f() {
        return this.f47097a;
    }

    public long g() {
        return this.f47100d;
    }

    public String toString() {
        return "FileInfo{id='" + this.f47097a + "', downloadUrl='" + this.f47098b + "', filePath='" + this.f47099c + "', size=" + this.f47100d + ", downloadLocation=" + this.f47101e + ", downloadStatus=" + a(this.f47102f) + '}';
    }

    private static String a(int i2) {
        switch (i2) {
            case 42:
                return " wait ";
            case 43:
                return " prepare ";
            case 44:
                return " loading ";
            case 45:
                return " pause ";
            case 46:
                return " complete ";
            case 47:
                return " fail ";
            default:
                return "  错误的未知状态 ";
        }
    }

    public void b(int i2) {
        this.f47102f = i2;
    }

    public void c(String str) {
        this.f47099c = str;
    }

    public void d(String str) {
        this.f47097a = str;
    }

    public void a(long j2) {
        this.f47101e = j2;
    }

    public void b(long j2) {
        this.f47100d = j2;
    }

    public void a(String str) {
        this.f47098b = str;
    }

    public void b(String str) {
        this.f47103g = str;
    }
}
