package com.sigmob.sdk.base.views;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.sigmob.sdk.base.models.BaseAdUnit;

/* loaded from: classes4.dex */
public class af {

    /* renamed from: a, reason: collision with root package name */
    private final BaseAdUnit f36761a;

    /* renamed from: b, reason: collision with root package name */
    private final a f36762b;

    public interface a {
        void a();

        void b();
    }

    public af(BaseAdUnit baseAdUnit, a aVar) {
        this.f36761a = baseAdUnit;
        this.f36762b = aVar;
    }

    @JavascriptInterface
    public boolean canInstall(String str) {
        if (this.f36761a == null) {
            return false;
        }
        if (TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(this.f36761a.getApkMd5())) {
                str = "";
            } else {
                str = this.f36761a.getApkMd5() + ".apk";
            }
            if (!TextUtils.isEmpty(this.f36761a.getApkName())) {
                str = this.f36761a.getApkName();
            }
        }
        return this.f36761a.canInstall(str);
    }

    @JavascriptInterface
    public boolean canOpen(String str) {
        BaseAdUnit baseAdUnit;
        return (!TextUtils.isEmpty(str) || (baseAdUnit = this.f36761a) == null) ? com.sigmob.sdk.base.o.a().b(str).booleanValue() : baseAdUnit.canOpen();
    }

    @JavascriptInterface
    public int getInteractionType() {
        BaseAdUnit baseAdUnit = this.f36761a;
        if (baseAdUnit == null) {
            return 0;
        }
        return baseAdUnit.getInteractionType();
    }

    @JavascriptInterface
    public int getSubInteractionType() {
        BaseAdUnit baseAdUnit = this.f36761a;
        if (baseAdUnit == null) {
            return 0;
        }
        return baseAdUnit.getsubInteractionType();
    }

    @JavascriptInterface
    public void hideSystemUI() {
        if (com.sigmob.sdk.base.utils.v.b(this.f36762b)) {
            this.f36762b.b();
        }
    }

    @JavascriptInterface
    public boolean isOpenListReport() {
        com.sigmob.sdk.base.o oVarA = com.sigmob.sdk.base.o.a();
        return (oVarA.S().isEmpty() || com.sigmob.sdk.base.services.b.a() || !oVarA.L().booleanValue()) ? false : true;
    }

    @JavascriptInterface
    public void onOpenListReport() {
        com.sigmob.sdk.base.services.b.c();
    }

    @JavascriptInterface
    public void showSystemUI() {
        if (com.sigmob.sdk.base.utils.v.b(this.f36762b)) {
            this.f36762b.a();
        }
    }
}
