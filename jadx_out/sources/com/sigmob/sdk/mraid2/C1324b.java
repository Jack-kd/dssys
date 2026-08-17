package com.sigmob.sdk.mraid2;

import android.text.TextUtils;
import java.util.HashMap;

/* renamed from: com.sigmob.sdk.mraid2.b, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1324b {

    /* renamed from: b, reason: collision with root package name */
    private static final C1324b f38126b = new C1324b();

    /* renamed from: a, reason: collision with root package name */
    private final HashMap<String, C1327e> f38127a = new HashMap<>();

    private C1324b() {
    }

    public static C1324b a() {
        return f38126b;
    }

    public C1327e b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f38127a.get(str);
    }

    public C1327e a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        C1327e c1327e = this.f38127a.get(str);
        this.f38127a.remove(str);
        return c1327e;
    }

    public void a(String str, C1327e c1327e) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f38127a.put(str, c1327e);
    }
}
