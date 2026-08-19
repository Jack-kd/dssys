package com.sigmob.sdk.nativead;

import android.content.Context;
import android.graphics.Rect;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.czhj.sdk.logger.SigmobLog;

/* renamed from: com.sigmob.sdk.nativead.p, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1360p extends View {

    /* renamed from: a, reason: collision with root package name */
    private ad f38421a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f38422b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f38423c;

    /* renamed from: d, reason: collision with root package name */
    private InterfaceC1345a f38424d;

    /* renamed from: e, reason: collision with root package name */
    private int f38425e;

    /* renamed from: f, reason: collision with root package name */
    private long f38426f;

    /* renamed from: g, reason: collision with root package name */
    private int f38427g;

    /* renamed from: h, reason: collision with root package name */
    private int f38428h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f38429i;

    /* renamed from: j, reason: collision with root package name */
    private int f38430j;

    public C1360p(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        boolean z2 = false;
        if (!a() || !e()) {
            InterfaceC1345a interfaceC1345a = this.f38424d;
            if (interfaceC1345a != null && this.f38429i) {
                interfaceC1345a.e();
            }
            this.f38429i = false;
            this.f38426f = 0L;
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        int iA = a(viewGroup);
        int height = viewGroup.getHeight() * viewGroup.getWidth();
        boolean z3 = height > 0 && ((float) iA) >= (((float) this.f38425e) / 100.0f) * ((float) height);
        if (iA > 0) {
            this.f38429i = true;
            InterfaceC1345a interfaceC1345a2 = this.f38424d;
            if (interfaceC1345a2 != null) {
                interfaceC1345a2.f();
            }
        } else {
            this.f38429i = false;
            this.f38426f = 0L;
            InterfaceC1345a interfaceC1345a3 = this.f38424d;
            if (interfaceC1345a3 != null) {
                interfaceC1345a3.e();
            }
        }
        if (iA <= 0) {
            InterfaceC1345a interfaceC1345a4 = this.f38424d;
            if (interfaceC1345a4 == null || !this.f38429i) {
                return;
            }
            interfaceC1345a4.e();
            return;
        }
        if (!z3 || !this.f38429i) {
            InterfaceC1345a interfaceC1345a5 = this.f38424d;
            if (interfaceC1345a5 != null) {
                interfaceC1345a5.c();
            }
            InterfaceC1345a interfaceC1345a6 = this.f38424d;
            if (interfaceC1345a6 != null) {
                interfaceC1345a6.a(false);
            }
            this.f38426f = 0L;
            return;
        }
        if (this.f38426f == 0) {
            this.f38426f = System.currentTimeMillis();
        }
        if (this.f38426f > 0 && System.currentTimeMillis() - this.f38426f >= this.f38427g * 1000) {
            z2 = true;
        }
        InterfaceC1345a interfaceC1345a7 = this.f38424d;
        if (interfaceC1345a7 != null) {
            interfaceC1345a7.d();
        }
        InterfaceC1345a interfaceC1345a8 = this.f38424d;
        if (interfaceC1345a8 != null) {
            interfaceC1345a8.a(z2);
        }
    }

    private void c() {
        f();
        this.f38421a = null;
    }

    private void d() {
        ad adVar = this.f38421a;
        if (adVar == null || !adVar.b()) {
            return;
        }
        SigmobLog.d("-----------startTimer----------");
        this.f38421a.removeCallbacksAndMessages(null);
        this.f38421a.a();
        this.f38421a.a(false);
    }

    private boolean e() {
        return this.f38422b && this.f38428h == 0 && this.f38423c;
    }

    private void f() {
        b();
        ad adVar = this.f38421a;
        if (adVar == null || adVar.b()) {
            return;
        }
        SigmobLog.d("-----------stopTimer----------");
        this.f38421a.removeCallbacksAndMessages(null);
        this.f38421a.a(true);
    }

    public int a(View view) {
        Rect rect = new Rect();
        if (view.isShown() && view.getGlobalVisibleRect(rect)) {
            return rect.height() * rect.width();
        }
        return 0;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f38422b = true;
        SigmobLog.d("---------onAttachedToWindow---------");
        d();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f38422b = false;
        SigmobLog.d("---------onDetachedFromWindow----------");
        f();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        SigmobLog.d("---------onFinishTemporaryDetach-------------");
        d();
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        SigmobLog.d("---------onStartTemporaryDetach-----------");
        f();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        SigmobLog.d("---------onVisibilityChanged---------" + i2);
        this.f38430j = i2;
        if (i2 == 0) {
            d();
        } else {
            f();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        SigmobLog.d("---------onWindowFocusChanged: hasWindowFocus: " + z2);
        this.f38423c = z2;
        if (this.f38429i) {
            b();
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.f38428h = i2;
        SigmobLog.d("---------onWindowVisibilityChanged: visibility: " + i2);
        if (i2 == 0) {
            d();
        } else {
            f();
        }
    }

    public void setAdVisibilityStatusChangeListener(InterfaceC1345a interfaceC1345a) {
        this.f38424d = interfaceC1345a;
    }

    public C1360p(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C1360p(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f38422b = false;
        this.f38423c = true;
        this.f38426f = 0L;
        this.f38427g = 0;
        this.f38428h = -1;
        this.f38429i = false;
        this.f38430j = -1;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
    }

    public void a(int i2, int i3) {
        this.f38423c = true;
        if (this.f38421a != null) {
            c();
        }
        this.f38423c = true;
        this.f38425e = i2;
        this.f38427g = i3;
        this.f38421a = new ad(Looper.getMainLooper()) { // from class: com.sigmob.sdk.nativead.p.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (87108 == message.what && com.sigmob.sdk.base.utils.v.b(C1360p.this.f38424d)) {
                    C1360p.this.b();
                    a();
                }
            }
        };
        d();
    }

    public boolean a() {
        return getVisibility() == 0 && this.f38430j == 0 && getParent() != null;
    }
}
