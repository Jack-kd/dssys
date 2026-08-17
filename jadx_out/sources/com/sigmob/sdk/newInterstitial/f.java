package com.sigmob.sdk.newInterstitial;

import android.os.Bundle;
import com.sigmob.sdk.base.BaseAdActivity;
import com.sigmob.sdk.base.common.AdActivity;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.EnumC1270n;
import com.sigmob.sdk.base.common.InterfaceC1274p;
import com.sigmob.sdk.base.common.TransparentAdActivity;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.mraid.C1317i;
import java.util.Map;

/* loaded from: classes4.dex */
public class f extends C1317i {
    public f(InterfaceC1274p interfaceC1274p) {
        super(interfaceC1274p);
    }

    private static boolean b(MaterialMeta materialMeta) {
        return materialMeta.creative_type.intValue() == EnumC1270n.CreativeTypeMRAIDTWO.a();
    }

    private static boolean c(MaterialMeta materialMeta) {
        return materialMeta.creative_type.intValue() == EnumC1270n.CreativeTypeNewInterstitial.a() && materialMeta.template_id.intValue() != 0;
    }

    @Override // com.sigmob.sdk.mraid.C1317i, com.sigmob.sdk.base.common.AbstractC1285y
    public void a(InterfaceC1274p interfaceC1274p) {
        super.a(interfaceC1274p);
    }

    public static boolean d(BaseAdUnit baseAdUnit) {
        boolean zC = C1317i.c(baseAdUnit);
        MaterialMeta material = baseAdUnit.getMaterial();
        return zC && (b(material) || c(material));
    }

    @Override // com.sigmob.sdk.mraid.C1317i, com.sigmob.sdk.base.common.AbstractC1285y
    public void a(BaseAdUnit baseAdUnit, Bundle bundle) {
        C1258h.a(baseAdUnit);
        super.a(baseAdUnit, bundle);
        if (this.f36054a instanceof e) {
            NewInterstitialAdBroadcastReceiver newInterstitialAdBroadcastReceiver = new NewInterstitialAdBroadcastReceiver(baseAdUnit, (e) this.f36054a, baseAdUnit.getUuid());
            newInterstitialAdBroadcastReceiver.a(newInterstitialAdBroadcastReceiver);
        }
        int ad_type = baseAdUnit.getAd_type();
        String str = BaseAdActivity.f35516j;
        if (ad_type == 6) {
            if (baseAdUnit.getCreativeType() == EnumC1270n.CreativeTypeMRAIDTWO.a()) {
                str = BaseAdActivity.f35510d;
            } else {
                EnumC1270n.CreativeTypeNewInterstitial.a();
            }
        }
        final String adslot_id = baseAdUnit.getAdslot_id();
        ad.a(PointCategory.VOPEN, null, baseAdUnit, null, null, new ad.a() { // from class: com.sigmob.sdk.newInterstitial.j
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                f.a(adslot_id, obj);
            }
        });
        BaseAdActivity.a(com.sigmob.sdk.b.e(), (baseAdUnit.getMaterial().theme_data.intValue() == 1 || baseAdUnit.getTemplateType() == 1) ? TransparentAdActivity.class : AdActivity.class, baseAdUnit.getUuid(), bundle, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, Object obj) {
        Map<String, String> options;
        if (!(obj instanceof PointEntitySigmob) || (options = ((PointEntitySigmob) obj).getOptions()) == null) {
            return;
        }
        options.put("show_count", String.valueOf(C1258h.h(str)));
        C1258h.g(str);
    }

    @Override // com.sigmob.sdk.mraid.C1317i, com.sigmob.sdk.base.common.AbstractC1285y
    public boolean a(BaseAdUnit baseAdUnit) {
        boolean zA = super.a(baseAdUnit);
        MaterialMeta material = baseAdUnit.getMaterial();
        return zA && (b(material) || c(material));
    }
}
