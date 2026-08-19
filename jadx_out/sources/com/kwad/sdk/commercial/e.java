package com.kwad.sdk.commercial;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwai.adclient.kscommerciallogger.model.BusinessType;

/* loaded from: classes4.dex */
public final class e {
    private static String a(@NonNull AdMatrixInfo.MatrixTemplate matrixTemplate) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(matrixTemplate.templateId);
        stringBuffer.append("#");
        stringBuffer.append(matrixTemplate.templateVersionCode);
        return stringBuffer.toString();
    }

    public static BusinessType bA(AdTemplate adTemplate) {
        return adTemplate == null ? BusinessType.OTHER : ds(com.kwad.sdk.core.response.helper.e.eI(adTemplate));
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0061  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.kwad.sdk.core.response.model.AdMatrixInfo.MatrixTemplate bB(com.kwad.sdk.core.response.model.AdTemplate r5) {
        /*
            com.kwad.sdk.internal.api.SceneImpl r0 = r5.mAdScene
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            com.kwad.sdk.core.response.model.AdMatrixInfo r0 = com.kwad.sdk.core.response.helper.b.cO(r5)
            com.kwad.sdk.core.response.model.AdMatrixInfo$AdDataV2 r0 = r0.adDataV2
            int r2 = com.kwad.sdk.core.response.helper.e.eI(r5)
            r3 = 13
            if (r2 == r3) goto L64
            r3 = 23
            r4 = 1
            if (r2 == r3) goto L4e
            r3 = 10000(0x2710, float:1.4013E-41)
            if (r2 == r3) goto L49
            switch(r2) {
                case 1: goto L44;
                case 2: goto L3e;
                case 3: goto L39;
                case 4: goto L2b;
                case 5: goto L26;
                case 6: goto L21;
                default: goto L20;
            }
        L20:
            goto L61
        L21:
            com.kwad.sdk.core.response.model.AdMatrixInfo$DrawTKInfo r0 = r0.drawTKCardInfo
            java.lang.String r0 = r0.templateId
            goto L68
        L26:
            com.kwad.sdk.core.response.model.AdMatrixInfo$AdBannerTKInfo r0 = r0.bannerTKInfo
            java.lang.String r0 = r0.templateId
            goto L68
        L2b:
            boolean r2 = r5.isEndCardPage
            if (r2 == 0) goto L34
            com.kwad.sdk.core.response.model.AdMatrixInfo$SplashEndCardTKInfo r0 = r0.splashEndCardTKInfo
            java.lang.String r0 = r0.templateId
            goto L68
        L34:
            com.kwad.sdk.core.response.model.AdMatrixInfo$SplashPlayCardTKInfo r0 = r0.splashPlayCardTKInfo
            java.lang.String r0 = r0.templateId
            goto L68
        L39:
            java.lang.String r0 = g(r5, r4)
            goto L68
        L3e:
            r0 = 0
            java.lang.String r0 = g(r5, r0)
            goto L68
        L44:
            com.kwad.sdk.core.response.model.AdMatrixInfo$FeedTKInfo r0 = r0.feedTKCardInfo
            java.lang.String r0 = r0.templateId
            goto L68
        L49:
            com.kwad.sdk.core.response.model.AdMatrixInfo$NativeTKInfo r0 = r0.nativeTKCardInfo
            java.lang.String r0 = r0.templateId
            goto L68
        L4e:
            int r2 = com.kwad.sdk.core.response.helper.e.fg(r5)
            if (r2 != r4) goto L59
            java.lang.String r0 = g(r5, r4)
            goto L68
        L59:
            r3 = 2
            if (r2 != r3) goto L61
            com.kwad.sdk.core.response.model.AdMatrixInfo$InterstitialCardInfo r0 = r0.interstitialCardInfo
            java.lang.String r0 = r0.templateId
            goto L68
        L61:
            java.lang.String r0 = ""
            goto L68
        L64:
            com.kwad.sdk.core.response.model.AdMatrixInfo$InterstitialCardInfo r0 = r0.interstitialCardInfo
            java.lang.String r0 = r0.templateId
        L68:
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 == 0) goto L6f
            return r1
        L6f:
            java.util.List r2 = com.kwad.sdk.core.response.helper.b.cP(r5)
            java.util.Iterator r2 = r2.iterator()
        L77:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L8c
            java.lang.Object r3 = r2.next()
            com.kwad.sdk.core.response.model.AdMatrixInfo$MatrixTemplate r3 = (com.kwad.sdk.core.response.model.AdMatrixInfo.MatrixTemplate) r3
            java.lang.String r4 = r3.templateId
            boolean r4 = com.kwad.sdk.utils.br.isEquals(r0, r4)
            if (r4 == 0) goto L77
            r1 = r3
        L8c:
            if (r1 != 0) goto L92
            com.kwad.sdk.core.response.model.AdMatrixInfo$MatrixTemplate r1 = com.kwad.sdk.core.response.helper.b.t(r5, r0)
        L92:
            if (r1 == 0) goto La6
            java.lang.String r5 = a(r1)
            java.lang.Class<com.kwad.sdk.service.a.h> r0 = com.kwad.sdk.service.a.h.class
            java.lang.Object r0 = com.kwad.sdk.service.ServiceProvider.get(r0)
            com.kwad.sdk.service.a.h r0 = (com.kwad.sdk.service.a.h) r0
            int r5 = r0.cR(r5)
            r1.publishType = r5
        La6:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.commercial.e.bB(com.kwad.sdk.core.response.model.AdTemplate):com.kwad.sdk.core.response.model.AdMatrixInfo$MatrixTemplate");
    }

    public static BusinessType ds(int i2) {
        return i2 == 3 ? BusinessType.AD_FULLSCREEN : i2 == 2 ? BusinessType.AD_REWARD : i2 == 4 ? BusinessType.AD_SPLASH : (i2 == 13 || i2 == 23) ? BusinessType.AD_INTERSTITIAL : i2 == 1 ? BusinessType.AD_FEED : i2 == 10000 ? BusinessType.AD_NATIVE : BusinessType.OTHER;
    }

    public static int dt(int i2) {
        if (i2 == -1) {
            return 100010;
        }
        if (i2 == -2) {
            return 100011;
        }
        return i2;
    }

    private static String g(AdTemplate adTemplate, boolean z2) {
        AdMatrixInfo.AdDataV2 adDataV2 = com.kwad.sdk.core.response.helper.b.cO(adTemplate).adDataV2;
        boolean z3 = 1 == com.kwad.sdk.core.response.helper.a.bk(com.kwad.sdk.core.response.helper.e.eO(adTemplate)) && !TextUtils.isEmpty(com.kwad.sdk.core.response.helper.a.M(com.kwad.sdk.core.response.helper.e.eO(adTemplate)));
        boolean zBj = com.kwad.sdk.core.response.helper.a.bj(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        boolean zCY = com.kwad.sdk.core.response.helper.a.cY(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        return z2 ? z3 ? adDataV2.fullScreenInfo.templateId : zCY ? adDataV2.videoLiveTKInfo.templateId : zBj ? adDataV2.videoImageTKInfo.templateId : "" : z3 ? adDataV2.neoTKInfo.templateId : zCY ? adDataV2.videoLiveTKInfo.templateId : zBj ? adDataV2.videoImageTKInfo.templateId : "";
    }
}
