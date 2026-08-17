package com.kwad.components.ad.splashscreen.monitor;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.components.ad.splashscreen.h;
import com.kwad.components.offline.api.tk.model.StyleTemplate;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdMatrixInfo;
import com.kwad.sdk.core.response.model.AdResultData;
import com.kwad.sdk.core.response.model.AdTemplate;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class b {
    private static volatile b Hq;

    public static void a(@NonNull AdTemplate adTemplate, int i2, long j2, long j3) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j2;
        com.kwad.sdk.commercial.c.j(new SplashMonitorInfo().setType(adTemplate.notNetworkRequest ? 2 : 1).setStatus(3).setLoadDataTime(adTemplate.loadDataTime).setCheckStatus(i2).setCheckDataTime(jElapsedRealtime).setBeforeLoadDataTime(j3).setLoadProcessType(e.a(com.kwad.components.ad.splashscreen.b.a.Hn) ? 1L : 2L).setLoadAndCheckDataTime(adTemplate.loadDataTime + jElapsedRealtime).setBuriedPointOptimizeType(e.a(com.kwad.sdk.core.config.c.aQo)).setVisibleCheckDelayTime(e.KL()).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(com.kwad.sdk.core.response.helper.e.eO(adTemplate))).setAdTemplate(adTemplate));
    }

    public static void ap(@NonNull AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setLoadType(adTemplate.splashAdLoadType).setStatus(4).setBuriedPointOptimizeType(e.a(com.kwad.sdk.core.config.c.aQo)).setVisibleCheckDelayTime(e.KL()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void aq(@NonNull AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(200).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void ar(@NonNull AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(201).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void as(@NonNull AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(204).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void at(@NonNull AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(205).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void au(@NonNull AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(206).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void av(@NonNull AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(207).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void aw(@Nullable AdTemplate adTemplate) {
        String str;
        boolean z2;
        int i2;
        AdMatrixInfo.SplashPlayCardTKInfo splashPlayCardTKInfoDW = com.kwad.sdk.core.response.helper.b.dW(adTemplate);
        boolean z3 = true;
        if (TextUtils.isEmpty(splashPlayCardTKInfoDW.templateId)) {
            str = SplashMonitorInfo.TEMPLATE_ID_EMPTY;
            z2 = true;
        } else {
            str = "";
            z2 = false;
        }
        if (splashPlayCardTKInfoDW.renderType != 1) {
            str = str + SplashMonitorInfo.TEMPLATE_RENER_TYPE_ERROR;
            i2 = splashPlayCardTKInfoDW.renderType;
        } else {
            i2 = -1;
            z3 = z2;
        }
        if (z3) {
            com.kwad.sdk.commercial.c.o(new SplashMonitorInfo().setErrorMsg(str).setErrorCode(i2).setAdTemplate(adTemplate));
        }
    }

    public static void b(@NonNull AdTemplate adTemplate, int i2, long j2, long j3) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j2;
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.j(new SplashMonitorInfo().setType(adTemplate.notNetworkRequest ? 2 : 1).setStatus(5).setCheckStatus(i2).setLoadDataTime(adTemplate.loadDataTime).setCheckDataTime(jElapsedRealtime).setBeforeLoadDataTime(j3).setLoadAndCheckDataTime(adTemplate.loadDataTime + jElapsedRealtime).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setUrl(com.kwad.sdk.core.response.helper.a.bi(adInfoEO) ? com.kwad.sdk.core.response.helper.a.M(adInfoEO) : com.kwad.sdk.core.response.helper.a.ba(adInfoEO).materialUrl).setAdTemplate(adTemplate));
    }

    public static void c(boolean z2, int i2, String str, long j2) {
        com.kwad.sdk.commercial.c.j(new SplashMonitorInfo().setStatus(4).setType(z2 ? 2 : 1).setErrorCode(i2).setErrorMsg(str).setPosId(j2));
    }

    public static void d(@NonNull AdTemplate adTemplate, int i2, String str) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.g(true, new SplashMonitorInfo().setStatus(2).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setUrl(com.kwad.sdk.core.response.helper.a.bi(adInfoEO) ? com.kwad.sdk.core.response.helper.a.M(adInfoEO) : com.kwad.sdk.core.response.helper.a.ba(adInfoEO).materialUrl).setErrorCode(i2).setErrorMsg(str).setMaterialType(com.kwad.sdk.core.response.helper.a.bi(adInfoEO) ? 1 : 2).setType(1).setAdTemplate(adTemplate));
    }

    public static void e(@NonNull AdTemplate adTemplate, long j2) {
        com.kwad.sdk.commercial.c.j(new SplashMonitorInfo().setType(adTemplate.notNetworkRequest ? 2 : 1).setStatus(2).setBeforeLoadDataTime(j2).setLoadDataTime(adTemplate.loadDataTime).setLoadProcessType(e.a(com.kwad.components.ad.splashscreen.b.a.Hn) ? 1L : 2L).setBuriedPointOptimizeType(e.a(com.kwad.sdk.core.config.c.aQo)).setVisibleCheckDelayTime(e.KL()).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(com.kwad.sdk.core.response.helper.e.eO(adTemplate))).setAdTemplate(adTemplate));
    }

    public static void f(long j2, long j3) {
        com.kwad.sdk.commercial.c.j(new SplashMonitorInfo().setStatus(11).setBeforeLoadDataTime(j3).setLoadProcessType(e.a(com.kwad.components.ad.splashscreen.b.a.Hn) ? 1L : 2L).setBuriedPointOptimizeType(e.a(com.kwad.sdk.core.config.c.aQo)).setVisibleCheckDelayTime(e.KL()).setPosId(j2));
    }

    public static void g(@NonNull AdTemplate adTemplate, long j2) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(5).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setCostTime(j2).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setAdTemplate(adTemplate));
    }

    public static void k(@NonNull AdResultData adResultData) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<AdTemplate> it = adResultData.getAdTemplateList().iterator();
        while (true) {
            int i2 = 1;
            if (!it.hasNext()) {
                com.kwad.sdk.commercial.c.l(new SplashMonitorInfo().setTotalCount(adResultData.getAdTemplateList().size()).setCreativeIds(arrayList).setPreloadIds(arrayList2).setMaterialTypes(arrayList3).setStatus(1).setPosId(adResultData.getPosId()));
                return;
            }
            AdTemplate next = it.next();
            arrayList.add(String.valueOf(com.kwad.sdk.core.response.helper.a.L(com.kwad.sdk.core.response.helper.e.eO(next))));
            arrayList2.add(com.kwad.sdk.core.response.helper.a.bf(com.kwad.sdk.core.response.helper.e.eO(next)));
            if (com.kwad.sdk.core.response.helper.a.bi(com.kwad.sdk.core.response.helper.e.eO(next))) {
                i2 = 2;
            }
            arrayList3.add(Integer.valueOf(i2));
        }
    }

    public static b mv() {
        if (Hq == null) {
            synchronized (b.class) {
                try {
                    if (Hq == null) {
                        Hq = new b();
                    }
                } finally {
                }
            }
        }
        return Hq;
    }

    public static void x(long j2) {
        com.kwad.sdk.commercial.c.j(new SplashMonitorInfo().setStatus(1).setLoadProcessType(e.a(com.kwad.components.ad.splashscreen.b.a.Hn) ? 1L : 2L).setBuriedPointOptimizeType(e.a(com.kwad.sdk.core.config.c.aQo)).setVisibleCheckDelayTime(e.KL()).setPosId(j2));
    }

    public static void y(long j2) {
        com.kwad.sdk.commercial.c.k(new SplashMonitorInfo().setStatus(1).setPosId(j2));
    }

    public final void c(AdTemplate adTemplate, String str) {
        long jDT;
        StyleTemplate styleTemplateC = c(adTemplate);
        SplashMonitorInfo templateVersionCode = new SplashMonitorInfo().setStatus(103).setTkRenderType(com.kwad.sdk.core.response.helper.b.dY(adTemplate)).setTemplateId(styleTemplateC.templateId).setTemplateVersionCode(styleTemplateC.templateVersionCode);
        com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (h.aj(adTemplate)) {
            jDT = com.kwad.sdk.core.response.helper.b.dX(adTemplate);
        } else {
            jDT = com.kwad.sdk.core.response.helper.b.dT(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        }
        com.kwad.sdk.commercial.c.m(templateVersionCode.setTkDefaultTimeout(jDT).setErrorMsg(str).setAdTemplate(adTemplate));
    }

    public static void f(@NonNull AdTemplate adTemplate, long j2) {
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setLoadType(adTemplate.splashAdLoadType).setStatus(1).setBuriedPointOptimizeType(e.a(com.kwad.sdk.core.config.c.aQo)).setVisibleCheckDelayTime(e.KL()).setType(com.kwad.sdk.core.response.helper.a.bj(com.kwad.sdk.core.response.helper.e.eO(adTemplate)) ? 2 : 1).setCostTime(j2).setLoadProcessType(e.a(com.kwad.components.ad.splashscreen.b.a.Hn) ? 1L : 2L).setAdTemplate(adTemplate));
    }

    public static void e(@NonNull AdTemplate adTemplate, int i2, String str) {
        String strM;
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        boolean zBj = com.kwad.sdk.core.response.helper.a.bj(adInfoEO);
        SplashMonitorInfo type = new SplashMonitorInfo().setLoadType(adTemplate.splashAdLoadType).setStatus(3).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setType(zBj ? 2 : 1);
        if (zBj) {
            strM = com.kwad.sdk.core.response.helper.a.ba(adInfoEO).materialUrl;
        } else {
            strM = com.kwad.sdk.core.response.helper.a.M(adInfoEO);
        }
        com.kwad.sdk.commercial.c.m(type.setUrl(strM).setErrorCode(i2).setErrorMsg(str).setAdTemplate(adTemplate));
    }

    public static void k(AdTemplate adTemplate, int i2, int i3) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(3001).setMaterialType(i2).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setUrl(com.kwad.sdk.core.response.helper.a.ba(adInfoEO).materialUrl).setShowType(i3).setAdTemplate(adTemplate));
    }

    public final void d(AdTemplate adTemplate, String str) {
        long jDT;
        StyleTemplate styleTemplateC = c(adTemplate);
        SplashMonitorInfo errorMsg = new SplashMonitorInfo().setStatus(105).setTemplateId(styleTemplateC.templateId).setTemplateVersionCode(styleTemplateC.templateVersionCode).setTkRenderType(com.kwad.sdk.core.response.helper.b.dY(adTemplate)).setErrorMsg(str);
        com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (h.aj(adTemplate)) {
            jDT = com.kwad.sdk.core.response.helper.b.dX(adTemplate);
        } else {
            jDT = com.kwad.sdk.core.response.helper.b.dT(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        }
        com.kwad.sdk.commercial.c.m(errorMsg.setTkDefaultTimeout(jDT).setAdTemplate(adTemplate));
    }

    public static void a(@NonNull List<AdTemplate> list, long j2, long j3) {
        ArrayList arrayList = new ArrayList();
        Iterator<AdTemplate> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(com.kwad.sdk.core.response.helper.a.bf(com.kwad.sdk.core.response.helper.e.eO(it.next())));
        }
        com.kwad.sdk.commercial.c.k(new SplashMonitorInfo().setStatus(2).setIds(arrayList).setLoadDataTime(j2).setCount(list.size()).setPosId(j3));
    }

    public static void b(int i2, String str, long j2) {
        com.kwad.sdk.commercial.c.k(new SplashMonitorInfo().setStatus(3).setErrorCode(i2).setErrorMsg(str).setPosId(j2));
    }

    public static void c(AdTemplate adTemplate, StyleTemplate styleTemplate) {
        long jDT;
        SplashMonitorInfo templateVersionCode = new SplashMonitorInfo().setStatus(106).setTkRenderType(com.kwad.sdk.core.response.helper.b.dY(adTemplate)).setTemplateId(styleTemplate.templateId).setTemplateVersionCode(styleTemplate.templateVersionCode);
        com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (h.aj(adTemplate)) {
            jDT = com.kwad.sdk.core.response.helper.b.dX(adTemplate);
        } else {
            jDT = com.kwad.sdk.core.response.helper.b.dT(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        }
        com.kwad.sdk.commercial.c.m(templateVersionCode.setTkDefaultTimeout(jDT).setAdTemplate(adTemplate));
    }

    public static void b(@NonNull AdTemplate adTemplate, long j2, int i2, int i3) {
        String strM;
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (com.kwad.sdk.core.response.helper.a.bi(adInfoEO)) {
            strM = com.kwad.sdk.core.response.helper.a.M(adInfoEO);
        } else {
            strM = com.kwad.sdk.core.response.helper.a.ba(adInfoEO).materialUrl;
        }
        File fileCO = com.kwad.sdk.core.diskcache.b.a.Lx().cO(com.kwad.sdk.core.response.helper.a.bf(adInfoEO));
        com.kwad.sdk.commercial.c.g(false, new SplashMonitorInfo().setStatus(1).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setCostTime(j2).setCacheValidTime(adInfoEO.adPreloadInfo.validityPeriod * 1000).setSize((fileCO == null || !fileCO.exists()) ? 0L : fileCO.length()).setUrl(strM).setMaterialType(com.kwad.sdk.core.response.helper.a.bi(adInfoEO) ? 1 : 2).setType(i2).setRequestType(i3).setAdTemplate(adTemplate));
    }

    public static void a(long j2, List<String> list, List<Integer> list2) {
        com.kwad.sdk.commercial.c.l(new SplashMonitorInfo().setTotalCount(list == null ? 0 : list.size()).setPreloadIds(list).setMaterialTypes(list2).setStatus(2).setPosId(j2));
    }

    private static StyleTemplate c(AdTemplate adTemplate) {
        AdMatrixInfo.MatrixTemplate matrixTemplateT = com.kwad.sdk.core.response.helper.b.t(adTemplate, com.kwad.sdk.core.response.helper.b.em(adTemplate));
        StyleTemplate styleTemplate = new StyleTemplate();
        if (matrixTemplateT != null) {
            styleTemplate.templateId = matrixTemplateT.templateId;
            styleTemplate.templateMd5 = matrixTemplateT.templateMd5;
            styleTemplate.templateUrl = matrixTemplateT.templateUrl;
            styleTemplate.templateVersionCode = (int) matrixTemplateT.templateVersionCode;
        }
        return styleTemplate;
    }

    public static void a(long j2, List<String> list, List<Integer> list2, int i2, int i3, int i4, int i5) {
        com.kwad.sdk.commercial.c.l(new SplashMonitorInfo().setTotalCount(list == null ? 0 : list.size()).setPreloadIds(list).setMaterialTypes(list2).setUpdateType(i2).setClearCount(i3).setClearImageCount(i4).setClearVideoCount(i5).setStatus(3).setPosId(j2));
    }

    public static void b(boolean z2, int i2, String str, long j2) {
        com.kwad.sdk.commercial.c.p(new SplashMonitorInfo().setStatus(4).setType(z2 ? 2 : 1).setErrorCode(i2).setErrorMsg(str).setPosId(j2));
    }

    public static void a(@NonNull AdTemplate adTemplate, long j2, long j3, long j4) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setLoadType(adTemplate.splashAdLoadType).setStatus(2).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setCostTime(j2).setAddLoadTime(j3).setRequestLoadTime(j4).setBuriedPointOptimizeType(e.a(com.kwad.sdk.core.config.c.aQo)).setVisibleCheckDelayTime(e.KL()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setLoadProcessType(e.a(com.kwad.components.ad.splashscreen.b.a.Hn) ? 1L : 2L).setAdTemplate(adTemplate));
    }

    public static void b(AdTemplate adTemplate, StyleTemplate styleTemplate) {
        long jDT;
        SplashMonitorInfo templateVersionCode = new SplashMonitorInfo().setStatus(102).setTemplateId(styleTemplate.templateId).setTkRenderType(com.kwad.sdk.core.response.helper.b.dY(adTemplate)).setTemplateVersionCode(styleTemplate.templateVersionCode);
        com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (h.aj(adTemplate)) {
            jDT = com.kwad.sdk.core.response.helper.b.dX(adTemplate);
        } else {
            jDT = com.kwad.sdk.core.response.helper.b.dT(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        }
        com.kwad.sdk.commercial.c.m(templateVersionCode.setTkDefaultTimeout(jDT).setAdTemplate(adTemplate));
    }

    public static void b(AdTemplate adTemplate, int i2, int i3, int i4, long j2, long j3) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(3003).setMaterialType(i2).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setUrl(com.kwad.sdk.core.response.helper.a.ba(adInfoEO).materialUrl).setShowType(i3).setLoadType(i4).setCostTime(j2).setShowDurationMs(j3).setAdTemplate(adTemplate));
    }

    public static void a(@NonNull AdTemplate adTemplate, long j2, boolean z2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j2;
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setLoadType(adTemplate.splashAdLoadType).setStatus(6).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setViewSource(z2 ? 1 : 2).setLoadDataTime(jElapsedRealtime).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void a(@NonNull AdTemplate adTemplate, boolean z2, boolean z3, boolean z4) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(202).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setRootVisible(z2).setParentVisible(z3).setHasUnbind(z4).setAdTemplate(adTemplate));
    }

    public static void a(@NonNull AdTemplate adTemplate, long j2, boolean z2, boolean z3) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(203).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setLoadDataTime(SystemClock.elapsedRealtime() - j2).setRootVisible(z2).setParentVisible(z3).setType(com.kwad.sdk.core.response.helper.a.bj(adInfoEO) ? 2 : 1).setAdTemplate(adTemplate));
    }

    public static void a(@Nullable AdTemplate adTemplate, String str, boolean z2) {
        if (adTemplate == null) {
            com.kwad.sdk.commercial.c.n(new SplashMonitorInfo().setErrorMsg(str).setViewSource(z2 ? 1 : 2));
        } else {
            com.kwad.sdk.commercial.c.n(new SplashMonitorInfo().setCreativeId(com.kwad.sdk.core.response.helper.a.L(com.kwad.sdk.core.response.helper.e.eO(adTemplate))).setErrorMsg(str).setViewSource(z2 ? 1 : 2).setAdTemplate(adTemplate));
        }
    }

    public static void a(AdTemplate adTemplate, StyleTemplate styleTemplate) {
        long jDT;
        SplashMonitorInfo tkRenderType = new SplashMonitorInfo().setStatus(101).setTemplateId(styleTemplate.templateId).setTemplateVersionCode(styleTemplate.templateVersionCode).setTkRenderType(com.kwad.sdk.core.response.helper.b.dY(adTemplate));
        com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (h.aj(adTemplate)) {
            jDT = com.kwad.sdk.core.response.helper.b.dX(adTemplate);
        } else {
            jDT = com.kwad.sdk.core.response.helper.b.dT(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        }
        com.kwad.sdk.commercial.c.m(tkRenderType.setTkDefaultTimeout(jDT).setAdTemplate(adTemplate));
    }

    public static void a(AdTemplate adTemplate, StyleTemplate styleTemplate, int i2, long j2, int i3, long j3, long j4, long j5, long j6, long j7) {
        long jDT;
        SplashMonitorInfo templateVersionCode = new SplashMonitorInfo().setStatus(104).setTemplateId(styleTemplate.templateId).setTkRenderType(com.kwad.sdk.core.response.helper.b.dY(adTemplate)).setTemplateVersionCode(styleTemplate.templateVersionCode);
        com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        if (h.aj(adTemplate)) {
            jDT = com.kwad.sdk.core.response.helper.b.dX(adTemplate);
        } else {
            jDT = com.kwad.sdk.core.response.helper.b.dT(com.kwad.sdk.core.response.helper.e.eO(adTemplate));
        }
        com.kwad.sdk.commercial.c.m(templateVersionCode.setTkDefaultTimeout(jDT).setSoSource(i2).setSoLoadTime(j2).setOfflineSource(i3).setOfflineLoadTime(j3).setTkFileLoadTime(j4).setTkInitTime(j5).setTkRenderTime(j6).setTkTotalTime(j7).setAdTemplate(adTemplate));
    }

    public static void a(AdTemplate adTemplate, int i2, int i3, int i4, long j2, long j3) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.m(new SplashMonitorInfo().setStatus(3002).setMaterialType(i2).setPreloadId(com.kwad.sdk.core.response.helper.a.bf(adInfoEO)).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setUrl(com.kwad.sdk.core.response.helper.a.ba(adInfoEO).materialUrl).setShowType(i3).setLoadType(i4).setCostTime(j2).setShowDurationMs(j3).setAdTemplate(adTemplate));
    }
}
