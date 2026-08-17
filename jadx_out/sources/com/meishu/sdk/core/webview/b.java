package com.meishu.sdk.core.webview;

import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.r0;
import java.util.Timer;

/* loaded from: classes4.dex */
public class b {

    /* renamed from: b, reason: collision with root package name */
    public InterfaceC0679b f32100b;

    /* renamed from: c, reason: collision with root package name */
    public InterfaceC0679b f32101c;

    /* renamed from: f, reason: collision with root package name */
    public volatile int f32104f;

    /* renamed from: a, reason: collision with root package name */
    public final Object f32099a = new Object();

    /* renamed from: d, reason: collision with root package name */
    public boolean f32102d = false;

    /* renamed from: e, reason: collision with root package name */
    public volatile Boolean f32103e = null;

    public class a extends com.meishu.sdk.core.safe.n {

        /* renamed from: com.meishu.sdk.core.webview.b$a$a, reason: collision with other inner class name */
        public class C0678a extends com.meishu.sdk.core.safe.l {
            public C0678a() {
            }

            @Override // com.meishu.sdk.core.safe.l
            public void safeRun() {
                b.a(b.this, false, 3);
            }
        }

        public a() {
        }

        @Override // com.meishu.sdk.core.safe.n
        public void a() {
            cancel();
            SdkHandler.getInstance().runOnUiThread(new C0678a());
        }
    }

    /* renamed from: com.meishu.sdk.core.webview.b$b, reason: collision with other inner class name */
    public interface InterfaceC0679b {
        void a(boolean z2, int i2);
    }

    public b(InterfaceC0679b interfaceC0679b) {
        this.f32100b = interfaceC0679b;
    }

    public void a(InterfaceC0679b interfaceC0679b) {
        this.f32101c = interfaceC0679b;
        if (this.f32103e != null) {
            if (interfaceC0679b != null) {
                interfaceC0679b.a(this.f32103e.booleanValue(), this.f32104f);
                this.f32101c = null;
                return;
            }
            return;
        }
        if (this.f32102d) {
            return;
        }
        this.f32102d = true;
        try {
            new Timer().schedule(new a(), r0.b() > 0 ? r0.b() : 1000);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(b bVar, boolean z2, int i2) {
        synchronized (bVar.f32099a) {
            try {
                if (bVar.f32103e == null) {
                    bVar.f32103e = Boolean.valueOf(z2);
                    bVar.f32104f = i2;
                }
                InterfaceC0679b interfaceC0679b = bVar.f32100b;
                if (interfaceC0679b != null) {
                    interfaceC0679b.a(z2, i2);
                    bVar.f32100b = null;
                }
                InterfaceC0679b interfaceC0679b2 = bVar.f32101c;
                if (interfaceC0679b2 != null) {
                    interfaceC0679b2.a(z2, i2);
                    bVar.f32101c = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
