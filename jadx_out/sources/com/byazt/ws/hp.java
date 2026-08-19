package com.byazt.ws;

import android.content.Context;
import com.byazt.dnb.gu;
import com.byazt.he.j;
import com.byazt.jz.d;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.kz.w;
import com.byazt.nke.a;
import com.byazt.nke.ec;
import com.byazt.pg.w;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import com.byazt.uhg.u;
import com.byazt.zn.b;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderConfigure;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 770, 28})
/* loaded from: classes3.dex */
public class hp {
    public static Context getContext() {
        return sz.getContext();
    }

    public static j hp() {
        return new j() { // from class: com.byazt.ws.hp.1
            @Override // com.byazt.he.j
            public boolean a() {
                return d.jx;
            }

            @Override // com.byazt.he.j
            public Map<String, Object> eb() {
                return com.byazt.tn.jx.e();
            }

            @Override // com.byazt.he.j
            public com.byazt.pg.hp hp() {
                return com.byazt.el.hp.w();
            }

            @Override // com.byazt.he.j
            public boolean j() {
                return s.u().nu();
            }

            @Override // com.byazt.he.j
            public int jx() {
                return d.f21856j;
            }

            @Override // com.byazt.he.j
            public int l() {
                return 7643;
            }

            @Override // com.byazt.he.j
            public boolean s() {
                return false;
            }

            @Override // com.byazt.he.j
            public boolean w() {
                return sz.l().qo();
            }
        };
    }

    public static com.byazt.he.hp jx() {
        return new com.byazt.he.hp() { // from class: com.byazt.ws.hp.3
            @Override // com.byazt.he.hp
            public w.l hp() {
                return new b.hp();
            }
        };
    }

    public static ec l() {
        return new w.hp().hp(new com.byazt.jn.hp(Math.max(Math.min(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16, 10485760), AVMDLDataLoaderConfigure.DEFAULT_MAX_FACTORY_MEMORY_SIZE), 524288, 41943040L, true, true, new File(gu.a()))).hp(com.byazt.uid.w.hp()).hp(new com.byazt.nke.w() { // from class: com.byazt.ws.hp.2
            private Map<String, String> hp(a aVar, u uVar) {
                HashMap map = new HashMap();
                if (aVar.l()) {
                    com.byazt.uhg.a aVarEb = uVar.eb();
                    int iHp = aVarEb.hp();
                    for (int i2 = 0; i2 < iHp; i2++) {
                        String strHp = aVarEb.hp(i2);
                        String strL = aVarEb.l(i2);
                        if (strHp != null) {
                            map.put(strHp, strL);
                        }
                    }
                }
                return map;
            }

            @Override // com.byazt.nke.w
            public com.byazt.tf.j call(a aVar) throws IOException {
                long jCurrentTimeMillis = System.currentTimeMillis();
                jl jlVarA = com.byazt.cm.w.hp().l().a();
                k kVarL = new k.hp().hp(aVar.hp()).hp().hp("csj_client_source_from", "2").l();
                u uVar = null;
                com.byazt.tf.w wVar = aVar.jx() ? new com.byazt.tf.w() : null;
                if (wVar != null) {
                    wVar.hp(jCurrentTimeMillis);
                }
                try {
                    u uVarL = jlVarA.hp(kVarL).l();
                    if (wVar != null) {
                        try {
                            wVar.l(System.currentTimeMillis());
                        } catch (Throwable th) {
                            th = th;
                            uVar = uVarL;
                            try {
                                return hp(wVar, th);
                            } finally {
                                com.byazt.qkc.l.hp(uVar);
                            }
                        }
                    }
                    if (aVar.j() != null) {
                        aVar.j().onStep(3, null);
                    }
                    Map<String, String> mapHp = hp(aVar, uVarL);
                    byte[] bArrJ = uVarL.a().j();
                    mapHp.put("image_size", String.valueOf(bArrJ == null ? 0 : bArrJ.length));
                    com.byazt.tf.j jVar = new com.byazt.tf.j(uVarL.jx(), bArrJ, "", mapHp);
                    if (wVar != null) {
                        wVar.jx(System.currentTimeMillis());
                    }
                    jVar.hp(wVar);
                    com.byazt.qkc.l.hp(uVarL);
                    return jVar;
                } catch (Throwable th2) {
                    th = th2;
                }
            }

            private com.byazt.tf.j hp(com.byazt.tf.w wVar, Throwable th) {
                th.getMessage();
                if (wVar != null) {
                    wVar.jx(System.currentTimeMillis());
                }
                com.byazt.tf.j jVar = new com.byazt.tf.j(0, th, "net failed");
                jVar.hp(wVar);
                return jVar;
            }
        }).hp();
    }
}
