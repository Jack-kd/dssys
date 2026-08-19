package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.requrl.RequestUrlModel;

/* loaded from: classes2.dex */
public class jl {

    /* renamed from: a, reason: collision with root package name */
    private boolean f14676a;

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static jl f14677a = new jl();
    }

    public synchronized void a(Context context, RequestUrlModel requestUrlModel) {
        try {
            if (!this.f14676a) {
                this.f14676a = true;
                if (requestUrlModel != null) {
                    String preloadAdURL = requestUrlModel.getPreloadAdURL();
                    String preloadImageUrl = requestUrlModel.getPreloadImageUrl();
                    hb hbVar = (hb) fn.a().b(context.getApplicationContext());
                    if (!TextUtils.isEmpty(preloadAdURL)) {
                        hbVar.b(new il(context, preloadAdURL));
                    }
                    if (!TextUtils.isEmpty(preloadImageUrl)) {
                        hbVar.b(new kl(context, preloadImageUrl));
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private jl() {
        this.f14676a = false;
        if (b.f14677a != null) {
            throw new RuntimeException("Singleton ...");
        }
    }

    public static jl a() {
        return b.f14677a;
    }
}
