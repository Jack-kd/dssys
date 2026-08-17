package com.fl.saas;

import android.text.TextUtils;
import com.fl.saas.adx.util.LogcatUtil;
import java.nio.charset.StandardCharsets;

/* renamed from: com.fl.saas.d0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1171d0 {

    /* renamed from: a, reason: collision with root package name */
    private String f30350a;

    /* renamed from: b, reason: collision with root package name */
    private String f30351b;

    /* renamed from: c, reason: collision with root package name */
    private String f30352c;

    /* renamed from: d, reason: collision with root package name */
    private int f30353d;

    /* renamed from: e, reason: collision with root package name */
    private int f30354e;

    /* renamed from: f, reason: collision with root package name */
    private int f30355f;

    public String a() {
        return this.f30352c;
    }

    public int b() {
        return this.f30353d;
    }

    public int c() {
        return this.f30354e;
    }

    public String d() {
        return this.f30351b;
    }

    public String e() {
        return this.f30350a;
    }

    public int f() {
        return this.f30355f;
    }

    public void a(String str) {
        this.f30352c = str;
    }

    public void b(int i2) {
        this.f30354e = i2;
    }

    public void c(String str) {
        this.f30350a = str;
    }

    public void a(int i2) {
        this.f30353d = i2;
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.f30351b = new String(AbstractC1197m.b(str), StandardCharsets.UTF_8);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
        }
    }

    public void c(int i2) {
        this.f30355f = i2;
    }
}
