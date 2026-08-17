package com.byazt.lc;

import android.os.Build;
import android.text.TextUtils;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

@com.byazt.kj.hp(hp = {0, 1, 1769, 302})
/* loaded from: classes3.dex */
public class zy {
    public static volatile zy hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.ye.e f22418l;

    public static zy hp() {
        if (hp == null) {
            synchronized (zy.class) {
                try {
                    if (hp == null) {
                        hp = new zy();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private com.byazt.ye.e l() {
        if (this.f22418l == null) {
            ZeusLogger.errReport("zeussp", "getKvStore kvStore is null");
            this.f22418l = new com.byazt.ye.e() { // from class: com.byazt.lc.zy.1
                @Override // com.byazt.ye.e
                public int hp(String str, int i2) {
                    return 0;
                }

                @Override // com.byazt.ye.e
                public void l(String str, int i2) {
                }

                @Override // com.byazt.ye.e
                public void hp(String str) {
                }

                @Override // com.byazt.ye.e
                public boolean l(String str, boolean z2) {
                    return false;
                }

                @Override // com.byazt.ye.e
                public void hp(String str, String str2) {
                }

                @Override // com.byazt.ye.e
                public String l(String str, String str2) {
                    return "";
                }

                @Override // com.byazt.ye.e
                public void hp(String str, boolean z2) {
                }
            };
        }
        return this.f22418l;
    }

    public String a(String str) {
        return l().l("322a26270022213c34313c270634".concat(String.valueOf(str)), "");
    }

    public String e(String str) {
        return l().l("3321303d0b22312025".concat(String.valueOf(str)), "");
    }

    public void eb(String str) {
        l().hp("2f2b3c3d0c3f2435363a_".concat(String.valueOf(str)), true);
    }

    public String gu(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return l().l("3b293c320c34".concat(String.valueOf(a.hp(str))), "");
    }

    public void j(String str) {
        l().l("322a2627002a273025".concat(String.valueOf(str)), "");
        l().hp("322a2627002a273025".concat(String.valueOf(str)), Zeus.getHostAbi());
    }

    public void jl(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        l().hp("3b293c320c34".concat(String.valueOf(a.hp(str))));
    }

    public boolean jx(String str) {
        return !TextUtils.equals(l().l("322a2627002a273025".concat(String.valueOf(str)), ""), Zeus.getHostAbi());
    }

    public void k(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        l().hp("3b293c320c34293829312a2716262026".concat(String.valueOf(a.hp(str))));
    }

    public boolean q(String str) {
        return l().l("2f2b3c3d0c3f2435363a_".concat(String.valueOf(str)), false);
    }

    public void s(String str) {
        l().hp("2f2b3c3d0c3f2435363a_".concat(String.valueOf(str)));
    }

    public int w(String str) {
        return l().hp("2a29203416253a382a2c2a251a393630352b2a".concat(String.valueOf(str)), 0);
    }

    public List<String> zy(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String strL = l().l("3b293c320c34293829312a2716262026".concat(String.valueOf(a.hp(str))), "");
        if (TextUtils.isEmpty(strL)) {
            return null;
        }
        return Arrays.asList(strL.split("_"));
    }

    public boolean a(String str, int i2) {
        return l().l("1e000d2c301b1126091114073a34" + str + "_" + i2, false);
    }

    public boolean eb(String str, int i2) {
        return l().l("1e000d2c2d0e08160c002a002b0a111c25" + str + "_" + i2, false);
    }

    public int s(String str, int i2) {
        return l().hp("0800181c290e3a1c1411070a000d09181d3a" + str + "_" + i2, 0);
    }

    public boolean w(String str, int i2) {
        return l().hp(String.format(Locale.getDefault(), "3523333f16252026332b21360d25243525%s", str), -1) == i2;
    }

    public boolean j(String str, int i2) {
        return l().l(String.format(Locale.getDefault(), "332b26271e27293c3e3a%s-%d", str, Integer.valueOf(i2)), false);
    }

    public int jx(String str, int i2) {
        int iHp = l().hp("3b353c2c122a3d26" + str + "_" + i2, Integer.MAX_VALUE);
        if (iHp == 0) {
            return Integer.MAX_VALUE;
        }
        return iHp;
    }

    public void j(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strHp = a.hp(str);
        String strL = l().l("3b293c320c34293829312a2716262026".concat(String.valueOf(strHp)), "");
        if (TextUtils.isEmpty(strL)) {
            l().hp("3b293c320c34293829312a2716262026".concat(String.valueOf(strHp)), str2);
            return;
        }
        l().hp("3b293c320c34293829312a2716262026".concat(String.valueOf(strHp)), strL + "_" + str2);
    }

    public void jx(String str, int i2, boolean z2) {
        l().hp("1e000d2c2d0e08160c002a002b0a111c25" + str + "_" + i2, z2);
    }

    public boolean l(String str) {
        return !TextUtils.isEmpty(l().l("322a2627002a273025".concat(String.valueOf(str)), ""));
    }

    public void jx(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        l().hp("3b293c320c34".concat(String.valueOf(a.hp(str))), str2);
    }

    public int l(String str, int i2) {
        return l().hp("3b353c2c12222b26" + str + "_" + i2, 0);
    }

    public void hp(com.byazt.ye.e eVar) {
        this.f22418l = eVar;
    }

    public void l(String str, String str2) {
        l().hp("3321303d0b22312025".concat(String.valueOf(str)), str2);
    }

    public void hp(String str) {
        l().hp("282a382c132a362d25".concat(String.valueOf(str)), Build.VERSION.INCREMENTAL);
    }

    public void l(String str, int i2, boolean z2) {
        l().hp("1e000d2c301b1126091114073a34" + str + "_" + i2, z2);
    }

    public void hp(String str, int i2) {
        if (w(str) != i2) {
            l().l("2a29203416253a382a2c2a251a393630352b2a".concat(String.valueOf(str)), i2);
        }
    }

    public int l(String str, int i2, String str2) {
        return l().hp(str2 + "2503141a330e0126190a001d2b3412111f0b2a01323400170e170c2c" + str + "_" + i2, 0);
    }

    public void hp(String str, String str2) {
        if (TextUtils.equals(a(str), str2)) {
            return;
        }
        l().hp("322a26270022213c34313c270634".concat(String.valueOf(str)), str2);
    }

    public void hp(String str, int i2, int i3, int i4) {
        l().l("3b353c2c12222b26" + str + "_" + i2, i3);
        l().l("3b353c2c122a3d26" + str + "_" + i2, i4);
    }

    public void hp(String str, int i2, boolean z2) {
        String str2 = "332b26271e27293c3e3a" + str + "-" + i2;
        if (z2) {
            l().hp(str2, true);
        } else {
            l().hp(str2);
        }
    }

    public void hp(String str, int i2, int i3) {
        l().l("0800181c290e3a1c1411070a000d09181d3a" + str + "_" + i2, i3);
    }

    public void hp(String str, int i2, String str2) {
        l().l(str2 + "2503141a330e0126190a001d2b3412111f0b2a01323400170e170c2c" + str + "_" + i2, l(str, i2, str2) + 1);
    }
}
