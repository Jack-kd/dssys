package com.beizi.fusion;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.LandingPageWebView;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.link.LinkModel;
import com.beizi.fusion.fd;

/* loaded from: classes2.dex */
public class j1 extends ja {

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f14516a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f14517b;

        public a(View view, ViewGroup viewGroup) {
            this.f14516a = view;
            this.f14517b = viewGroup;
        }

        @Override // java.lang.Runnable
        public void run() {
            LandingPageWebView landingPageWebView = new LandingPageWebView(this.f14516a.getContext());
            LinkModel link = j1.this.f13233b != null ? j1.this.f13233b.getLink() : null;
            if (link == null || TextUtils.isEmpty(link.getLandingPageURL())) {
                return;
            }
            this.f14517b.addView(landingPageWebView, new ViewGroup.LayoutParams(-1, -1));
            landingPageWebView.setAllowDeeplinkDirect(!link.shouldWebIntercept());
            landingPageWebView.loadUrl(link.getLandingPageURL());
        }
    }

    private boolean b(LinkModel linkModel) {
        if (linkModel == null) {
            return false;
        }
        jq jqVarA = jq.a(this.f13234c);
        if (jqVarA.a(linkModel.getWxOriginalId(), linkModel.getWxProgramPath(), linkModel.getWxExtraData())) {
            return true;
        }
        return jqVarA.b(linkModel.getWxNativeCanvas());
    }

    @Override // com.beizi.fusion.ja
    public void a(LinkModel linkModel, View view, int i2) {
        if (linkModel == null || view == null || view.getContext() == null || b(linkModel) || i2 == fd.a.LANDING_PAGE_INTERACTIVE_TRIGGER.getEventCode()) {
            return;
        }
        a(view.getContext(), linkModel);
    }

    public Bundle a(LinkModel linkModel) {
        return new Bundle();
    }

    public void a(Context context, LinkModel linkModel) {
        a(context, linkModel.getLandingPageURL(), a(linkModel));
    }

    private void a(Context context, String str, Bundle bundle) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        zf.a(context, str, bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(View view) {
        ScopeExpressContainer expressRoot;
        ViewGroup viewGroupG;
        if (view instanceof ScopeExpressContainer) {
            expressRoot = (ScopeExpressContainer) view;
        } else {
            expressRoot = view instanceof je ? ((je) view).getExpressRoot() : null;
        }
        if (expressRoot == null || (viewGroupG = ScopeExpressContainer.d.g(expressRoot)) == null) {
            return;
        }
        viewGroupG.post(new a(view, viewGroupG));
    }
}
