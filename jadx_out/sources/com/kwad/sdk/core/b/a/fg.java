package com.kwad.sdk.core.b.a;

import com.ksad.annotation.invoker.InvokeBy;
import com.kwad.sdk.contentalliance.coupon.model.ActivityInfo;
import com.kwad.sdk.core.config.item.InstallActivateReminderConfigItem;
import com.kwad.sdk.core.config.item.i;
import com.kwad.sdk.core.config.item.k;
import com.kwad.sdk.core.response.model.SdkConfigData;

/* loaded from: classes4.dex */
public final class fg {
    @InvokeBy(invokerClass = hl.class, methodId = "registerHolder")
    public static void LS() {
        hl.LT().put(com.kwad.sdk.core.response.model.a.class, new kj());
        hl.LT().put(SdkConfigData.TemplateConfigMap.class, new nf());
        hl.LT().put(k.a.class, new gs());
        hl.LT().put(SdkConfigData.CouponActiveConfig.class, new dj());
        hl.LT().put(ActivityInfo.class, new f());
        hl.LT().put(InstallActivateReminderConfigItem.InstallActivateReminderConfig.class, new gt());
        hl.LT().put(i.a.class, new gk());
    }
}
