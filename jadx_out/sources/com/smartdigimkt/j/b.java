package com.smartdigimkt.j;

import android.content.Context;
import com.smartdigimkt.dlopt.api.ATApkDialogClickListener;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ATApkDialogClickListener f40776a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f40777b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f40778c;

    public b(f fVar, ATApkDialogClickListener aTApkDialogClickListener, Context context) {
        this.f40778c = fVar;
        this.f40776a = aTApkDialogClickListener;
        this.f40777b = context;
    }

    public final void a(ArrayList arrayList) {
        com.smartdigimkt.k.r rVar;
        if (arrayList.size() == 0) {
            f fVar = this.f40778c;
            ATApkDialogClickListener aTApkDialogClickListener = this.f40776a;
            fVar.getClass();
            com.smartdigimkt.b4.e.a().a(new e(aTApkDialogClickListener, 0));
            return;
        }
        int i2 = 0;
        while (true) {
            try {
                if (i2 >= arrayList.size()) {
                    rVar = null;
                    break;
                }
                rVar = (com.smartdigimkt.k.r) arrayList.get(i2);
                if (!this.f40778c.f40788c.contains(rVar.f41192o)) {
                    break;
                } else {
                    i2++;
                }
            } catch (Throwable th) {
                th.getMessage();
                return;
            }
        }
        if (rVar == null) {
            this.f40778c.f40788c.clear();
            rVar = (com.smartdigimkt.k.r) arrayList.get(0);
        }
        this.f40778c.f40788c.add(rVar.f41192o);
        com.smartdigimkt.b4.e.a().a(new a(this, rVar));
    }
}
