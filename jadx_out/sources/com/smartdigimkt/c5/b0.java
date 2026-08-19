package com.smartdigimkt.c5;

/* loaded from: classes5.dex */
public abstract class b0 {
    public static com.smartdigimkt.q3.a a(com.smartdigimkt.g5.a aVar) throws NumberFormatException {
        com.smartdigimkt.q3.a aVar2 = new com.smartdigimkt.q3.a();
        int i2 = aVar.f40404k;
        aVar2.f42787v = i2 == 1;
        aVar2.f42748a = aVar.f40398e;
        aVar2.f42750b = aVar.f40400g;
        aVar2.f42760g = aVar.f40413t;
        aVar2.f42762h = 0;
        aVar2.f42764i = 2;
        aVar2.f42766j = 0;
        com.smartdigimkt.h5.a aVar3 = aVar.f40402i;
        if (aVar3 != null) {
            aVar2.f42782r = aVar3.f40591a;
            aVar2.f42784s = aVar3.f40592b;
            aVar2.f42785t = aVar3.f40593c;
        }
        if (i2 == 1) {
            com.smartdigimkt.l3.a aVar4 = aVar.f40407n;
            if (aVar4 != null) {
                aVar2.f42752c = String.valueOf(aVar4.f41628b);
            }
        } else {
            aVar2.f42752c = String.valueOf(aVar.f40396c);
            a(aVar2, aVar.f40405l);
        }
        aVar2.f42768k = 0;
        return aVar2;
    }

    public static void a(com.smartdigimkt.q3.a aVar, com.smartdigimkt.a5.e eVar) throws NumberFormatException {
        if (aVar == null || eVar == null) {
            return;
        }
        Integer.parseInt("1");
        aVar.f42754d = eVar.f39409C;
        aVar.f42752c = String.valueOf(eVar.f39423m);
        if (eVar.f39434x != null) {
            aVar.f42770l = aVar.f42770l;
        }
    }
}
