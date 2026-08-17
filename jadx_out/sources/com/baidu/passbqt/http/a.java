package com.baidu.passbqt.http;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public Map f11866a = new HashMap();

    public Map a() {
        return this.f11866a;
    }

    public void b(String str, String str2) {
        this.f11866a.put(str, str2);
    }

    public void c(Map map) {
        this.f11866a.putAll(map);
    }
}
