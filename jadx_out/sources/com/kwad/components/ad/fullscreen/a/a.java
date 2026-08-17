package com.kwad.components.ad.fullscreen.a;

import com.ksad.annotation.invoker.InvokeBy;
import com.kwad.sdk.core.config.e;
import com.kwad.sdk.core.config.item.l;

/* loaded from: classes4.dex */
public final class a {
    public static l jZ = new l("fullscreenSkipType", 0);
    public static l ka = new l("fullscreenSkipShowTime", 5);
    public static l kb = new l("fullScreenShakeMaxCount", 0);

    @InvokeBy(invokerClass = e.class, methodId = "initConfigList")
    public static void init() {
    }
}
