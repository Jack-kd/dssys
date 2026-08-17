package com.byazt.he;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2022, 45})
@ATSKeep
/* loaded from: classes2.dex */
public class e implements eb, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile eb f20676l;

    public e(eb ebVar) {
        this.f20676l = ebVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (((Integer) ((SparseArray) obj).get(0)).intValue()) {
            case 1:
                return this.f20676l.getPublisherDid();
            case 2:
                return Boolean.valueOf(this.f20676l.isOpenAdnTest());
            case 3:
                s mediationConfigUserInfoForSegment = this.f20676l.getMediationConfigUserInfoForSegment();
                return mediationConfigUserInfoForSegment != null ? new q(mediationConfigUserInfoForSegment) : mediationConfigUserInfoForSegment;
            case 4:
                return this.f20676l.getLocalExtra();
            case 5:
                return Boolean.valueOf(this.f20676l.getHttps());
            case 6:
                return this.f20676l.getCustomLocalConfig();
            case 7:
                return this.f20676l.getOpensdkVer();
            case 8:
                return Boolean.valueOf(this.f20676l.isWxInstalled());
            case 9:
                return Boolean.valueOf(this.f20676l.isSupportH265());
            case 10:
                return Boolean.valueOf(this.f20676l.isSupportSplashZoomout());
            case 11:
                return this.f20676l.wxAppId();
            default:
                return null;
        }
    }

    @Override // com.byazt.he.eb
    public JSONObject getCustomLocalConfig() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        return (JSONObject) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.he.eb
    public boolean getHttps() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.eb
    public Map getLocalExtra() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return (Map) this.hp.apply(sparseArray);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.he.eb
    public s getMediationConfigUserInfoForSegment() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        ?? Apply = this.hp.apply(sparseArray);
        q qVar = Apply;
        if (Apply != 0) {
            qVar = new q((Function) Apply);
        }
        return qVar;
    }

    @Override // com.byazt.he.eb
    public String getOpensdkVer() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.he.eb
    public String getPublisherDid() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.he.eb
    public boolean isOpenAdnTest() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.eb
    public boolean isSupportH265() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.eb
    public boolean isSupportSplashZoomout() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.eb
    public boolean isWxInstalled() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.eb
    public String wxAppId() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        return (String) this.hp.apply(sparseArray);
    }

    public e(Function function) {
        this.hp = function;
    }
}
