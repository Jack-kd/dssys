package com.smartdigimkt.k2;

import com.smartdigimkt.sdk.basead.ui.specialnote.BaseSpecialNoteView;

/* loaded from: classes5.dex */
public final class a0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f41281a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f41282b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f41283c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ b0 f41284d;

    public a0(b0 b0Var, int i2, long j2, long j3) {
        this.f41284d = b0Var;
        this.f41281a = i2;
        this.f41282b = j2;
        this.f41283c = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BaseSpecialNoteView baseSpecialNoteView = this.f41284d.f41287i;
        if (baseSpecialNoteView != null) {
            if (baseSpecialNoteView.getParent() == null) {
                b0 b0Var = this.f41284d;
                b0Var.f41287i.initSetting(b0Var.f41307d, this.f41281a, new z(this), this.f41282b, this.f41283c);
                b0 b0Var2 = this.f41284d;
                b0Var2.f41307d.addView(b0Var2.f41287i);
                return;
            }
            if (this.f41281a == 7) {
                b0 b0Var3 = this.f41284d;
                if (!com.smartdigimkt.z.z.h(b0Var3.f41305b, b0Var3.f41306c) || this.f41284d.f41287i.hasBeenShow()) {
                    return;
                }
                this.f41284d.f41287i.pause();
                this.f41284d.f41287i.reset(this.f41281a, this.f41282b, this.f41283c);
                this.f41284d.f41287i.resume();
            }
        }
    }
}
