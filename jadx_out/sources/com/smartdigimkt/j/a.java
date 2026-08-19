package com.smartdigimkt.j;

import android.content.Context;
import com.smartdigimkt.dlopt.api.ATApkDialogClickListener;

/* loaded from: classes5.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.smartdigimkt.k.r f40774a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b f40775b;

    public a(b bVar, com.smartdigimkt.k.r rVar) {
        this.f40775b = bVar;
        this.f40774a = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f40774a.f41196s == com.smartdigimkt.k.c.FINISH) {
            if (((u) this.f40775b.f40778c.f40786a).a(this.f40774a.f41192o)) {
                b bVar = this.f40775b;
                f fVar = bVar.f40778c;
                Context context = bVar.f40777b;
                com.smartdigimkt.k.r rVar = this.f40774a;
                Object[] objArr = {rVar.f41180c};
                fVar.getClass();
                String strA = f.a(context, "btn_install_tip", objArr);
                b bVar2 = this.f40775b;
                bVar2.f40778c.getClass();
                f.a(fVar, context, rVar, strA, f.a(bVar2.f40777b, "btn_install", new Object[0]), 1, this.f40775b.f40776a);
                b bVar3 = this.f40775b;
                f fVar2 = bVar3.f40778c;
                ATApkDialogClickListener aTApkDialogClickListener = bVar3.f40776a;
                fVar2.getClass();
                com.smartdigimkt.b4.e.a().a(new e(aTApkDialogClickListener, 1));
                return;
            }
        }
        if (this.f40774a.f41196s == com.smartdigimkt.k.c.INSTALLED) {
            b bVar4 = this.f40775b;
            f fVar3 = bVar4.f40778c;
            Context context2 = bVar4.f40777b;
            com.smartdigimkt.k.r rVar2 = this.f40774a;
            Object[] objArr2 = {rVar2.f41180c};
            fVar3.getClass();
            String strA2 = f.a(context2, "btn_open_tip", objArr2);
            b bVar5 = this.f40775b;
            bVar5.f40778c.getClass();
            f.a(fVar3, context2, rVar2, strA2, f.a(bVar5.f40777b, "btn_open", new Object[0]), 2, this.f40775b.f40776a);
            b bVar6 = this.f40775b;
            f fVar4 = bVar6.f40778c;
            ATApkDialogClickListener aTApkDialogClickListener2 = bVar6.f40776a;
            fVar4.getClass();
            com.smartdigimkt.b4.e.a().a(new e(aTApkDialogClickListener2, 2));
        }
    }
}
