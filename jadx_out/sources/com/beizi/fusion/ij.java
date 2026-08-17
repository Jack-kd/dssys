package com.beizi.fusion;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.beizi.ad.internal.activity.DownloadAppInfoActivity;
import com.beizi.ad.internal.splash.SplashUnifiedActionData;
import com.beizi.ad.internal.splash.SplashUnifiedAdResponse;
import com.beizi.fusion.rn;

/* loaded from: classes2.dex */
public class ij extends l3 {

    /* renamed from: P, reason: collision with root package name */
    private jo f14493P;

    /* renamed from: Q, reason: collision with root package name */
    private View f14494Q;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f14495a;

        public a(View view) {
            this.f14495a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f14495a != null && ij.this.f14493P != null && ij.this.f14797c != null) {
                    ij.this.f14797c.f(this.f14495a, ij.this.f14806l);
                    if (ij.this.f14814t) {
                        ij.this.f14815u = true;
                        v3.b().a(ij.this.f14812r);
                    }
                    if (so.c(this.f14495a)) {
                        Log.e("BeiZisAd", "enter BeiZi ad show");
                        ij.this.f14493P.onAdShown();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f14497a;

        public b(int i2) {
            this.f14497a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ij.this.f14493P.onAdFailed(this.f14497a);
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ SplashUnifiedAdResponse f14499a;

        public c(SplashUnifiedAdResponse splashUnifiedAdResponse) {
            this.f14499a = splashUnifiedAdResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ij.this.f14493P != null) {
                Log.e("BeiZisAd", "enter BeiZi ad load");
                ij.this.f14493P.a(this.f14499a);
            }
        }
    }

    public ij(Context context, String str) {
        super(context, str, wh.SPLASHUNIFIED);
    }

    public void a(jo joVar) {
        this.f14493P = joVar;
    }

    public void a(View view) {
        if (view == null) {
            return;
        }
        try {
            this.f14494Q = view;
            view.post(new a(view));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(SplashUnifiedActionData splashUnifiedActionData) {
        Context context;
        try {
            if (this.f14493P != null && splashUnifiedActionData != null && this.f14494Q != null) {
                int clickType = splashUnifiedActionData.getClickType();
                if (clickType == 10) {
                    if (this.f14797c != null && this.f14798d && (context = this.f14494Q.getContext()) != null) {
                        Intent intent = new Intent(context, (Class<?>) DownloadAppInfoActivity.class);
                        String strJ = this.f14797c.j();
                        String strO = this.f14797c.o();
                        String strN = this.f14797c.n();
                        if (TextUtils.isEmpty(strO)) {
                            strO = strN;
                        }
                        String strP = this.f14797c.p();
                        String strR = this.f14797c.r();
                        intent.putExtra("title_content_key", strJ);
                        intent.putExtra("privacy_content_key", strP);
                        intent.putExtra("permission_content_key", strO);
                        intent.putExtra("intro_content_key", strR);
                        intent.addFlags(com.bykv.vk.component.ttvideo.player.C.ENCODING_PCM_MU_LAW);
                        context.startActivity(intent);
                        return;
                    }
                    return;
                }
                if (clickType == 20) {
                    this.f14493P.onAdClosed();
                    return;
                }
                rn rnVar = this.f14797c;
                if (rnVar == null) {
                    return;
                }
                rnVar.c(true);
                h5 h5Var = new h5();
                if (!TextUtils.isEmpty(splashUnifiedActionData.getDownX())) {
                    h5Var.g(splashUnifiedActionData.getDownX());
                }
                if (!TextUtils.isEmpty(splashUnifiedActionData.getDownY())) {
                    h5Var.h(splashUnifiedActionData.getDownY());
                }
                if (!TextUtils.isEmpty(splashUnifiedActionData.getDownRawX())) {
                    h5Var.e(splashUnifiedActionData.getDownRawX());
                }
                if (!TextUtils.isEmpty(splashUnifiedActionData.getDownRawY())) {
                    h5Var.f(splashUnifiedActionData.getDownRawY());
                }
                if (!TextUtils.isEmpty(splashUnifiedActionData.getUpX())) {
                    h5Var.c(splashUnifiedActionData.getUpX());
                }
                if (!TextUtils.isEmpty(splashUnifiedActionData.getUpY())) {
                    h5Var.d(splashUnifiedActionData.getUpY());
                }
                if (!TextUtils.isEmpty(splashUnifiedActionData.getUpRawX())) {
                    h5Var.a(splashUnifiedActionData.getUpRawX());
                }
                if (!TextUtils.isEmpty(splashUnifiedActionData.getUpRawY())) {
                    h5Var.b(splashUnifiedActionData.getUpRawY());
                }
                this.f14797c.a(this.f14494Q, h5Var, String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis() + 10), this.f14803i, this.f14806l, clickType);
                this.f14803i = true;
                this.f14493P.onAdClick();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.l3
    public void a(int i2) {
        if (this.f14493P == null || this.f14804j || this.f14801g) {
            return;
        }
        this.f14804j = true;
        Handler handler = this.f14789J;
        if (handler != null) {
            handler.post(new b(i2));
        }
    }

    @Override // com.beizi.fusion.l3
    public void a(rn rnVar) {
        if (TextUtils.isEmpty(rnVar.d0())) {
            a(3);
            return;
        }
        e(rnVar.V());
        a(rnVar.c());
        b(rnVar.j0());
        SplashUnifiedAdResponse splashUnifiedAdResponse = new SplashUnifiedAdResponse();
        splashUnifiedAdResponse.setImageUrl(rnVar.d0());
        rn.e eVarI = rnVar.I();
        if (eVarI != null) {
            splashUnifiedAdResponse.setIconUrl(eVarI.a());
        }
        rn.e eVarH = rnVar.h();
        if (eVarH != null) {
            splashUnifiedAdResponse.setTextUrl(eVarH.a());
        }
        splashUnifiedAdResponse.setPrice(rnVar.V());
        if (rnVar.j0()) {
            splashUnifiedAdResponse.setElements("应用名称：" + rnVar.j() + " | 开发者：" + rnVar.k() + " | 应用版本：" + rnVar.q() + " | 权限详情 | 隐私协议 | 功能介绍");
        }
        splashUnifiedAdResponse.setDownloadApp(rnVar.j0());
        Handler handler = this.f14789J;
        if (handler != null) {
            handler.post(new c(splashUnifiedAdResponse));
        }
    }
}
