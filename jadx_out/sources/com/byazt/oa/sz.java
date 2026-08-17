package com.byazt.oa;

import android.net.Uri;
import com.anythink.core.common.d.i;
import com.byazt.oa.gu;
import com.byazt.oa.n;
import com.byazt.oa.ns;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.LinkedHashSet;
import java.util.Set;

@com.byazt.kj.hp(hp = {0, 1, 149, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME})
/* loaded from: classes3.dex */
public class sz {
    public final Set<String> hp;

    /* renamed from: j, reason: collision with root package name */
    public final n f23914j;
    public final ns jx = xs.hp;

    /* renamed from: l, reason: collision with root package name */
    public final Set<String> f23915l;

    /* renamed from: w, reason: collision with root package name */
    public gu.l f23916w;

    public sz(n nVar, Set<String> set, Set<String> set2) {
        this.f23914j = nVar;
        if (set == null || set.isEmpty()) {
            this.hp = new LinkedHashSet();
        } else {
            this.hp = new LinkedHashSet(set);
        }
        if (set2 == null || set2.isEmpty()) {
            this.f23915l = new LinkedHashSet();
        } else {
            this.f23915l = new LinkedHashSet(set2);
        }
    }

    public final synchronized cx hp(boolean z2, String str, l lVar) throws n.hp {
        gu.l lVar2;
        try {
            Uri uri = Uri.parse(str);
            String host = uri.getHost();
            if (host == null) {
                return null;
            }
            cx cxVar = this.f23915l.contains(lVar.hp()) ? cx.PUBLIC : null;
            for (String str2 : this.hp) {
                if (uri.getHost().equals(str2) || host.endsWith(i.f2495E.concat(String.valueOf(str2)))) {
                    cxVar = cx.PRIVATE;
                    break;
                }
            }
            if (cxVar == null && (lVar2 = this.f23916w) != null && lVar2.hp(str)) {
                if (this.f23916w.hp(str, lVar.hp())) {
                    return null;
                }
                cxVar = cx.PRIVATE;
            }
            cx cxVarHp = z2 ? hp(str, lVar) : l(str, lVar);
            return cxVarHp != null ? cxVarHp : cxVar;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized cx l(String str, l lVar) {
        return hp(str, lVar, false);
    }

    public void l(ns.hp hpVar) {
        ns nsVar = this.jx;
        if (nsVar != null) {
            nsVar.l(hpVar);
        }
    }

    public final synchronized cx hp(String str, l lVar) throws n.hp {
        return hp(str, lVar, true);
    }

    public void hp(gu.l lVar) {
        this.f23916w = lVar;
    }

    public void hp(ns.hp hpVar) {
        ns nsVar = this.jx;
        if (nsVar != null) {
            nsVar.hp(hpVar);
        }
    }

    private cx hp(String str, l lVar, boolean z2) {
        n nVar;
        if (!z2 || (nVar = this.f23914j) == null) {
            return null;
        }
        n.jx jxVarHp = nVar.hp(str, this.hp);
        if (jxVarHp.jx.contains(lVar.hp())) {
            return null;
        }
        if (jxVarHp.f23909l.contains(lVar.hp())) {
            return cx.PRIVATE;
        }
        if (jxVarHp.hp.compareTo(lVar.l()) < 0) {
            return null;
        }
        return jxVarHp.hp;
    }
}
