package com.smartdigimkt.j;

import android.content.DialogInterface;
import com.smartdigimkt.dlopt.api.ATApkDialogClickListener;

/* loaded from: classes5.dex */
public final class d implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ATApkDialogClickListener f40783a;

    public d(ATApkDialogClickListener aTApkDialogClickListener) {
        this.f40783a = aTApkDialogClickListener;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        ATApkDialogClickListener aTApkDialogClickListener = this.f40783a;
        if (aTApkDialogClickListener != null) {
            aTApkDialogClickListener.onButtonClick(2);
        }
        dialogInterface.dismiss();
    }
}
