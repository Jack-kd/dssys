package com.sigmob.sdk.nativead;

import android.content.Context;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.TouchLocation;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.C1260i;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.models.rtb.NativeAdSetting;
import com.sigmob.sdk.base.models.rtb.SingleNativeAdSetting;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.sdk.videoAd.C1377d;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: com.sigmob.sdk.nativead.e, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1349e extends C1260i {

    /* renamed from: l, reason: collision with root package name */
    private int f38395l;

    /* renamed from: m, reason: collision with root package name */
    private int f38396m;

    /* renamed from: n, reason: collision with root package name */
    private int f38397n;

    /* renamed from: o, reason: collision with root package name */
    private int f38398o;

    /* renamed from: p, reason: collision with root package name */
    private int f38399p;

    /* renamed from: q, reason: collision with root package name */
    private int f38400q;

    /* renamed from: r, reason: collision with root package name */
    private boolean f38401r;

    /* renamed from: s, reason: collision with root package name */
    private Boolean f38402s;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(int i2, int i3, int i4, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put("video_time", String.valueOf(i2));
            options.put("begin_time", String.valueOf(i3));
            options.put("end_time", String.valueOf(i4));
            options.put("is_first", String.valueOf(i3 == 0 ? 1 : 0));
            options.put("is_last", String.valueOf(i4 >= i2 + (-1000) ? 1 : 0));
            pointEntitySigmob.setOptions(options);
        }
    }

    public static C1349e d(BaseAdUnit baseAdUnit) {
        C1349e c1349e = new C1349e();
        c1349e.b(baseAdUnit);
        return c1349e;
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public void b(BaseAdUnit baseAdUnit) {
        super.b(baseAdUnit);
        NativeAdSetting nativeAdSetting = baseAdUnit.getNativeAdSetting();
        SingleNativeAdSetting singleNativeSetting = baseAdUnit.getSingleNativeSetting();
        if (singleNativeSetting != null) {
            this.f38401r = singleNativeSetting.use_na_video_component.booleanValue();
        }
        if (nativeAdSetting != null) {
            this.f38396m = nativeAdSetting.preview_page_video_mute.intValue();
            this.f38397n = nativeAdSetting.detail_page_video_mute.intValue();
            this.f38398o = nativeAdSetting.impression_percent.intValue();
            this.f38399p = nativeAdSetting.impression_time.intValue();
            this.f38395l = nativeAdSetting.video_auto_play.intValue();
            this.f38400q = nativeAdSetting.end_impression_time.intValue();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C1377d(C1244a.f35683k, 0.25f));
        arrayList.add(new C1377d(C1244a.f35685m, 0.5f));
        arrayList.add(new C1377d(C1244a.f35686n, 0.75f));
        a((List<C1377d>) arrayList);
    }

    public void c(Context context, BaseAdUnit baseAdUnit) {
        com.sigmob.sdk.base.common.ad.a(PointCategory.TEMPLATE_SHOW, (String) null, baseAdUnit, (ad.a) null);
    }

    public void e(Context context, BaseAdUnit baseAdUnit) {
        com.sigmob.sdk.base.common.ad.a("ad_show", (String) null, baseAdUnit, (ad.a) null);
        com.sigmob.sdk.base.network.h.a(baseAdUnit, "ad_show");
    }

    public void f(Context context, BaseAdUnit baseAdUnit) {
        com.sigmob.sdk.base.common.ad.a("feed_click", (String) null, baseAdUnit, (ad.a) null);
        com.sigmob.sdk.base.network.h.a(baseAdUnit, "feed_click");
    }

    public boolean l() {
        return this.f38401r;
    }

    public int m() {
        return this.f38395l;
    }

    public int p() {
        return this.f38398o;
    }

    public int q() {
        return this.f38399p;
    }

    public int r() {
        return this.f38400q;
    }

    public int s() {
        int i2 = this.f38398o;
        if (i2 >= 0) {
            return i2;
        }
        return 50;
    }

    public int t() {
        int i2 = this.f38399p;
        if (i2 >= 0) {
            return i2;
        }
        return 1;
    }

    public boolean u() {
        int iM = m();
        return iM == 0 || (iM == 1 && ClientMetadata.getInstance().getActiveNetworkType() == 100);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(int i2, int i3, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            Map<String, String> options = pointEntitySigmob.getOptions();
            options.put("video_time", String.valueOf(i2));
            options.put("begin_time", String.valueOf(i3));
            pointEntitySigmob.setOptions(options);
        }
    }

    public void d(Context context, BaseAdUnit baseAdUnit) {
        com.sigmob.sdk.base.common.ad.a(PointCategory.TEMPLATE_CLOSE, (String) null, baseAdUnit, (ad.a) null);
    }

    public boolean n() {
        Boolean bool = this.f38402s;
        return bool != null ? bool.booleanValue() : this.f38396m == 0;
    }

    public boolean o() {
        return this.f38397n != 0;
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public void a(Context context, TouchLocation touchLocation, TouchLocation touchLocation2, com.sigmob.sdk.base.a aVar, BaseAdUnit baseAdUnit) throws UnsupportedEncodingException {
        String coordinate;
        SigMacroCommon macroCommon = baseAdUnit.getMacroCommon();
        if (macroCommon == null) {
            coordinate = "";
        } else {
            macroCommon.updateClickMarco(touchLocation, touchLocation2);
            coordinate = macroCommon.getCoordinate();
        }
        a(aVar, coordinate, true);
    }

    public void a(BaseAdUnit baseAdUnit, final int i2, final int i3) throws UnsupportedEncodingException {
        com.sigmob.sdk.base.common.ad.a("video_start", (String) null, baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.nativead.Q
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                C1349e.a(i2, i3, obj);
            }
        });
        SigMacroCommon macroCommon = baseAdUnit.getMacroCommon();
        macroCommon.addMarcoKey(SigMacroCommon._VIDEOTIME_, String.valueOf(i3));
        macroCommon.addMarcoKey(SigMacroCommon._BEGINTIME_, String.valueOf(i2));
        com.sigmob.sdk.base.network.h.a(baseAdUnit, "video_start");
    }

    public void a(BaseAdUnit baseAdUnit, final int i2, final int i3, final int i4) throws UnsupportedEncodingException {
        com.sigmob.sdk.base.common.ad.a("video_pause", (String) null, baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.nativead.P
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                C1349e.a(i4, i3, i2, obj);
            }
        });
        SigMacroCommon macroCommon = baseAdUnit.getMacroCommon();
        macroCommon.addMarcoKey(SigMacroCommon._VIDEOTIME_, String.valueOf(i4));
        macroCommon.addMarcoKey(SigMacroCommon._BEGINTIME_, String.valueOf(i3));
        macroCommon.addMarcoKey(SigMacroCommon._ENDTIME_, String.valueOf(i2));
        macroCommon.addMarcoKey(SigMacroCommon._PLAYFIRSTFRAME_, String.valueOf(i3 == 0 ? 1 : 0));
        macroCommon.addMarcoKey(SigMacroCommon._ENDTIME_, String.valueOf(i2));
        macroCommon.addMarcoKey(SigMacroCommon._ENDTIME_, String.valueOf(i2));
        com.sigmob.sdk.base.network.h.a(baseAdUnit, "video_pause");
    }

    public void a(boolean z2) {
        this.f38402s = Boolean.valueOf(z2);
    }
}
