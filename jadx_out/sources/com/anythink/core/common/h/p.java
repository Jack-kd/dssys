package com.anythink.core.common.h;

import android.text.TextUtils;
import com.anythink.core.api.bridge.ATBaseAdAdapter;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public ATBaseAdAdapter f4352a;

    /* renamed from: b, reason: collision with root package name */
    private Throwable f4353b;

    /* renamed from: c, reason: collision with root package name */
    private String f4354c;

    public p(ATBaseAdAdapter aTBaseAdAdapter) {
        this.f4352a = aTBaseAdAdapter;
    }

    public final String a() {
        return this.f4354c;
    }

    public final String b(String str) {
        Throwable th = this.f4353b;
        if (th != null && !(th instanceof ClassNotFoundException)) {
            String message = th.getMessage();
            if (!TextUtils.isEmpty(message)) {
                return message;
            }
            String message2 = this.f4353b.getCause() != null ? this.f4353b.getCause().getMessage() : "";
            if (!TextUtils.isEmpty(message2)) {
                return message2;
            }
        }
        return str;
    }

    public final void a(String str) {
        this.f4354c = str;
    }

    public p(Throwable th) {
        this.f4353b = th;
    }
}
