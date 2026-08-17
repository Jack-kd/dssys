package com.sigmob.sdk.base.common;

import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.LoadAdRequest;
import com.sigmob.sdk.base.mta.PointFiveEntity;
import com.sigmob.windad.WindAdRequest;

/* loaded from: classes4.dex */
public class al {

    /* renamed from: a, reason: collision with root package name */
    private String f35742a;

    /* renamed from: b, reason: collision with root package name */
    private String f35743b;

    /* renamed from: c, reason: collision with root package name */
    private String f35744c;

    /* renamed from: d, reason: collision with root package name */
    private String f35745d;

    /* renamed from: e, reason: collision with root package name */
    private WindAdRequest f35746e;

    /* renamed from: f, reason: collision with root package name */
    private LoadAdRequest f35747f;

    /* renamed from: g, reason: collision with root package name */
    private ad.a f35748g;

    /* renamed from: h, reason: collision with root package name */
    private BaseAdUnit f35749h;

    private al() {
    }

    public al a(ad.a aVar) {
        this.f35748g = aVar;
        return this;
    }

    public al b(String str) {
        this.f35744c = str;
        return this;
    }

    public al c(String str) {
        this.f35743b = str;
        return this;
    }

    public al d(String str) {
        this.f35745d = str;
        return this;
    }

    public al a(BaseAdUnit baseAdUnit) {
        this.f35749h = baseAdUnit;
        return this;
    }

    public al a(LoadAdRequest loadAdRequest) {
        this.f35747f = loadAdRequest;
        return this;
    }

    public al a(WindAdRequest windAdRequest) {
        this.f35746e = windAdRequest;
        return this;
    }

    public static al a(String str) {
        al alVar = new al();
        alVar.f35742a = str;
        return alVar;
    }

    public void a() {
        PointFiveEntity pointFiveEntity = new PointFiveEntity();
        pointFiveEntity.setAc_type("5");
        pointFiveEntity.setCategory(this.f35742a);
        pointFiveEntity.setSub_category(this.f35743b);
        if (com.sigmob.sdk.base.utils.s.b(this.f35744c)) {
            pointFiveEntity.setAdtype(this.f35744c);
        }
        ad.a(this.f35742a, this.f35743b, pointFiveEntity, this.f35746e);
        ad.a(this.f35742a, this.f35743b, pointFiveEntity, this.f35747f);
        ad.a(this.f35742a, this.f35743b, this.f35749h, pointFiveEntity);
        if (com.sigmob.sdk.base.utils.v.b(this.f35748g)) {
            this.f35748g.onAddExtra(pointFiveEntity);
        }
        ad.a(pointFiveEntity);
        pointFiveEntity.commit();
    }
}
