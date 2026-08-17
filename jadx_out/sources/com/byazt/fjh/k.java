package com.byazt.fjh;

import com.baidu.mobads.sdk.internal.cb;
import com.byazt.nke.b;
import com.byazt.nke.dy;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, 42})
/* loaded from: classes2.dex */
public class k<T> extends hp {
    public T hp;

    /* renamed from: j, reason: collision with root package name */
    public byte[] f19886j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.nke.eb f19887l;

    public k(T t2, byte[] bArr, com.byazt.nke.eb ebVar, boolean z2) {
        this.hp = t2;
        this.f19887l = ebVar;
        this.jx = z2;
        this.f19886j = bArr;
    }

    private Map<String, String> l() {
        com.byazt.nke.eb ebVar = this.f19887l;
        if (ebVar != null) {
            return ebVar.w();
        }
        return null;
    }

    @Override // com.byazt.fjh.q
    public void hp(com.byazt.kz.jx jxVar) throws IOException {
        String strXs = jxVar.xs();
        Map<String, List<com.byazt.kz.jx>> mapEb = jxVar.zy().eb();
        List<com.byazt.kz.jx> list = mapEb.get(strXs);
        if (list == null) {
            l(jxVar);
            return;
        }
        synchronized (list) {
            try {
                Iterator<com.byazt.kz.jx> it = list.iterator();
                while (it.hasNext()) {
                    l(it.next());
                }
                list.clear();
                mapEb.remove(strXs);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void l(com.byazt.kz.jx jxVar) throws IOException {
        b bVarJx = jxVar.jx();
        int iW = jxVar.w();
        if (bVarJx != null) {
            T t2 = this.hp;
            if (iW == 3) {
                com.byazt.nke.l lVarK = jxVar.k();
                if (this.f19886j == null && lVarK.isRawMemoryCache()) {
                    this.f19886j = jxVar.zy().l(lVarK).hp((dy) jxVar.getRawCacheKey());
                }
                T tHp = (T) this.f19886j;
                if (tHp == null) {
                    tHp = this.hp;
                }
                if (!(tHp instanceof byte[])) {
                    if (jxVar.q()) {
                        tHp = com.byazt.os.hp.hp(jxVar);
                    } else {
                        tHp = jxVar.zy().jx(jxVar.k()).hp((com.byazt.nke.j) jxVar.getRawCacheKey());
                    }
                    if (!(tHp instanceof byte[])) {
                        bVarJx.onFailed(2000, "final data is not raw", new RuntimeException("final data is not raw"));
                    }
                }
                t2 = (T) tHp;
            } else if (iW == 2 && (t2 instanceof byte[])) {
                try {
                    t2 = (T) jxVar.zy().hp(jxVar).hp((byte[]) t2);
                } catch (Throwable th) {
                    bVarJx.onFailed(2000, "decode failed", th);
                    return;
                }
            }
            bVarJx.onSuccess(new com.byazt.kz.j().hp(jxVar, t2, l(), this.jx));
        }
    }

    @Override // com.byazt.fjh.q
    public String hp() {
        return cb.f11292o;
    }
}
