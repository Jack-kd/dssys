package com.beizi.fusion;

/* loaded from: classes2.dex */
public abstract class l9 {
    public static sa a(me meVar, ua uaVar) {
        if (meVar == null) {
            return null;
        }
        fm fmVarB = meVar.b();
        if (fm.POST == fmVarB) {
            return new gl(meVar, uaVar);
        }
        if (fm.GET == fmVarB) {
            return new p8(meVar, uaVar);
        }
        if (fm.DOWNLOAD == fmVarB) {
            return new jh(meVar, uaVar);
        }
        if (fm.CACHE_IMAGE == fmVarB) {
            return new of(meVar, uaVar);
        }
        if (fm.STREAM == fmVarB) {
            return new hl(meVar, uaVar);
        }
        return null;
    }
}
