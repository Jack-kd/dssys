package com.byazt.ap;

import android.text.TextUtils;
import com.byazt.uhg.a;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import com.byazt.uhg.u;
import com.sigmob.sdk.downloader.core.c;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 1229, 28})
/* loaded from: classes2.dex */
public class hp extends j {
    public hp(jl jlVar) {
        super(jlVar);
    }

    public void hp(final com.byazt.mnb.hp hpVar) {
        try {
            k.hp hpVar2 = new k.hp();
            hpVar2.hp((Object) l());
            l(c.f37363b, "bytes=0-");
            if (TextUtils.isEmpty(this.f18049a)) {
                hpVar.hp(this, new IOException("Url is Empty"));
                return;
            }
            hpVar2.hp(this.f18049a);
            hp(hpVar2);
            this.jx.hp(hpVar2.hp().l()).hp(new com.byazt.uhg.jx() { // from class: com.byazt.ap.hp.1
                @Override // com.byazt.uhg.jx
                public void onFailure(com.byazt.uhg.l lVar, IOException iOException) {
                    com.byazt.mnb.hp hpVar3 = hpVar;
                    if (hpVar3 != null) {
                        hpVar3.hp(hp.this, iOException);
                    }
                }

                @Override // com.byazt.uhg.jx
                public void onResponse(com.byazt.uhg.l lVar, u uVar) throws IOException {
                    if (hpVar == null) {
                        return;
                    }
                    HashMap map = new HashMap();
                    if (uVar == null) {
                        return;
                    }
                    com.byazt.oyr.l lVar2 = new com.byazt.oyr.l(uVar.j(), uVar.jx(), uVar.w(), map, null, uVar.l(), uVar.hp());
                    if (!uVar.j()) {
                        hpVar.hp(hp.this, lVar2);
                        return;
                    }
                    InputStream inputStreamJx = null;
                    try {
                        a aVarEb = uVar.eb();
                        if (aVarEb != null) {
                            for (int i2 = 0; i2 < aVarEb.hp(); i2++) {
                                map.put(aVarEb.hp(i2), aVarEb.l(i2));
                            }
                        }
                        int iIntValue = Long.valueOf(uVar.a().hp()).intValue();
                        byte[] bArr = new byte[iIntValue];
                        inputStreamJx = uVar.a().jx();
                        if (inputStreamJx.read(bArr) == iIntValue) {
                            lVar2.hp(bArr);
                        } else {
                            lVar2 = new com.byazt.oyr.l(false, uVar.jx(), "Byte opt fail", map, null, uVar.l(), uVar.hp());
                        }
                        hpVar.hp(hp.this, lVar2);
                        try {
                            inputStreamJx.close();
                        } catch (Throwable unused) {
                        }
                    } catch (Throwable th) {
                        try {
                            hpVar.hp(hp.this, new IOException(th.getMessage()));
                            if (inputStreamJx != null) {
                                try {
                                    inputStreamJx.close();
                                } catch (Throwable unused2) {
                                }
                            }
                        } finally {
                        }
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.ap.j
    public com.byazt.oyr.l hp() {
        InputStream inputStreamJx;
        try {
            k.hp hpVar = new k.hp();
            hpVar.hp((Object) l());
            l(c.f37363b, "bytes=0-");
            if (TextUtils.isEmpty(this.f18049a)) {
                com.byazt.ymw.u.l("ByteDownloadExecutor", "execute: Url is Empty");
                return null;
            }
            hpVar.hp(this.f18049a);
            hp(hpVar);
            u uVarL = this.jx.hp(hpVar.hp().l()).l();
            if (uVarL == null || !uVarL.j()) {
                return null;
            }
            HashMap map = new HashMap();
            a aVarEb = uVarL.eb();
            if (aVarEb != null) {
                for (int i2 = 0; i2 < aVarEb.hp(); i2++) {
                    map.put(aVarEb.hp(i2), aVarEb.l(i2));
                }
            }
            long jHp = uVarL.a().hp();
            byte[] bArr = new byte[Long.valueOf(jHp).intValue()];
            inputStreamJx = uVarL.a().jx();
            try {
                if (inputStreamJx.read(bArr) == jHp) {
                    com.byazt.oyr.l lVar = new com.byazt.oyr.l(uVarL.j(), uVarL.jx(), uVarL.w(), map, null, uVarL.l(), uVarL.hp());
                    lVar.hp(bArr);
                    try {
                        inputStreamJx.close();
                    } catch (Throwable unused) {
                    }
                    return lVar;
                }
                com.byazt.oyr.l lVar2 = new com.byazt.oyr.l(false, uVarL.jx(), "Byte opt fail", map, null, uVarL.l(), uVarL.hp());
                try {
                    inputStreamJx.close();
                } catch (Throwable unused2) {
                }
                return lVar2;
            } catch (Throwable unused3) {
                if (inputStreamJx != null) {
                    try {
                        inputStreamJx.close();
                    } catch (Throwable unused4) {
                    }
                }
                return null;
            }
        } catch (Throwable unused5) {
            inputStreamJx = null;
        }
    }
}
