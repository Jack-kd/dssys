package com.byazt.xci;

import android.os.Bundle;
import com.byazt.sr.jx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1360})
/* loaded from: classes3.dex */
public class f {

    /* renamed from: e, reason: collision with root package name */
    public long f27269e;
    public String ec;
    public long gu;

    /* renamed from: j, reason: collision with root package name */
    public int f27270j;
    public long jl;
    public String jx;
    public jx.hp ns;

    /* renamed from: u, reason: collision with root package name */
    public Bundle f27276u;
    public String vv;

    /* renamed from: w, reason: collision with root package name */
    public int f27278w;
    public int xs;

    /* renamed from: n, reason: collision with root package name */
    public String f27273n = com.byazt.zn.ky.eb();
    public int hp = -1;

    /* renamed from: l, reason: collision with root package name */
    public int f27272l = -1;

    /* renamed from: a, reason: collision with root package name */
    public JSONArray f27268a = null;
    public int eb = 1;

    /* renamed from: s, reason: collision with root package name */
    public long f27275s = System.currentTimeMillis();

    /* renamed from: q, reason: collision with root package name */
    public long f27274q = System.currentTimeMillis();
    public JSONObject zy = null;

    /* renamed from: k, reason: collision with root package name */
    public int f27271k = -1;

    /* renamed from: v, reason: collision with root package name */
    public com.byazt.jz.ns f27277v = com.byazt.jz.ns.hp("");
    public boolean sz = false;

    public f hp() {
        f fVar = new f();
        fVar.hp = this.hp;
        fVar.f27272l = this.f27272l;
        fVar.f27268a = this.f27268a;
        fVar.eb = this.eb;
        fVar.f27275s = this.f27275s;
        fVar.f27269e = this.f27269e;
        fVar.gu = this.gu;
        fVar.jl = this.jl;
        fVar.f27271k = this.f27271k;
        fVar.ec = this.ec;
        return fVar;
    }

    public String l() {
        return this.f27273n;
    }

    public void hp(String str) {
        this.f27273n = str;
    }

    public void hp(String str, boolean z2) {
        com.byazt.jz.ns nsVar;
        if (!z2 || (nsVar = this.f27277v) == null || str == null) {
            return;
        }
        nsVar.l("cst_".concat(str));
    }

    public void hp(String str, long j2, boolean z2) {
        com.byazt.jz.ns nsVar;
        if (!z2 || (nsVar = this.f27277v) == null || str == null) {
            return;
        }
        nsVar.hp("cst_".concat(str), j2);
    }

    public void hp(int i2, String str, int i3, com.byazt.jt.l lVar) {
        this.ns = new jx.hp(i2, str, i3, System.currentTimeMillis(), lVar);
    }

    public void hp(Object obj, int i2) {
        int size = obj != null ? 1 : 0;
        try {
            if (obj instanceof List) {
                size = ((List) obj).size();
            }
        } catch (Exception unused) {
        }
        jx.hp hpVar = this.ns;
        if (hpVar != null) {
            hpVar.hp(size);
            com.byazt.sr.jx.hp(this.ns, i2);
            this.ns = null;
        }
    }
}
