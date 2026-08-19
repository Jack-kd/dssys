package com.anythink.core.common.inner.ui.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import com.anythink.core.basead.a;
import com.anythink.core.basead.b.c;
import com.anythink.core.common.d.s;
import com.anythink.core.common.inner.ui.BaseATActivity;
import com.anythink.core.common.l.f.a.a;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes2.dex */
public class ATMixSplashActivity extends BaseATActivity {

    /* renamed from: l, reason: collision with root package name */
    private String f5103l;

    /* renamed from: m, reason: collision with root package name */
    private FrameLayout f5104m;

    public static void b(Activity activity, c cVar) {
        if (cVar == null) {
            return;
        }
        Context contextG = s.b().g();
        if (activity != null && !activity.isFinishing()) {
            contextG = activity;
        }
        Intent intent = new Intent(contextG, (Class<?>) ATMixSplashActivity.class);
        intent.putExtra(a.C0043a.f1583d, cVar.f1636d);
        if (!(contextG instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        contextG.startActivity(intent);
        if (activity == null || activity.isFinishing()) {
            return;
        }
        activity.overridePendingTransition(0, 0);
    }

    @Override // com.anythink.core.common.inner.ui.BaseATActivity
    public final void a(Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(this);
        this.f5104m = frameLayout;
        setContentView(frameLayout);
        try {
            this.f5103l = getIntent().getStringExtra(a.C0043a.f1583d);
            a.InterfaceC0065a interfaceC0065aC = com.anythink.core.common.inner.mixad.a.a().c(this.f5103l);
            if (interfaceC0065aC != null) {
                interfaceC0065aC.a(this, this.f5104m);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.core.common.inner.ui.BaseATActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    private void a() {
        this.f5103l = getIntent().getStringExtra(a.C0043a.f1583d);
    }

    private void b() {
        a.InterfaceC0065a interfaceC0065aC = com.anythink.core.common.inner.mixad.a.a().c(this.f5103l);
        if (interfaceC0065aC != null) {
            interfaceC0065aC.a(this, this.f5104m);
        }
    }
}
