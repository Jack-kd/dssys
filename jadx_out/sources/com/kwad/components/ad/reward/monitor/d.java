package com.kwad.components.ad.reward.monitor;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.kwad.sdk.core.response.model.AdGlobalConfigInfo;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.core.threads.GlobalThreadPools;
import com.kwad.sdk.utils.bi;

/* loaded from: classes4.dex */
public final class d {
    public static void X(final AdTemplate adTemplate) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.5
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
                com.kwad.sdk.commercial.c.c(true, (com.kwad.sdk.commercial.c.a) new RewardMonitorInfo().setPageStatus(7).setLoadType(adTemplate.isLoadFromCache() ? 2 : 1).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setAdTemplate(adTemplate));
            }
        });
    }

    public static void Y(final AdTemplate adTemplate) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.6
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
                com.kwad.sdk.commercial.c.c(true, (com.kwad.sdk.commercial.c.a) new RewardMonitorInfo().setPageStatus(8).setLoadType(adTemplate.isLoadFromCache() ? 2 : 1).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setAdTemplate(adTemplate));
            }
        });
    }

    public static void a(final boolean z2, final long j2) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.commercial.c.a(z2, new RewardMonitorInfo().setLoadStatus(1).setPosId(j2), com.kwai.adclient.kscommerciallogger.model.a.buA);
            }
        });
    }

    public static void c(final boolean z2, final long j2) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.23
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.commercial.c.a(z2, new RewardMonitorInfo().setLoadStatus(6).setPosId(j2), com.kwai.adclient.kscommerciallogger.model.a.buA);
            }
        });
    }

    public static void d(final boolean z2, @NonNull final AdTemplate adTemplate) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.27
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
                com.kwad.sdk.commercial.c.a(z2, new RewardMonitorInfo().setLoadStatus(7).setLoadType(adTemplate.isLoadFromCache() ? 2 : 1).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setVideoDuration(com.kwad.sdk.core.response.helper.a.N(adInfoEO) * 1000).setAdTemplate(adTemplate), com.kwai.adclient.kscommerciallogger.model.a.buA);
            }
        });
    }

    public static void e(final boolean z2, final AdTemplate adTemplate) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.3
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
                com.kwad.sdk.commercial.c.c(z2, new RewardMonitorInfo().setPageStatus(6).setLoadType(adTemplate.isLoadFromCache() ? 2 : 1).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setVideoDuration(com.kwad.sdk.core.response.helper.a.N(adInfoEO) * 1000).setAdTemplate(adTemplate));
            }
        });
    }

    public static void f(final boolean z2, final AdTemplate adTemplate) {
        if (adTemplate == null) {
            return;
        }
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.4
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
                com.kwad.sdk.commercial.c.c(z2, new RewardMonitorInfo().setPageStatus(5).setLoadType(adTemplate.isLoadFromCache() ? 2 : 1).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setVideoDuration(com.kwad.sdk.core.response.helper.a.N(adInfoEO) * 1000).setAdTemplate(adTemplate));
            }
        });
    }

    public static void g(final boolean z2, final AdTemplate adTemplate) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.8
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.commercial.c.g(new RewardWebViewInfo().setEvent("ad_show").setSceneId(z2 ? "ad_reward" : "ad_fullscreen").setAdTemplate(adTemplate));
            }
        });
    }

    public static void h(final boolean z2, final AdTemplate adTemplate) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.15
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
                com.kwad.sdk.commercial.c.c(z2, new RewardMonitorInfo().setPageStatus(3).setLoadType(adTemplate.isLoadFromCache() ? 2 : 1).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setVideoDuration(com.kwad.sdk.core.response.helper.a.N(adInfoEO) * 1000).setAdTemplate(adTemplate));
            }
        });
    }

    public static void i(final boolean z2, @Nullable final AdTemplate adTemplate) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.20
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                d.j(z2, adTemplate);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void j(boolean r3, @androidx.annotation.Nullable com.kwad.sdk.core.response.model.AdTemplate r4) {
        /*
            if (r4 == 0) goto L18
            java.lang.String r0 = r4.mDataCacheTraceElement
            boolean r0 = com.kwad.components.core.t.f.bl(r0)
            if (r0 == 0) goto Ld
            java.lang.String r0 = "data_cache"
            goto L1a
        Ld:
            java.lang.String r0 = r4.mDataLoadTraceElement
            boolean r0 = com.kwad.components.core.t.f.bl(r0)
            if (r0 == 0) goto L18
            java.lang.String r0 = "data_load"
            goto L1a
        L18:
            java.lang.String r0 = "unknown"
        L1a:
            com.kwad.components.ad.reward.monitor.RewardMonitorInfo r1 = new com.kwad.components.ad.reward.monitor.RewardMonitorInfo
            r1.<init>()
            r2 = 101(0x65, float:1.42E-43)
            com.kwad.components.ad.reward.monitor.RewardMonitorInfo r1 = r1.setPageStatus(r2)
            com.kwad.components.ad.reward.monitor.RewardMonitorInfo r0 = r1.setLaunchFrom(r0)
            com.kwad.components.core.proxy.PageCreateStage r1 = com.kwad.components.core.proxy.PageCreateStage.START_LAUNCH
            java.lang.String r1 = r1.getStage()
            com.kwad.components.ad.reward.monitor.RewardMonitorInfo r0 = r0.setSubStage(r1)
            com.kwad.components.ad.reward.monitor.RewardMonitorInfo r4 = r0.setAdTemplate(r4)
            com.kwad.sdk.commercial.c.c(r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.components.ad.reward.monitor.d.j(boolean, com.kwad.sdk.core.response.model.AdTemplate):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean r(long j2) {
        return j2 == -1;
    }

    public static void a(final boolean z2, @NonNull final AdTemplate adTemplate, final int i2, final long j2) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.26
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                d.b(z2, adTemplate, i2, j2);
            }
        });
    }

    public static void b(final boolean z2, final long j2) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.12
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.commercial.c.a(z2, new RewardMonitorInfo().setLoadStatus(5).setPosId(j2), com.kwai.adclient.kscommerciallogger.model.a.buA);
            }
        });
    }

    public static void c(final boolean z2, final AdTemplate adTemplate, final int i2, final long j2) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.28
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                d.d(z2, adTemplate, i2, j2);
            }
        });
    }

    public static void d(boolean z2, AdTemplate adTemplate, int i2, long j2) {
        adTemplate.setDownloadFinishTime(SystemClock.elapsedRealtime());
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        long loadDataTime = adTemplate.getLoadDataTime() - j2;
        long downloadFinishTime = adTemplate.getDownloadFinishTime() - adTemplate.getLoadDataTime();
        long downloadFinishTime2 = adTemplate.getDownloadFinishTime() - j2;
        if (a(loadDataTime, downloadFinishTime, downloadFinishTime2)) {
            loadDataTime = -1;
            downloadFinishTime = -1;
            downloadFinishTime2 = -1;
        }
        com.kwad.sdk.commercial.c.a(z2, new RewardMonitorInfo().setLoadStatus(3).setLoadType(adTemplate.isLoadFromCache() ? 2 : 1).setAdCount(i2).setLoadDataDuration(loadDataTime).setDownloadDuration(downloadFinishTime).setTotalDuration(downloadFinishTime2).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setVideoDuration(com.kwad.sdk.core.response.helper.a.N(adInfoEO) * 1000).setAdTemplate(adTemplate), com.kwai.adclient.kscommerciallogger.model.a.buA);
    }

    public static void a(final boolean z2, final int i2, final String str, final long j2) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.29
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.commercial.c.a(z2, new RewardMonitorInfo().setLoadStatus(4).setErrorCode(i2).setErrorMsg(str).setPosId(j2), com.kwai.adclient.kscommerciallogger.model.a.buw);
            }
        });
    }

    public static void b(boolean z2, @NonNull AdTemplate adTemplate, int i2, long j2) {
        long loadDataTime = (j2 <= 0 || adTemplate.getLoadDataTime() <= 0) ? -1L : adTemplate.getLoadDataTime() - j2;
        long j3 = a(loadDataTime) ? -1L : loadDataTime;
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.a(z2, new RewardMonitorInfo().setLoadStatus(2).setLoadType(adTemplate.isLoadFromCache() ? 2 : 1).setAdCount(i2).setLoadDataDuration(j3).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setVideoDuration(com.kwad.sdk.core.response.helper.a.N(adInfoEO) * 1000).setAdTemplate(adTemplate), com.kwai.adclient.kscommerciallogger.model.a.buA);
    }

    public static void c(final AdTemplate adTemplate, final int i2, final String str) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.7
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
                com.kwad.sdk.commercial.c.c(true, (com.kwad.sdk.commercial.c.a) new RewardMonitorInfo().setPageStatus(9).setLoadType(adTemplate.isLoadFromCache() ? 2 : 1).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setErrorMsg(str).setErrorCode(i2).setAdTemplate(adTemplate));
            }
        });
    }

    public static void a(final boolean z2, final AdTemplate adTemplate, final String str) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.30
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
                com.kwad.sdk.commercial.c.b(z2, new RewardMonitorInfo().setLoadType(adTemplate.isLoadFromCache() ? 2 : 1).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setVideoDuration(com.kwad.sdk.core.response.helper.a.N(adInfoEO) * 1000).setErrorMsg(str).setAdTemplate(adTemplate));
            }
        });
    }

    public static void c(final boolean z2, @Nullable final AdTemplate adTemplate, final String str) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.21
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.commercial.c.c(z2, new RewardMonitorInfo().setPageStatus(101).setSubStage(str).setAdTemplate(adTemplate));
            }
        });
    }

    public static void a(final boolean z2, final AdTemplate adTemplate, final long j2) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.31
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                d.a(z2, adTemplate, j2, (AdGlobalConfigInfo) null);
            }
        });
    }

    public static void a(final boolean z2, final AdTemplate adTemplate, final long j2, final AdGlobalConfigInfo adGlobalConfigInfo) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.2
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                d.b(z2, adTemplate, j2, adGlobalConfigInfo);
            }
        });
    }

    public static void a(final AdTemplate adTemplate, final boolean z2, final String str) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.9
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.commercial.c.g(new RewardWebViewInfo().setPageType(str).setEvent("webview_init").setSceneId(z2 ? "ad_reward" : "ad_fullscreen").setAdTemplate(adTemplate));
            }
        });
    }

    public static void a(final AdTemplate adTemplate, final boolean z2, final String str, final String str2) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.10
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.commercial.c.g(new RewardWebViewInfo().setPageType(str).setEvent("webview_load_url").setSceneId(z2 ? "ad_reward" : "ad_fullscreen").setUrl(str2).setAdTemplate(adTemplate));
            }
        });
    }

    public static void a(final AdTemplate adTemplate, final boolean z2, final String str, final String str2, final long j2, final int i2) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.11
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.commercial.c.g(new RewardWebViewInfo().setPageType(str).setEvent("webview_timeout").setSceneId(z2 ? "ad_reward" : "ad_fullscreen").setDurationMs(j2).setTimeType(i2).setUrl(str2).setAdTemplate(adTemplate));
            }
        });
    }

    public static void a(final AdTemplate adTemplate, final boolean z2, final String str, final String str2, final long j2) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.13
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.commercial.c.g(new RewardWebViewInfo().setPageType(str).setEvent("webview_load_finish").setSceneId(z2 ? "ad_reward" : "ad_fullscreen").setDurationMs(j2).setUrl(str2).setAdTemplate(adTemplate));
            }
        });
    }

    public static void a(final boolean z2, @Nullable final AdTemplate adTemplate, final a aVar, final long j2, @Nullable com.kwad.sdk.g.a<RewardMonitorInfo> aVar2) {
        final com.kwad.sdk.g.a aVar3 = null;
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.17
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                RewardMonitorInfo posId = new RewardMonitorInfo().setCallbackType(aVar.getTypeValue()).setAdTemplate(adTemplate).setPosId(j2);
                com.kwad.sdk.g.a aVar4 = aVar3;
                if (aVar4 != null) {
                    aVar4.accept(posId);
                }
                com.kwad.sdk.commercial.c.e(z2, posId);
            }
        });
    }

    public static void a(final boolean z2, final a aVar, final AdTemplate adTemplate, @Nullable final com.kwad.sdk.g.a<RewardMonitorInfo> aVar2) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.18
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                d.b(z2, aVar, adTemplate, (com.kwad.sdk.g.a<RewardMonitorInfo>) aVar2);
            }
        });
    }

    public static void a(final boolean z2, final AdTemplate adTemplate, final long j2, final int i2, final long j3) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.19
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
                com.kwad.sdk.commercial.c.f(z2, new RewardMonitorInfo().setLoadType(adTemplate.isLoadFromCache() ? 2 : 1).setCurrentDuration(j2).setErrorCode(i2).setErrorMsg(String.valueOf(j3)).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setVideoDuration(com.kwad.sdk.core.response.helper.a.O(adInfoEO)).setAdTemplate(adTemplate));
            }
        });
    }

    public static void j(final AdTemplate adTemplate, final int i2, final int i3) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.25
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
                com.kwad.sdk.commercial.c.i(new RewardMonitorInfo().setPageStatus(10).setFraudVerifyType(i2).setFraudVerifyCode(i3).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setAdTemplate(adTemplate));
            }
        });
    }

    public static void a(final boolean z2, @Nullable final AdTemplate adTemplate, final String str, final String str2) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.22
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                com.kwad.sdk.commercial.c.c(z2, new RewardMonitorInfo().setPageStatus(101).setSubStage(str).setErrorMsg(str2).setAdTemplate(adTemplate));
            }
        });
    }

    public static void a(final AdTemplate adTemplate, final int i2, final int i3, final boolean z2) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.24
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
                com.kwad.sdk.commercial.c.h(new RewardMonitorInfo().setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setRewardType(!z2 ? 1 : 0).setTaskType(i2).setTaskStep(i3).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setVideoDuration(com.kwad.sdk.core.response.helper.a.N(adInfoEO) * 1000).setAdTemplate(adTemplate));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean a(long... jArr) {
        for (long j2 : jArr) {
            if (j2 >= 60000) {
                return true;
            }
        }
        return false;
    }

    public static void b(boolean z2, AdTemplate adTemplate, long j2, AdGlobalConfigInfo adGlobalConfigInfo) {
        long loadDataTime = adTemplate.getLoadDataTime();
        long downloadFinishTime = adTemplate.getDownloadFinishTime();
        long j3 = loadDataTime > 0 ? j2 - loadDataTime : 0L;
        long j4 = downloadFinishTime > 0 ? j2 - downloadFinishTime : 0L;
        int i2 = (adGlobalConfigInfo == null || adGlobalConfigInfo.neoPageType == 1) ? 3 : 0;
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        com.kwad.sdk.commercial.c.c(z2, new RewardMonitorInfo().setPageStatus(1).setLoadType(adTemplate.isLoadFromCache() ? 2 : 1).setAdSceneType(i2).setDataLoadInterval(j3).setDataDownloadInterval(j4).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setVideoDuration(com.kwad.sdk.core.response.helper.a.N(adInfoEO) * 1000).setAdTemplate(adTemplate));
    }

    public static void b(final boolean z2, final AdTemplate adTemplate, final long j2) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.14
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                long j3 = -1;
                if (!d.r(j2)) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - j2;
                    if (!d.a(jElapsedRealtime)) {
                        j3 = jElapsedRealtime;
                    }
                }
                AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
                com.kwad.sdk.commercial.c.c(z2, new RewardMonitorInfo().setPageStatus(2).setLoadType(adTemplate.isLoadFromCache() ? 2 : 1).setRenderDuration(j3).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setVideoDuration(com.kwad.sdk.core.response.helper.a.N(adInfoEO) * 1000).setAdTemplate(adTemplate));
            }
        });
    }

    public static void b(final boolean z2, final AdTemplate adTemplate, final String str) {
        GlobalThreadPools.Oi().execute(new bi() { // from class: com.kwad.components.ad.reward.monitor.d.16
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
                com.kwad.sdk.commercial.c.c(z2, new RewardMonitorInfo().setPageStatus(4).setLoadType(adTemplate.isLoadFromCache() ? 2 : 1).setDownloadType(adTemplate.getDownloadType()).setDownloadSize(adTemplate.getDownloadSize()).setCreativeId(com.kwad.sdk.core.response.helper.a.L(adInfoEO)).setVideoUrl(com.kwad.sdk.core.response.helper.a.M(adInfoEO)).setVideoDuration(com.kwad.sdk.core.response.helper.a.N(adInfoEO) * 1000).setInterceptReason(str).setAdTemplate(adTemplate));
            }
        });
    }

    public static void b(boolean z2, a aVar, AdTemplate adTemplate, @Nullable com.kwad.sdk.g.a<RewardMonitorInfo> aVar2) {
        if (adTemplate == null) {
            return;
        }
        RewardMonitorInfo adTemplate2 = new RewardMonitorInfo().setMaterialType(com.kwad.sdk.core.response.helper.a.bk(com.kwad.sdk.core.response.helper.e.eO(adTemplate))).setCallbackType(aVar.getTypeValue()).setAdTemplate(adTemplate);
        if (aVar2 != null) {
            aVar2.accept(adTemplate2);
        }
        com.kwad.sdk.commercial.c.d(z2, adTemplate2);
    }
}
