package com.anythink.core.common;

import android.text.TextUtils;
import com.anythink.core.common.h.cc;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public class w {

    /* renamed from: b, reason: collision with root package name */
    private static final String f8359b = "w";

    /* renamed from: a, reason: collision with root package name */
    Map<String, cc> f8360a;

    public w() {
        if (this.f8360a == null) {
            this.f8360a = new ConcurrentHashMap(5);
        }
    }

    private void a() {
        if (this.f8360a == null) {
            this.f8360a = new ConcurrentHashMap(5);
        }
    }

    public final void a(String str, String str2, cc.a aVar, cc.a aVar2) {
        Map<String, cc> map = this.f8360a;
        if (map == null) {
            return;
        }
        cc ccVar = map.get(str);
        if (ccVar == null) {
            synchronized (this) {
                try {
                    ccVar = this.f8360a.get(str);
                    if (ccVar == null) {
                        ccVar = new cc();
                        ccVar.a(str2);
                        this.f8360a.put(str, ccVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (TextUtils.equals(str2, ccVar.b())) {
            if (aVar != null) {
                ccVar.a(aVar);
                ccVar.a(System.currentTimeMillis());
            }
            if (aVar2 != null) {
                ccVar.b(aVar2);
            }
        }
    }

    private cc a(String str) {
        Map<String, cc> map = this.f8360a;
        if (map != null) {
            return map.remove(str);
        }
        return null;
    }
}
