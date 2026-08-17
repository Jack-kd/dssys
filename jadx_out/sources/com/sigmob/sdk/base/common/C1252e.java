package com.sigmob.sdk.base.common;

import android.text.TextUtils;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.mta.PointCategory;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.sigmob.sdk.base.common.e, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1252e implements C1258h.b {

    /* renamed from: b, reason: collision with root package name */
    private final List<BaseAdUnit> f35867b;

    /* renamed from: c, reason: collision with root package name */
    private final C1258h.b f35868c;

    /* renamed from: d, reason: collision with root package name */
    private final LoadAdRequest f35869d;

    /* renamed from: a, reason: collision with root package name */
    private final String f35866a = "AdListCacheManger";

    /* renamed from: e, reason: collision with root package name */
    private final List<BaseAdUnit> f35870e = new ArrayList();

    public C1252e(List<BaseAdUnit> list, C1258h.b bVar, LoadAdRequest loadAdRequest) {
        this.f35867b = list;
        this.f35868c = bVar;
        this.f35869d = loadAdRequest;
    }

    @Override // com.sigmob.sdk.base.common.C1258h.b
    public void a(BaseAdUnit baseAdUnit) {
        if (com.sigmob.sdk.base.utils.v.b(this.f35868c)) {
            this.f35868c.a(baseAdUnit);
        }
    }

    @Override // com.sigmob.sdk.base.common.C1258h.b
    public void a(BaseAdUnit baseAdUnit, String str) {
        if (com.sigmob.sdk.base.utils.f.a(this.f35867b)) {
            return;
        }
        BaseAdUnit baseAdUnit2 = this.f35867b.get(0);
        if (baseAdUnit != baseAdUnit2) {
            com.sigmob.sdk.base.network.h.a(baseAdUnit, TextUtils.isEmpty(str) ? C1244a.f35696x : C1244a.f35697y);
            ad.a(PointCategory.LOADEND, TextUtils.isEmpty(str) ? "1" : "0", baseAdUnit, null, this.f35869d, null);
        } else {
            if (com.sigmob.sdk.base.utils.v.b(this.f35868c)) {
                this.f35868c.a(baseAdUnit2, str);
            }
            this.f35870e.size();
        }
    }

    public boolean a(boolean z2) {
        if (com.sigmob.sdk.base.utils.f.b(this.f35867b)) {
            if (z2) {
                BaseAdUnit baseAdUnit = this.f35867b.get(0);
                if (baseAdUnit.getPlayMode() == 2) {
                    this.f35870e.add(baseAdUnit);
                    C1258h.g().a(baseAdUnit, this);
                }
            } else {
                for (int i2 = 0; i2 < this.f35867b.size(); i2++) {
                    BaseAdUnit baseAdUnit2 = this.f35867b.get(i2);
                    if (baseAdUnit2.getPlayMode() != 2) {
                        this.f35870e.add(baseAdUnit2);
                        baseAdUnit2.setCatchVideo(true);
                        C1258h.g().a(baseAdUnit2, this);
                    }
                }
            }
            this.f35870e.size();
        }
        return com.sigmob.sdk.base.utils.f.b(this.f35870e);
    }
}
