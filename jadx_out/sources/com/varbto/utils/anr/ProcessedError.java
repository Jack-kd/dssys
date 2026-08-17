package com.varbto.utils.anr;

import java.util.Map;

/* loaded from: classes5.dex */
public class ProcessedError {

    /* renamed from: a, reason: collision with root package name */
    public final String f50574a;

    /* renamed from: b, reason: collision with root package name */
    public final String f50575b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f50576c;

    public ProcessedError(String str, String str2, Map<String, String> map) {
        this.f50574a = str;
        this.f50575b = str2;
        this.f50576c = map;
    }

    public String getCategory() {
        return this.f50575b;
    }

    public String getErrorId() {
        return this.f50574a;
    }

    public Map<String, String> getMetadata() {
        return this.f50576c;
    }
}
