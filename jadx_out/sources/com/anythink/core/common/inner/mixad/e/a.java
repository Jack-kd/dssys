package com.anythink.core.common.inner.mixad.e;

import com.anythink.core.api.ATAdAppInfo;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.w;
import com.anythink.core.common.h.y;
import com.anythink.core.common.l.g.d;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class a extends w implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    final String f4750a = a.class.getSimpleName();

    public a(d dVar) {
        n(dVar.getIconImageUrl());
        Double starRating = dVar.getStarRating();
        if (starRating != null) {
            i(starRating.intValue());
        }
        p(dVar.getMainImageUrl());
        l(dVar.getTitle());
        r(dVar.getCallToActionText());
        m(dVar.getDescriptionText());
        q(dVar.getAdChoiceIconUrl());
        a(dVar.getAdLogo());
        E(dVar.getAdFrom());
        D(dVar.getWarning());
        C(dVar.getDomain());
        ATAdAppInfo adAppInfo = dVar.getAdAppInfo();
        if (adAppInfo != null) {
            if (s.b().G()) {
                dVar.getAdAppInfo().toString();
            }
            x(adAppInfo.getPublisher());
            y(adAppInfo.getAppVersion());
            z(adAppInfo.getAppPrivacyUrl());
            A(adAppInfo.getAppPermissonUrl());
            c(adAppInfo.getFunctionUrl());
        }
        a(new c(dVar));
    }

    @Override // com.anythink.core.common.h.w
    public final boolean E() {
        return true;
    }

    @Override // com.anythink.core.common.h.w
    public final int a() {
        return 10;
    }

    @Override // com.anythink.core.common.h.w
    public final List<String> b(y yVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(n());
        return arrayList;
    }

    @Override // com.anythink.core.common.h.w
    public final List<String> c(y yVar) {
        return new ArrayList();
    }

    @Override // com.anythink.core.common.h.w
    public final String h() {
        return "";
    }

    public String toString() {
        return "ThirdPartyAdContent{, offerId='" + this.f4464m + "', creativeId='" + this.f4465n + "', title='" + this.f4466o + "', desc='" + this.f4467p + "', iconUrl='" + this.f4468q + "', mainImageUrl='" + this.f4469r + "', endCardImageUrl='" + this.f4470s + "', adChoiceUrl='" + this.f4471t + "', ctaText='" + this.f4472u + "', videoUrl='" + this.f4473v + "', previewUrl='" + this.f4474w + "', deeplinkUrl='" + this.f4475x + "', clickUrl='" + this.f4476y + "', pkgName='" + this.f4477z + "', unitType=" + this.f4435A + ", clickType=" + this.f4436D + ", rating=" + this.f4437E + ", adLogoTitle='" + this.f4438F + "', offerNetworkFirmId=" + this.f4439G + ", jumpUrl='" + this.f4440H + "', publisher='" + this.f4441I + "', appVersion='" + this.f4442J + "', privacyUrl='" + this.f4443K + "', permissionUrl='" + this.f4444L + "', functionUrl='" + this.f4445M + "', templateVersion='" + this.f4446N + "', adLogo=" + this.f4447O + ", baseAdSetting=" + this.f4448P + ", requestId='" + this.f4449Q + "', webControlObject='" + this.f4450R + "', protocolType=" + this.f4451S + ", offerHtml='" + this.f4452T + "', offerUrl='" + this.f4453U + "', wxUserName='" + this.f4454V + "', wxPath='" + this.f4455W + "', offerWidth=" + this.f4456X + ", offerHeight=" + this.f4457Y + ", mApkDownloadStatus=" + this.f4458Z + ", mNativeMainImageWidth=" + this.aa + ", mNativeMainImageHeight=" + this.ab + ", mVideoWidth=" + this.ac + ", mVideoHeight=" + this.ad + ", mVideoDuration=" + this.ae + ", deeplinkPackageInstallState=" + this.af + ", mraidJSUrl='" + this.ah + "'}";
    }
}
