package com.smartdigimkt.j;

import com.smartdigimkt.dlopt.api.ATApkDialogClickListener;

/* loaded from: classes5.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ATApkDialogClickListener f40784a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40785b;

    public e(ATApkDialogClickListener aTApkDialogClickListener, int i2) {
        this.f40784a = aTApkDialogClickListener;
        this.f40785b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ATApkDialogClickListener aTApkDialogClickListener = this.f40784a;
        if (aTApkDialogClickListener != null) {
            aTApkDialogClickListener.onShowResult(this.f40785b);
        }
    }
}
