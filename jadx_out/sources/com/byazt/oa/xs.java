package com.byazt.oa;

import com.byazt.oa.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.AnyThread;
import com.bytedance.component.sdk.annotation.UiThread;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 149, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME})
/* loaded from: classes3.dex */
public class xs {
    public static ns hp;

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f23926a;

    /* renamed from: j, reason: collision with root package name */
    public final e f23927j;
    public final com.byazt.ikh.j jx;

    /* renamed from: l, reason: collision with root package name */
    public final hp f23928l;

    /* renamed from: w, reason: collision with root package name */
    public final List<k> f23929w;

    public xs(e eVar) {
        ns nsVar;
        ArrayList arrayList = new ArrayList();
        this.f23929w = arrayList;
        this.f23926a = false;
        this.f23927j = eVar;
        n nVarHp = (!eVar.f23882s || (nsVar = hp) == null) ? null : nsVar.hp(eVar.gu);
        if (eVar.hp != null) {
            hp hpVar = eVar.f23880l;
            if (hpVar == null) {
                this.f23928l = new di();
            } else {
                this.f23928l = hpVar;
            }
        } else {
            this.f23928l = eVar.f23880l;
        }
        this.f23928l.hp(eVar.jx());
        this.f23928l.hp(eVar, nVarHp);
        this.jx = eVar.hp;
        arrayList.add(eVar.f23877e);
        q.hp(eVar.f23876a);
        b.hp(eVar.eb);
    }

    public static e hp(com.byazt.ikh.j jVar) {
        return new e(jVar);
    }

    private void l() {
        if (this.f23926a) {
            q.hp(new IllegalStateException("JsBridge2 is already released!!!"));
        }
    }

    @AnyThread
    public <T> void hp(String str, T t2) {
        l();
        this.f23928l.hp(str, (String) t2);
    }

    public xs hp(String str, w<?, ?> wVar) {
        return hp(str, (String) null, wVar);
    }

    @UiThread
    public xs hp(String str, String str2, w<?, ?> wVar) {
        l();
        this.f23928l.f23898a.hp(str, wVar);
        return this;
    }

    public xs hp(String str, j.l lVar) {
        return hp(str, (String) null, lVar);
    }

    @UiThread
    public xs hp(String str, String str2, j.l lVar) {
        l();
        this.f23928l.f23898a.hp(str, lVar);
        return this;
    }

    public boolean hp(String str) {
        eb ebVar;
        hp hpVar = this.f23928l;
        if (hpVar == null || (ebVar = hpVar.f23898a) == null) {
            return false;
        }
        return ebVar.hp(str);
    }

    public void hp() {
        if (this.f23926a) {
            return;
        }
        this.f23928l.jx();
        this.f23926a = true;
        Iterator<k> it = this.f23929w.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }
}
