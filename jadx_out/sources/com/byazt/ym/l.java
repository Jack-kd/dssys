package com.byazt.ym;

import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.jz.d;
import com.byazt.zn.ky;
import java.util.Collections;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1529, 34})
@ATSKeep
/* loaded from: classes3.dex */
public class l<T> implements com.byazt.pg.hp<T>, Function<Object, Object> {
    public volatile SparseArray hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.he.eb f28065j;
    public volatile com.byazt.jt.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public String f28066l;
    public String mAppId;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.he.l f28067w;

    public l(String str) {
        this.mAppId = str;
    }

    private com.byazt.jt.hp hp() {
        if (this.jx == null && this.hp != null) {
            this.jx = new com.byazt.jt.hp(this.hp);
        }
        return this.jx;
    }

    private void jx() {
        com.byazt.bm.hp hpVarV;
        com.byazt.jt.hp hpVarHp = hp();
        if (hpVarHp == null || (hpVarV = hpVarHp.v()) == null) {
            return;
        }
        this.f28065j = new com.byazt.bv.l(hpVarV);
    }

    private void l() {
        if (hp() == null) {
            return;
        }
        this.f28067w = new com.byazt.bv.hp(com.byazt.jz.s.u().xs());
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        int iIntValue = ((Integer) sparseArray.get(0)).intValue();
        if (iIntValue == -3) {
            ats_setAtsField((SparseArray) sparseArray.get(1));
            return null;
        }
        if (iIntValue == -2) {
            return ats_getAtsField();
        }
        switch (iIntValue) {
            case 2:
                return getAppId();
            case 3:
                return Boolean.valueOf(isSupportMultiProcess());
            case 4:
                return getExtra((String) sparseArray.get(1));
            case 5:
                return getAppName();
            case 6:
                return Boolean.valueOf(isPaid());
            case 7:
                return getKeywords();
            case 8:
                return getData();
            case 9:
                return Integer.valueOf(getTitleBarTheme());
            case 10:
                return Boolean.valueOf(isAllowShowNotify());
            case 11:
                return Boolean.valueOf(isDebug());
            case 12:
                return getDirectDownloadNetworkType();
            case 13:
                com.byazt.he.l customController = getCustomController();
                return customController != null ? new com.byazt.he.jx(customController) : customController;
            case 14:
                return Integer.valueOf(getPluginUpdateConfig());
            case 15:
                return Integer.valueOf(getAgeGroup());
            case 16:
                return Integer.valueOf(getThemeStatus());
            case 17:
                com.byazt.he.eb mediationConfig = getMediationConfig();
                return mediationConfig != null ? new com.byazt.he.e(mediationConfig) : mediationConfig;
            case 18:
                return Boolean.valueOf(isUseMediation());
            case 19:
                return getInitExtra();
            case 20:
                updateInitParams((SparseArray) sparseArray.get(1));
                return null;
            case 21:
                return getAppVersion();
            case 22:
                return getPackageName();
            case 23:
                return getVersionCode();
            case 24:
                return getSdkApiVersion();
            case 25:
                return Boolean.valueOf(isPlugin());
            case 26:
                return getAppChannel();
            case 27:
                return getService((String) sparseArray.get(1));
            default:
                return null;
        }
    }

    public SparseArray ats_getAtsField() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(1, this.hp);
        sparseArray.put(2, this.f28066l);
        return sparseArray;
    }

    public void ats_setAtsField(SparseArray sparseArray) {
        Object obj = sparseArray.get(1);
        if (obj != null) {
            this.hp = (SparseArray) obj;
        }
        Object obj2 = sparseArray.get(2);
        if (obj2 != null) {
            this.f28066l = (String) obj2;
        }
    }

    @Override // com.byazt.pg.hp
    public int getAgeGroup() {
        com.byazt.jt.hp hpVarHp = hp();
        if (hpVarHp == null) {
            return 0;
        }
        return hpVarHp.zy();
    }

    @Override // com.byazt.pg.hp
    public String getAppChannel() {
        return com.byazt.ij.hp.q();
    }

    @Override // com.byazt.pg.hp
    public String getAppId() {
        return this.mAppId;
    }

    @Override // com.byazt.pg.hp
    public String getAppName() {
        String str = this.f28066l;
        if (str != null) {
            return str;
        }
        com.byazt.jt.hp hpVarHp = hp();
        if (hpVarHp == null) {
            return "";
        }
        String strL = hpVarHp.l();
        this.f28066l = strL;
        if (TextUtils.isEmpty(strL)) {
            this.f28066l = com.byazt.ij.hp.e();
        }
        return this.f28066l;
    }

    @Override // com.byazt.pg.hp
    public String getAppVersion() {
        return com.byazt.ij.hp.w();
    }

    @Override // com.byazt.pg.hp
    public com.byazt.he.l getCustomController() {
        com.byazt.he.l lVar = this.f28067w;
        if (lVar != null) {
            return lVar;
        }
        l();
        return this.f28067w;
    }

    @Override // com.byazt.pg.hp
    public String getData() {
        com.byazt.jt.hp hpVarHp = hp();
        return hpVarHp == null ? "" : hpVarHp.w();
    }

    @Override // com.byazt.pg.hp
    public int[] getDirectDownloadNetworkType() {
        com.byazt.jt.hp hpVarHp = hp();
        return hpVarHp == null ? new int[0] : hpVarHp.q();
    }

    @Override // com.byazt.pg.hp
    public Object getExtra(String str) {
        Map<String, Object> mapXs;
        com.byazt.jt.hp hpVarHp = hp();
        if (hpVarHp == null || (mapXs = hpVarHp.xs()) == null) {
            return null;
        }
        return mapXs.get(str);
    }

    @Override // com.byazt.pg.hp
    public Map<String, Object> getInitExtra() {
        com.byazt.jt.hp hpVarHp = hp();
        return hpVarHp == null ? Collections.EMPTY_MAP : hpVarHp.xs();
    }

    @Override // com.byazt.pg.hp
    public String getKeywords() {
        com.byazt.jt.hp hpVarHp = hp();
        return hpVarHp == null ? "" : hpVarHp.j();
    }

    @Override // com.byazt.pg.hp
    public com.byazt.he.eb getMediationConfig() {
        com.byazt.he.eb ebVar = this.f28065j;
        if (ebVar != null) {
            return ebVar;
        }
        jx();
        return this.f28065j;
    }

    @Override // com.byazt.pg.hp
    public String getPackageName() {
        return ky.s();
    }

    @Override // com.byazt.pg.hp
    public int getPluginUpdateConfig() {
        com.byazt.jt.hp hpVarHp = hp();
        if (hpVarHp == null) {
            return 0;
        }
        return hpVarHp.jl();
    }

    @Override // com.byazt.pg.hp
    public String getSdkApiVersion() {
        return d.f21860w;
    }

    public T getService(String str) {
        return (T) j.getService(str, this);
    }

    @Override // com.byazt.pg.hp
    public int getThemeStatus() {
        com.byazt.jt.hp hpVarHp = hp();
        if (hpVarHp == null) {
            return 0;
        }
        return hpVarHp.k();
    }

    @Override // com.byazt.pg.hp
    public int getTitleBarTheme() {
        com.byazt.jt.hp hpVarHp = hp();
        if (hpVarHp == null) {
            return 0;
        }
        return hpVarHp.a();
    }

    @Override // com.byazt.pg.hp
    public String getVersionCode() {
        return ky.q();
    }

    @Override // com.byazt.pg.hp
    public boolean isAllowShowNotify() {
        com.byazt.jt.hp hpVarHp = hp();
        if (hpVarHp == null) {
            return false;
        }
        return hpVarHp.eb();
    }

    @Override // com.byazt.pg.hp
    public boolean isDebug() {
        com.byazt.jt.hp hpVarHp = hp();
        if (hpVarHp == null) {
            return false;
        }
        return hpVarHp.s();
    }

    @Override // com.byazt.pg.hp
    public boolean isPaid() {
        com.byazt.jt.hp hpVarHp = hp();
        if (hpVarHp == null) {
            return false;
        }
        return hpVarHp.jx();
    }

    @Override // com.byazt.pg.hp
    public boolean isPlugin() {
        return d.hp();
    }

    @Override // com.byazt.pg.hp
    public boolean isSupportMultiProcess() {
        return com.byazt.lca.jx.hp().l();
    }

    @Override // com.byazt.pg.hp
    public boolean isUseMediation() {
        com.byazt.jt.hp hpVarHp = hp();
        if (hpVarHp == null) {
            return false;
        }
        return hpVarHp.u();
    }

    @Override // com.byazt.pg.hp
    public void updateInitParams(SparseArray sparseArray) {
        if (this.hp == sparseArray) {
            return;
        }
        this.hp = sparseArray;
        this.jx = new com.byazt.jt.hp(sparseArray);
        if (this.f28065j != null) {
            jx();
        }
        if (this.f28067w != null) {
            l();
        }
    }
}
