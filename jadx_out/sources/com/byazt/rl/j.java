package com.byazt.rl;

import com.byazt.jz.s;

@com.byazt.kj.hp(hp = {0, 1, 578, 38})
/* loaded from: classes3.dex */
public class j extends com.byazt.es.hp {
    private com.byazt.es.j w() {
        String strEb = com.byazt.ij.hp.eb();
        strEb.getClass();
        switch (strEb) {
            case "2g":
                return com.byazt.es.j.TYPE_2G;
            case "3g":
                return com.byazt.es.j.TYPE_3G;
            case "4g":
                return com.byazt.es.j.TYPE_4G;
            case "5g":
                return com.byazt.es.j.TYPE_5G;
            case "wifi":
                return com.byazt.es.j.TYPE_WIFI;
            default:
                return com.byazt.es.j.TYPE_UNKNOWN;
        }
    }

    @Override // com.byazt.es.hp
    public com.byazt.es.j j() {
        return w();
    }

    @Override // com.byazt.es.hp
    public boolean jx() {
        return super.jx();
    }

    @Override // com.byazt.es.hp
    public boolean l() {
        return s.u().j();
    }
}
