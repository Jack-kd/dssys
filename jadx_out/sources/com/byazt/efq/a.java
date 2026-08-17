package com.byazt.efq;

import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.byazt.hq.cx;
import com.byazt.hq.d;
import com.byazt.hq.hq;
import com.byazt.hq.j;
import com.byazt.hq.n;
import com.byazt.hq.ns;
import com.byazt.hq.o;
import com.byazt.hq.sz;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import com.byazt.uhg.v;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1388, 54})
/* loaded from: classes2.dex */
public class a extends jl {
    public cx jl;
    public com.byazt.uhg.j zy;

    public a(jl.hp hpVar) {
        super(hpVar);
        hp(hpVar);
        this.zy = new eb(this.jl);
    }

    private void hp(jl.hp hpVar) {
        cx.hp hpVar2 = new cx.hp();
        hpVar2.f20796b = (int) hpVar.jx;
        hpVar2.ud = hpVar.f26209j;
        hpVar2.di = (int) hpVar.f26213w;
        hpVar2.nu = hpVar.f26207a;
        hpVar2.f20803o = (int) hpVar.eb;
        hpVar2.dy = hpVar.f26212s;
        hpVar2.hq = hpVar.f26208e;
        hpVar2.wv = hpVar.gu;
        hpVar2.hp(new jx(hpVar.f26210l));
        List<com.byazt.uhg.q> list = hpVar.hp;
        if (list != null && !list.isEmpty()) {
            for (final com.byazt.uhg.q qVar : list) {
                hpVar2.hp(new sz() { // from class: com.byazt.efq.a.1
                    @Override // com.byazt.hq.sz
                    public hq hp(sz.hp hpVar3) throws IOException {
                        return ((q) qVar.hp(new w(hpVar3))).hp;
                    }
                });
            }
        }
        this.jl = hpVar2.hp();
    }

    private boolean jx(v vVar) {
        return (vVar == null || vVar.f26219a != v.hp.STRING_TYPE || TextUtils.isEmpty(vVar.f26220j)) ? false : true;
    }

    private boolean l(v vVar) {
        byte[] bArr;
        return vVar != null && vVar.f26219a == v.hp.BYTE_ARRAY_TYPE && (bArr = vVar.f26222w) != null && bArr.length > 0;
    }

    @Override // com.byazt.uhg.jl
    public com.byazt.uhg.j hp() {
        return this.zy;
    }

    @Override // com.byazt.uhg.jl
    public com.byazt.uhg.l hp(k kVar) {
        if (kVar == null) {
            return null;
        }
        o.hp hpVar = new o.hp();
        hpVar.hp(kVar.hp());
        if (kVar.l() != null) {
            hpVar.hp(kVar.l().hp());
        }
        if (kVar.a() != null) {
            if (jx(kVar.a())) {
                hpVar.hp(kVar.jx(), d.hp(n.hp(kVar.a().jx.toString()), kVar.a().f26220j));
            } else if (hp(kVar.a())) {
                hpVar.hp(kVar.jx(), new ns.hp().hp(ns.f20917w).hp(kVar.a().l(), kVar.a().hp(), d.hp(n.hp(ShareTarget.ENCODING_TYPE_MULTIPART), kVar.a().f26222w)).hp());
            } else if (l(kVar.a())) {
                hpVar.hp(kVar.jx(), d.hp(n.hp(kVar.a().jx.toString()), kVar.a().f26222w));
            }
        }
        if (kVar.w() != null && kVar.w().hp) {
            hpVar.hp(new j.hp().hp().jx());
        }
        if (kVar.j() != null && kVar.j().size() > 0) {
            for (Map.Entry<String, List<String>> entry : kVar.j().entrySet()) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    hpVar.hp(entry.getKey(), it.next());
                }
            }
        }
        return new j(this.jl.hp(hpVar.hp()));
    }

    private boolean hp(v vVar) {
        byte[] bArr;
        return vVar != null && vVar.f26219a == v.hp.FILE_TYPE && (bArr = vVar.f26222w) != null && bArr.length > 0;
    }
}
