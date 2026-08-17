package com.sigmob.sdk.base.common;

import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes4.dex */
class af implements InterfaceC1281u {

    /* renamed from: a, reason: collision with root package name */
    public static final String f35715a = "RewardVideoViewAbilitySession";

    /* renamed from: c, reason: collision with root package name */
    private boolean f35717c;

    /* renamed from: d, reason: collision with root package name */
    private int f35718d;

    /* renamed from: b, reason: collision with root package name */
    private int f35716b = 0;

    /* renamed from: e, reason: collision with root package name */
    private int f35719e = 0;

    private String a(int i2) {
        return i2 == 0 ? "0" : String.valueOf(i2 / 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i2, String str, BaseAdUnit baseAdUnit, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            pointEntitySigmob.setVtime(b(this.f35716b));
            pointEntitySigmob.setSkip_show_time(b(this.f35718d));
            pointEntitySigmob.setCurrent_time(b(i2));
            pointEntitySigmob.setPlay_process(String.valueOf((i2 * 1.0d) / b()));
            if (str.equals("start")) {
                pointEntitySigmob.setScene_id(baseAdUnit.getAd_scene_id());
                pointEntitySigmob.setScene_desc(baseAdUnit.getAd_scene_desc());
                pointEntitySigmob.setBid_token(baseAdUnit.getBid_token());
            }
            pointEntitySigmob.setPlay_time(a(i2));
            pointEntitySigmob.setSet_close_time(String.format(Locale.getDefault(), "%d", Integer.valueOf(this.f35719e)));
            pointEntitySigmob.setIs_truncation(a() ? "1" : "0");
            pointEntitySigmob.setIs_force(this.f35717c ? "1" : "0");
        }
    }

    private int b() {
        int i2 = this.f35719e;
        return (i2 <= 0 || i2 * 1000 >= this.f35716b) ? this.f35716b : i2 * 1000;
    }

    private void a(BaseAdUnit baseAdUnit, int i2, String str, String str2, String str3) throws UnsupportedEncodingException {
        a(baseAdUnit, PointCategory.PLAY, i2, str);
        SigMacroCommon macroCommon = baseAdUnit.getMacroCommon();
        macroCommon.addMarcoKey(SigMacroCommon._ENDTIME_, a(i2));
        macroCommon.addMarcoKey(SigMacroCommon._PROGRESS_, str2);
        com.sigmob.sdk.base.network.h.a(baseAdUnit, str3);
    }

    private String b(int i2) {
        return i2 == 0 ? "0" : String.format(Locale.getDefault(), "%.2f", Float.valueOf(i2 / 1000.0f));
    }

    private void a(final BaseAdUnit baseAdUnit, final String str, final int i2, String str2) {
        ad.a(str, str2, baseAdUnit, new ad.a() { // from class: com.sigmob.sdk.base.common.N
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                this.f35622a.a(i2, str, baseAdUnit, obj);
            }
        });
    }

    private void b(BaseAdUnit baseAdUnit, String str, int i2) {
        a(baseAdUnit, str, i2, (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(HashMap map, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            if (com.sigmob.sdk.base.utils.f.b(map)) {
                pointEntitySigmob.getOptions().putAll(map);
            }
        }
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1281u
    public boolean b(BaseAdUnit baseAdUnit) {
        com.sigmob.sdk.base.network.h.a(baseAdUnit, C1244a.f35693u);
        a(baseAdUnit, C1244a.f35693u, b(), (String) null);
        return true;
    }

    private boolean a() {
        int i2 = this.f35719e;
        return i2 > 0 && i2 * 1000 < this.f35716b;
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1281u
    public boolean a(BaseAdUnit baseAdUnit) {
        return true;
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1281u
    public boolean a(BaseAdUnit baseAdUnit, int i2, int i3) {
        this.f35716b = i2;
        this.f35719e = baseAdUnit.getEndTime();
        baseAdUnit.getMacroCommon().addMarcoKey(SigMacroCommon._VIDEOTIME_, a(this.f35716b));
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:84:0x012f  */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    @Override // com.sigmob.sdk.base.common.InterfaceC1281u
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(com.sigmob.sdk.base.models.BaseAdUnit r22, java.lang.String r23, int r24) {
        /*
            Method dump skipped, instructions count: 2090
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.common.af.a(com.sigmob.sdk.base.models.BaseAdUnit, java.lang.String, int):boolean");
    }

    @Override // com.sigmob.sdk.base.common.InterfaceC1281u
    public boolean a(BaseAdUnit baseAdUnit, boolean z2, int i2) {
        this.f35717c = z2;
        this.f35718d = i2;
        return true;
    }
}
