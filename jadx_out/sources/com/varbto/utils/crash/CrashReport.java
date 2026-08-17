package com.varbto.utils.crash;

import com.varbto.internal.g;
import java.util.Map;

/* loaded from: classes5.dex */
public class CrashReport {

    /* renamed from: a, reason: collision with root package name */
    public final String f50602a;

    /* renamed from: b, reason: collision with root package name */
    public final g f50603b;

    /* renamed from: c, reason: collision with root package name */
    public final int f50604c;

    /* renamed from: d, reason: collision with root package name */
    public final String f50605d;

    /* renamed from: e, reason: collision with root package name */
    public final String f50606e;

    /* renamed from: f, reason: collision with root package name */
    public final Map f50607f;

    public CrashReport(String str, g gVar, int i2, String str2, String str3, Map<String, String> map) {
        this.f50602a = str;
        this.f50603b = gVar;
        this.f50604c = i2;
        this.f50605d = str2;
        this.f50606e = str3;
        this.f50607f = map;
    }

    public g getCategory() {
        return this.f50603b;
    }

    public int getConfidence() {
        return this.f50604c;
    }

    public String getErrorId() {
        return this.f50602a;
    }

    public String getMatchedPackage() {
        return this.f50605d;
    }

    public String getMatchedType() {
        return this.f50606e;
    }

    public Map<String, String> getMetadata() {
        return this.f50607f;
    }
}
