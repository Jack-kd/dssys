package com.sigmob.sdk.videoAd;

import com.czhj.wire.okio.ByteString;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.common.EnumC1270n;
import com.sigmob.sdk.base.common.InterfaceC1274p;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.mraid.C1317i;
import java.util.Map;

/* renamed from: com.sigmob.sdk.videoAd.g, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1380g extends C1317i {

    /* renamed from: c, reason: collision with root package name */
    private RewardVideoAdBroadcastReceiver f38774c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f38775d;

    public C1380g(InterfaceC1274p interfaceC1274p, boolean z2) {
        super(interfaceC1274p);
        this.f38775d = z2;
    }

    private static boolean c(MaterialMeta materialMeta) {
        boolean z2 = materialMeta.creative_type.intValue() == EnumC1270n.CreativeTypeVideo_Html_Snippet.a() || materialMeta.creative_type.intValue() == EnumC1270n.CreativeTypeVideo_transparent_html.a();
        boolean zB = com.sigmob.sdk.base.utils.s.b(materialMeta.video_url);
        ByteString byteString = materialMeta.html_snippet;
        return z2 && (byteString != null && byteString.size() > 10) && zB;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0046  */
    @Override // com.sigmob.sdk.mraid.C1317i, com.sigmob.sdk.base.common.AbstractC1285y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.sigmob.sdk.base.models.BaseAdUnit r12, android.os.Bundle r13) {
        /*
            r11 = this;
            com.sigmob.sdk.base.common.C1258h.a(r12)
            super.a(r12, r13)
            com.sigmob.sdk.base.common.p r0 = r11.f36054a
            boolean r0 = r0 instanceof com.sigmob.sdk.videoAd.h
            if (r0 == 0) goto L1e
            com.sigmob.sdk.videoAd.RewardVideoAdBroadcastReceiver r0 = new com.sigmob.sdk.videoAd.RewardVideoAdBroadcastReceiver
            com.sigmob.sdk.base.common.p r1 = r11.f36054a
            com.sigmob.sdk.videoAd.h r1 = (com.sigmob.sdk.videoAd.h) r1
            java.lang.String r2 = r12.getUuid()
            r0.<init>(r12, r1, r2)
            r11.f38774c = r0
            r0.a(r0)
        L1e:
            int r0 = r12.getAd_type()
            r1 = 4
            r2 = 1
            if (r0 == r2) goto L28
            if (r0 != r1) goto L46
        L28:
            int r3 = r12.getCreativeType()
            com.sigmob.sdk.base.common.n r4 = com.sigmob.sdk.base.common.EnumC1270n.CreativeTypeMRAID
            int r4 = r4.a()
            if (r3 != r4) goto L37
            java.lang.String r3 = "mraid"
            goto L48
        L37:
            int r3 = r12.getCreativeType()
            com.sigmob.sdk.base.common.n r4 = com.sigmob.sdk.base.common.EnumC1270n.CreativeTypeMRAIDTWO
            int r4 = r4.a()
            if (r3 != r4) goto L46
            java.lang.String r3 = "mraid_two"
            goto L48
        L46:
            java.lang.String r3 = "reward"
        L48:
            if (r13 == 0) goto L51
            java.lang.String r4 = "isHalfInterstitial"
            boolean r5 = r11.f38775d
            r13.putBoolean(r4, r5)
        L51:
            java.lang.String r4 = r12.getAdslot_id()
            com.sigmob.sdk.videoAd.n r10 = new com.sigmob.sdk.videoAd.n
            r10.<init>()
            java.lang.String r5 = "vopen"
            r6 = 0
            r8 = 0
            r9 = 0
            r7 = r12
            com.sigmob.sdk.base.common.ad.a(r5, r6, r7, r8, r9, r10)
            if (r0 != r1) goto L75
            com.sigmob.sdk.base.models.rtb.MaterialMeta r12 = r7.getMaterial()
            java.lang.Integer r12 = r12.theme_data
            int r12 = r12.intValue()
            if (r12 == r2) goto L93
            boolean r12 = r11.f38775d
            if (r12 != 0) goto L93
        L75:
            int r12 = r7.getCreativeType()
            com.sigmob.sdk.base.common.n r0 = com.sigmob.sdk.base.common.EnumC1270n.CreativeTypeMRAIDTWO
            int r0 = r0.a()
            if (r12 != r0) goto L96
            com.sigmob.sdk.base.models.rtb.MaterialMeta r12 = r7.getMaterial()
            java.lang.Integer r12 = r12.theme_data
            int r12 = r12.intValue()
            if (r12 == r2) goto L93
            int r12 = r7.getTemplateType()
            if (r12 != r2) goto L96
        L93:
            java.lang.Class<com.sigmob.sdk.base.common.TransparentAdActivity> r12 = com.sigmob.sdk.base.common.TransparentAdActivity.class
            goto L98
        L96:
            java.lang.Class<com.sigmob.sdk.base.common.AdActivity> r12 = com.sigmob.sdk.base.common.AdActivity.class
        L98:
            android.content.Context r0 = com.sigmob.sdk.b.e()
            java.lang.String r1 = r7.getUuid()
            com.sigmob.sdk.base.BaseAdActivity.a(r0, r12, r1, r13, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.videoAd.C1380g.a(com.sigmob.sdk.base.models.BaseAdUnit, android.os.Bundle):void");
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1285y
    public void b(BaseAdUnit baseAdUnit) {
        RewardVideoAdBroadcastReceiver rewardVideoAdBroadcastReceiver = this.f38774c;
        if (rewardVideoAdBroadcastReceiver != null) {
            rewardVideoAdBroadcastReceiver.b(rewardVideoAdBroadcastReceiver);
            this.f38774c = null;
        }
        super.b(baseAdUnit);
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

    private static boolean b(MaterialMeta materialMeta) {
        return (materialMeta.creative_type.intValue() == EnumC1270n.CreativeTypeVideo_Tar.a()) && com.sigmob.sdk.base.utils.s.b(materialMeta.endcard_md5) && com.sigmob.sdk.base.utils.s.b(materialMeta.endcard_url) && com.sigmob.sdk.base.utils.s.b(materialMeta.video_url);
    }

    public static boolean d(BaseAdUnit baseAdUnit) {
        boolean zC = C1317i.c(baseAdUnit);
        MaterialMeta material = baseAdUnit.getMaterial();
        return zC && (baseAdUnit.getCreativeType() == EnumC1270n.CreativeTypeMRAID.a() ? C1317i.a(material) : b(material) || c(material) || d(material));
    }

    private static boolean d(MaterialMeta materialMeta) {
        return (materialMeta.creative_type.intValue() == EnumC1270n.CreativeTypeVideo_EndCardURL.a()) && com.sigmob.sdk.base.utils.s.b(materialMeta.html_url) && com.sigmob.sdk.base.utils.s.b(materialMeta.video_url);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    @Override // com.sigmob.sdk.mraid.C1317i, com.sigmob.sdk.base.common.AbstractC1285y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(com.sigmob.sdk.base.models.BaseAdUnit r6) {
        /*
            r5 = this;
            boolean r0 = super.a(r6)
            com.sigmob.sdk.base.models.rtb.MaterialMeta r1 = r6.getMaterial()
            int r6 = r6.getCreativeType()
            com.sigmob.sdk.base.common.n r2 = com.sigmob.sdk.base.common.EnumC1270n.CreativeTypeMRAID
            int r2 = r2.a()
            r3 = 0
            r4 = 1
            if (r6 != r2) goto L1b
            boolean r6 = com.sigmob.sdk.mraid.C1317i.a(r1)
            goto L39
        L1b:
            com.sigmob.sdk.base.common.n r2 = com.sigmob.sdk.base.common.EnumC1270n.CreativeTypeMRAIDTWO
            int r2 = r2.a()
            if (r6 != r2) goto L25
        L23:
            r6 = r4
            goto L39
        L25:
            boolean r6 = b(r1)
            boolean r2 = c(r1)
            boolean r1 = d(r1)
            if (r6 != 0) goto L23
            if (r2 != 0) goto L23
            if (r1 == 0) goto L38
            goto L23
        L38:
            r6 = r3
        L39:
            if (r0 == 0) goto L3e
            if (r6 == 0) goto L3e
            return r4
        L3e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.videoAd.C1380g.a(com.sigmob.sdk.base.models.BaseAdUnit):boolean");
    }
}
