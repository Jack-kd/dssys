package com.smartdigimkt.j;

import android.content.DialogInterface;
import com.smartdigimkt.dlopt.api.ATApkDialogClickListener;
import com.smartdigimkt.k.b0;

/* loaded from: classes5.dex */
public final class c implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ATApkDialogClickListener f40779a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40780b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.k.r f40781c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ f f40782d;

    public c(f fVar, ATApkDialogClickListener aTApkDialogClickListener, int i2, com.smartdigimkt.k.r rVar) {
        this.f40782d = fVar;
        this.f40779a = aTApkDialogClickListener;
        this.f40780b = i2;
        this.f40781c = rVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        ATApkDialogClickListener aTApkDialogClickListener = this.f40779a;
        if (aTApkDialogClickListener != null) {
            aTApkDialogClickListener.onButtonClick(1);
        }
        dialogInterface.dismiss();
        int i3 = this.f40780b;
        if (i3 == 2) {
            ((u) this.f40782d.f40786a).b(this.f40781c, 3);
        } else if (i3 == 1) {
            b0 b0Var = this.f40782d.f40786a;
            com.smartdigimkt.k.r rVar = this.f40781c;
            com.smartdigimkt.k.p pVar = ((u) b0Var).f40836q;
            if (pVar != null) {
                pVar.a(rVar, 5);
            }
        }
    }
}
