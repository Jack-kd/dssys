package com.kwad.components.ad.interstitial.b;

import com.ksad.annotation.invoker.InvokeBy;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.core.config.item.d;
import com.kwad.sdk.core.config.item.l;

/* loaded from: classes4.dex */
public final class a {
    public static l mq = new l("interstitialAdSkipCloseType", 0);
    public static l mr = new l("interstitialAdSkipCloseArea", 0);

    /* renamed from: ms, reason: collision with root package name */
    public static l f31466ms = new l("interstitialAdFullClick", 1);
    public static l mt = new l("interstitialAdBackPressSwitch", 0);
    public static l mu = new l("interstitialPlayableTime", 999);
    public static l mv = new l("interstitialAdClickShutDown", 0);
    public static d mw = new d("interstitialAutoStartSwitch", false);
    public static l mx = new l("ecInterstitialAdOrderSwitch", 0);
    public static l my = new l("interstitialCycleAggregateMaxCount", 3);

    @InvokeBy(invokerClass = e.class, methodId = "initConfigList")
    public static void init() {
    }
}
