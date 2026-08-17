package com.kwad.components.core.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import com.kwad.sdk.utils.cb;
import com.kwad.sdk.utils.cc;
import com.kwad.sdk.widget.KSFrameLayout;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes4.dex */
public final class a extends KSFrameLayout implements cc.a {
    private InterfaceC0573a avj;
    private boolean avk;
    private boolean avl;
    private int avm;
    private boolean avn;
    private long avo;
    private boolean avp;
    private final float avq;
    private final int avr;
    private final View bZ;
    private final cc ca;

    /* renamed from: com.kwad.components.core.widget.a$a, reason: collision with other inner class name */
    public interface InterfaceC0573a {
        void aD();

        void ae();

        void af();

        void b(View view);

        void onWindowFocusChanged(boolean z2);
    }

    public a(Context context, View view) {
        super(context, view);
        this.ca = new cc(this);
        this.avm = 5;
        this.bZ = view;
        setLayoutParams(new ViewGroup.LayoutParams(1, 1));
        float fKd = com.kwad.sdk.core.config.e.Kd();
        this.avq = fKd;
        setVisiblePercent(fKd);
        float fKf = com.kwad.sdk.core.config.e.Kf();
        this.avr = (int) ((fKf < 0.0f ? 1.0f : fKf) * 1000.0f);
    }

    private void zJ() {
        InterfaceC0573a interfaceC0573a;
        if (this.avr == 0 && (interfaceC0573a = this.avj) != null) {
            interfaceC0573a.b(this.bZ);
            return;
        }
        Message messageObtainMessage = this.ca.obtainMessage();
        messageObtainMessage.what = 2;
        this.ca.sendMessageDelayed(messageObtainMessage, this.avr);
    }

    private void zK() {
        this.ca.removeCallbacksAndMessages(null);
        this.avl = false;
    }

    private void zL() {
        if (this.avl) {
            return;
        }
        this.avl = true;
        this.ca.sendEmptyMessage(1);
    }

    @Override // com.kwad.sdk.widget.KSFrameLayout, com.kwad.sdk.widget.k
    public final void H(View view) {
        InterfaceC0573a interfaceC0573a;
        InterfaceC0573a interfaceC0573a2;
        super.H(view);
        if (this.avr == 0 && (interfaceC0573a2 = this.avj) != null) {
            interfaceC0573a2.b(view);
            return;
        }
        if (!this.avn) {
            this.avn = true;
            this.avo = System.currentTimeMillis();
            zK();
            zJ();
            return;
        }
        if (System.currentTimeMillis() - this.avo <= this.avr || (interfaceC0573a = this.avj) == null) {
            return;
        }
        interfaceC0573a.b(view);
        zK();
    }

    @Override // com.kwad.sdk.utils.cc.a
    public final void a(Message message) {
        if (this.avk) {
            return;
        }
        int i2 = message.what;
        if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            if (!cb.a(this.bZ, (int) (this.avq * 100.0f), false)) {
                this.avm = 5;
                this.ca.sendEmptyMessage(1);
                return;
            } else {
                InterfaceC0573a interfaceC0573a = this.avj;
                if (interfaceC0573a != null) {
                    interfaceC0573a.b(this.bZ);
                    return;
                }
                return;
            }
        }
        if (!cb.a(this.bZ, (int) (this.avq * 100.0f), false)) {
            InterfaceC0573a interfaceC0573a2 = this.avj;
            if (interfaceC0573a2 != null && !this.avp) {
                interfaceC0573a2.aD();
            }
            this.avp = true;
            cc ccVar = this.ca;
            int i3 = this.avm;
            this.avm = i3 - 1;
            ccVar.sendEmptyMessageDelayed(1, i3 > 0 ? 100L : 500L);
            return;
        }
        zK();
        if (this.avn) {
            InterfaceC0573a interfaceC0573a3 = this.avj;
            if (interfaceC0573a3 != null) {
                interfaceC0573a3.b(this.bZ);
            }
        } else {
            this.avn = true;
            this.avo = System.currentTimeMillis();
            zJ();
        }
        this.avp = false;
        cc ccVar2 = this.ca;
        int i4 = this.avm;
        this.avm = i4 - 1;
        ccVar2.sendEmptyMessageDelayed(1, i4 > 0 ? 100L : 500L);
    }

    @Override // com.kwad.sdk.widget.KSFrameLayout
    public final void ae() {
        super.ae();
        this.avm = 5;
        this.avk = false;
        this.avn = false;
        zL();
        com.kwad.sdk.core.d.c.d("ceshi", "onViewAttached");
        InterfaceC0573a interfaceC0573a = this.avj;
        if (interfaceC0573a != null) {
            interfaceC0573a.ae();
        }
    }

    @Override // com.kwad.sdk.widget.KSFrameLayout
    public final void af() {
        super.af();
        zK();
        this.avm = 0;
        this.avo = 0L;
        this.avk = true;
        InterfaceC0573a interfaceC0573a = this.avj;
        if (interfaceC0573a != null) {
            interfaceC0573a.af();
        }
    }

    @Override // com.kwad.sdk.widget.KSFrameLayout, android.view.View
    public final void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        com.kwad.sdk.core.d.c.d("AdExposureView", "onWindowFocusChanged hasWindowFocus:" + z2);
        InterfaceC0573a interfaceC0573a = this.avj;
        if (interfaceC0573a != null) {
            interfaceC0573a.onWindowFocusChanged(z2);
        }
    }

    public final void setViewCallback(InterfaceC0573a interfaceC0573a) {
        this.avj = interfaceC0573a;
    }

    public final void zM() {
        zL();
    }
}
