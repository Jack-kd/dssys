package com.smartdigimkt.j;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.util.Log;
import com.smartdigimkt.dlopt.api.ATApkDialogClickListener;
import com.smartdigimkt.dlopt.api.ATApkManager;
import com.smartdigimkt.k.b0;
import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class f implements ATApkManager {

    /* renamed from: a, reason: collision with root package name */
    public final b0 f40786a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f40787b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f40788c = new ArrayList();

    public f(Context context, u uVar) {
        this.f40786a = uVar;
        this.f40787b = context;
        new ArrayList();
    }

    public static void a(f fVar, Context context, com.smartdigimkt.k.r rVar, String str, String str2, int i2, ATApkDialogClickListener aTApkDialogClickListener) {
        fVar.getClass();
        if (!(context instanceof Activity)) {
            Log.e("sdm_ApkDeveloperManager", "showDialog() failed. context must be activity.");
            return;
        }
        try {
            new AlertDialog.Builder(context).setMessage(str).setNegativeButton(a(context, "btn_cancel", new Object[0]), new d(aTApkDialogClickListener)).setPositiveButton(str2, new c(fVar, aTApkDialogClickListener, i2, rVar)).create().show();
        } catch (Throwable th) {
            Log.e("sdm_ApkDeveloperManager", "showDialog() >>> failed: " + th.getMessage());
        }
    }

    @Override // com.smartdigimkt.dlopt.api.ATApkManager
    public final void showOpenOrInstallAppDialog(ATApkDialogClickListener aTApkDialogClickListener) {
        Context context = this.f40787b;
        if (!(context instanceof Activity)) {
            Log.e("sdm_ApkDeveloperManager", "showOpenOrInstallAppDialog() failed. context must be activity.");
            return;
        }
        b0 b0Var = this.f40786a;
        if (b0Var == null) {
            Log.e("sdm_ApkDeveloperManager", "showOpenOrInstallAppDialog() >>> context: " + this.f40787b + " apkManager is null.");
            com.smartdigimkt.b4.e.a().a(new e(aTApkDialogClickListener, 0));
            return;
        }
        b bVar = new b(this, aTApkDialogClickListener, context);
        com.smartdigimkt.k.o oVar = ((u) b0Var).f40834o;
        if (oVar == null || oVar.f41162b == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(5);
        arrayList.add(2);
        oVar.f41163c.b(new com.smartdigimkt.k.k(oVar, arrayList, 0, bVar));
    }

    public static String a(Context context, String str, Object... objArr) {
        if (context == null) {
            return "";
        }
        return context.getString(com.smartdigimkt.c5.k.a(context, str, "string"), objArr);
    }
}
