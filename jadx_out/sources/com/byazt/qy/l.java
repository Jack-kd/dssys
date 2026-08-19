package com.byazt.qy;

import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.byazt.wi.j;

@com.byazt.kj.hp(hp = {0, 1, 1010, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public final String f25081a;

    /* renamed from: e, reason: collision with root package name */
    public final String f25082e;
    public final String eb;
    public final String gu;
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public final String f25083j;
    public final String jl;
    public final String jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f25084l;

    /* renamed from: q, reason: collision with root package name */
    public final String f25085q;

    /* renamed from: s, reason: collision with root package name */
    public final String f25086s;

    /* renamed from: w, reason: collision with root package name */
    public final String f25087w;

    public l() {
        this.jx = "";
        this.hp = "";
        this.f25084l = "";
        this.f25083j = "";
        this.f25087w = "";
        this.f25081a = "";
        this.eb = "";
        this.f25086s = "";
        this.f25085q = "";
        this.f25082e = "";
        this.gu = "";
        this.jl = "";
    }

    public SparseArray<Object> hp() {
        j jVarHp = j.hp();
        jVarHp.hp(8003, this.jx);
        jVarHp.hp(8534, this.hp);
        jVarHp.hp(8535, this.f25084l);
        jVarHp.hp(8536, this.f25083j);
        jVarHp.hp(8537, this.f25087w);
        jVarHp.hp(8538, this.f25081a);
        jVarHp.hp(8539, this.eb);
        jVarHp.hp(8540, this.f25086s);
        jVarHp.hp(8541, this.f25085q);
        jVarHp.hp(8542, this.f25082e);
        jVarHp.hp(8543, this.gu);
        jVarHp.hp(8544, this.jl);
        return jVarHp.l();
    }

    public boolean j() {
        return TextUtils.equals(this.jl, "1");
    }

    @Nullable
    public String jx() {
        return this.f25083j;
    }

    @Nullable
    public String l() {
        return this.jx;
    }

    public String toString() {
        return "GMCustomInitConfig{mAppId='" + this.hp + "', mAppKey='" + this.f25084l + "', mADNName='" + this.jx + "', mAdnInitClassName='" + this.f25083j + "', mBannerClassName='" + this.f25087w + "', mInterstitialClassName='" + this.f25081a + "', mRewardClassName='" + this.eb + "', mFullVideoClassName='" + this.f25086s + "', mSplashClassName='" + this.f25085q + "', mDrawClassName='" + this.gu + "', mFeedClassName='" + this.f25082e + "'}";
    }

    public l(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        this.jx = str;
        this.hp = str2;
        this.f25084l = str3;
        this.f25083j = str4;
        this.f25087w = str5;
        this.f25081a = str6;
        this.eb = str7;
        this.f25086s = str8;
        this.f25085q = str9;
        this.f25082e = str10;
        this.gu = str11;
        this.jl = str12;
    }

    @Nullable
    public hp hp(int i2, int i3) {
        switch (i2) {
            case 1:
                return new hp(this.f25087w, com.byazt.lkj.hp.class);
            case 2:
                return new hp(this.f25081a, com.byazt.slc.hp.class);
            case 3:
                return new hp(this.f25085q, com.byazt.sz.hp.class);
            case 4:
            case 6:
            default:
                return null;
            case 5:
                if (i3 == 4) {
                    return new hp(this.f25082e, com.byazt.idb.hp.class);
                }
                if (i3 == 5) {
                    return new hp(this.gu, com.byazt.wzf.hp.class);
                }
                if (i3 == 3) {
                    return new hp(this.f25087w, com.byazt.lkj.hp.class);
                }
                return new hp(this.f25082e, com.byazt.idb.hp.class);
            case 7:
                if (i3 == 6) {
                    return new hp(this.eb, com.byazt.yzf.hp.class);
                }
                if (i3 == 7) {
                    return new hp(this.f25086s, com.byazt.xtd.hp.class);
                }
                if (i3 == 8) {
                    return new hp(this.f25081a, com.byazt.slc.hp.class);
                }
                return new hp(this.eb, com.byazt.yzf.hp.class);
            case 8:
                return new hp(this.f25086s, com.byazt.xtd.hp.class);
            case 9:
                break;
            case 10:
                if (i3 == 1) {
                    return new hp(this.f25081a, com.byazt.slc.hp.class);
                }
                if (i3 == 2) {
                    return new hp(this.f25086s, com.byazt.xtd.hp.class);
                }
                break;
        }
        return new hp(this.gu, com.byazt.wzf.hp.class);
    }
}
