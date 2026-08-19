package com.meishu.sdk.core.oaid.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import com.meishu.sdk.core.oaid.OAIDException;

/* loaded from: classes4.dex */
public class q implements com.meishu.sdk.core.oaid.b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f31708a;

    /* renamed from: b, reason: collision with root package name */
    public Class<?> f31709b;

    /* renamed from: c, reason: collision with root package name */
    public Object f31710c;

    @SuppressLint({"PrivateApi"})
    public q(Context context) throws ClassNotFoundException {
        this.f31708a = context;
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            this.f31709b = cls;
            this.f31710c = cls.newInstance();
        } catch (Exception unused) {
        }
    }

    @Override // com.meishu.sdk.core.oaid.b
    public boolean a() {
        return this.f31710c != null;
    }

    @Override // com.meishu.sdk.core.oaid.b
    public void a(com.meishu.sdk.core.oaid.a aVar) {
        if (this.f31708a == null || aVar == null) {
            return;
        }
        Class<?> cls = this.f31709b;
        if (cls == null || this.f31710c == null) {
            ((com.meishu.sdk.core.utils.l) aVar).a(new OAIDException("Xiaomi IdProvider not exists"));
            return;
        }
        try {
            String str = (String) cls.getMethod("getOAID", Context.class).invoke(this.f31710c, this.f31708a);
            if (str == null || str.length() == 0) {
                throw new OAIDException("OAID query failed");
            }
            ((com.meishu.sdk.core.utils.l) aVar).a(str);
        } catch (Exception e2) {
            ((com.meishu.sdk.core.utils.l) aVar).a(e2);
        }
    }
}
