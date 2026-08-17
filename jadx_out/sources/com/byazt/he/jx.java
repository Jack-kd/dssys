package com.byazt.he;

import android.util.SparseArray;
import com.byazt.ym.ATSKeep;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 2022, 30})
@ATSKeep
/* loaded from: classes2.dex */
public class jx implements l, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile l f20678l;

    public jx(l lVar) {
        this.f20678l = lVar;
    }

    @Override // com.byazt.he.l
    public boolean alist() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                return Boolean.valueOf(this.f20678l.isCanUseLocation());
            case 2:
                w tTLocation = this.f20678l.getTTLocation();
                return tTLocation != null ? new a(tTLocation) : tTLocation;
            case 3:
                return Boolean.valueOf(this.f20678l.alist());
            case 4:
                return Boolean.valueOf(this.f20678l.isCanUsePhoneState());
            case 5:
                return this.f20678l.getDevImei();
            case 6:
                return Boolean.valueOf(this.f20678l.isCanUseWifiState());
            case 7:
                return this.f20678l.getMacAddress();
            case 8:
                return Boolean.valueOf(this.f20678l.isCanUseWriteExternal());
            case 9:
                return this.f20678l.getDevOaid();
            case 10:
                return Boolean.valueOf(this.f20678l.isCanUseAndroidId());
            case 11:
                gu mediationPrivacyConfig = this.f20678l.getMediationPrivacyConfig();
                return mediationPrivacyConfig != null ? new jl(mediationPrivacyConfig) : mediationPrivacyConfig;
            case 12:
                return this.f20678l.getAndroidId();
            case 13:
                return Boolean.valueOf(this.f20678l.isCanUsePermissionRecordAudio());
            case 14:
                return this.f20678l.userPrivacyConfig();
            case 15:
                return Boolean.valueOf(this.f20678l.isCanUseMessage());
            case 16:
                return Boolean.valueOf(this.f20678l.canRead(((Integer) sparseArray.get(1)).intValue()));
            default:
                return null;
        }
    }

    @Override // com.byazt.he.l
    public boolean canRead(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        sparseArray.put(1, Integer.valueOf(i2));
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.l
    public String getAndroidId() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.he.l
    public String getDevImei() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.he.l
    public String getDevOaid() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.he.l
    public String getMacAddress() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        return (String) this.hp.apply(sparseArray);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.he.l
    public gu getMediationPrivacyConfig() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        ?? Apply = this.hp.apply(sparseArray);
        jl jlVar = Apply;
        if (Apply != 0) {
            jlVar = new jl((Function) Apply);
        }
        return jlVar;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.util.function.Function] */
    @Override // com.byazt.he.l
    public w getTTLocation() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        ?? Apply = this.hp.apply(sparseArray);
        a aVar = Apply;
        if (Apply != 0) {
            aVar = new a((Function) Apply);
        }
        return aVar;
    }

    @Override // com.byazt.he.l
    public boolean isCanUseAndroidId() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.l
    public boolean isCanUseLocation() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.l
    public boolean isCanUseMessage() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.l
    public boolean isCanUsePermissionRecordAudio() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.l
    public boolean isCanUsePhoneState() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.l
    public boolean isCanUseWifiState() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.l
    public boolean isCanUseWriteExternal() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.he.l
    public Map userPrivacyConfig() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        return (Map) this.hp.apply(sparseArray);
    }

    public jx(Function function) {
        this.hp = function;
    }
}
