package com.beizi.fusion;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.WindowManager;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.z9;
import com.beizi.fusion.zm;

/* loaded from: classes2.dex */
public class e1 extends ca {

    public class a implements zm.e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f13589a;

        public a(View view) {
            this.f13589a = view;
        }

        @Override // com.beizi.fusion.zm.e
        public void a(String str) {
            e1.this.a(this.f13589a, str);
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialogInterface) {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.beizi.fusion.fc
    public void a(View view, int i2) {
        ScopeExpressContainer expressRoot;
        Context context;
        if (!(view instanceof bd) || (expressRoot = ((bd) view).getExpressRoot()) == null || expressRoot.getRootView() == null || (context = expressRoot.getRootView().getContext()) == null) {
            return;
        }
        a(context, view);
    }

    private void a(Context context, View view) {
        try {
            new zm.b(context).a(new a(view)).a().show();
        } catch (WindowManager.BadTokenException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void a(View view, String str) {
        ScopeExpressContainer expressRoot;
        if (view instanceof bd) {
            expressRoot = ((bd) view).getExpressRoot();
        } else {
            expressRoot = (ScopeExpressContainer) view.getTag(gm.a(this.f13234c, "scope_root_container"));
        }
        if (expressRoot != null) {
            ScopeExpressContainer.d.a(expressRoot, str);
        }
        this.f13232a.a(z9.a.COMPLAIN_CONFIRM, view, null);
    }
}
