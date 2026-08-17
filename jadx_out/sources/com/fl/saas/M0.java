package com.fl.saas;

import com.fl.saas.adx.base.exception.FLError;
import java.util.List;

/* loaded from: classes3.dex */
public class M0 {

    /* renamed from: a, reason: collision with root package name */
    private final InterfaceC1204o0 f30000a;

    /* renamed from: b, reason: collision with root package name */
    private N0 f30001b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f30002c;

    public class a implements InterfaceC1201n0 {
        public a() {
        }

        @Override // com.fl.saas.InterfaceC1201n0
        public void a(List list) {
            M0 m02 = M0.this;
            m02.f30001b = new N0(m02.f30002c);
            M0.this.f30001b.a(list, M0.this.f30000a);
        }

        @Override // com.fl.saas.InterfaceC1201n0
        public void onAdFailed(FLError fLError) {
            if (M0.this.f30000a == null || fLError == null || fLError.getCode() == 1001) {
                return;
            }
            M0.this.f30000a.b(fLError);
        }
    }

    public M0(InterfaceC1204o0 interfaceC1204o0, boolean z2) {
        this.f30000a = interfaceC1204o0;
        this.f30002c = z2;
    }

    public void a() {
        N0 n02 = this.f30001b;
        if (n02 != null) {
            n02.a();
        }
    }

    public void a(String str, String str2, boolean z2) {
        R0.a().a(str, str2, z2, new a());
    }
}
