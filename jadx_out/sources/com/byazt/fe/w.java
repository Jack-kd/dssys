package com.byazt.fe;

import android.text.TextUtils;
import com.byazt.fe.eb;
import com.byazt.xci.mp;
import com.byazt.xci.s;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w {

    /* renamed from: q, reason: collision with root package name */
    public final eb f19717q;
    public static final w hp = new w(7);

    /* renamed from: l, reason: collision with root package name */
    public static final w f19714l = new w(8);
    public static final w jx = new w(3);

    /* renamed from: j, reason: collision with root package name */
    public static final w f19713j = new w(1);

    /* renamed from: w, reason: collision with root package name */
    public static final w f19716w = new w(5);

    /* renamed from: a, reason: collision with root package name */
    public static final w f19712a = new w(9);
    public static final w eb = new w(6);

    /* renamed from: s, reason: collision with root package name */
    public static final w f19715s = new w(0);

    private w(int i2) {
        this.f19717q = new eb(i2);
    }

    public static w hp(int i2) {
        if (i2 == 1) {
            return f19713j;
        }
        if (i2 == 3) {
            return jx;
        }
        switch (i2) {
            case 5:
                return f19716w;
            case 6:
                return eb;
            case 7:
                return hp;
            case 8:
                return f19714l;
            case 9:
                return f19712a;
            default:
                return f19715s;
        }
    }

    public boolean j(String str) {
        return this.f19717q.j(str);
    }

    public void jx(String str) {
        this.f19717q.jx(str);
    }

    public void l(String str) {
        this.f19717q.l(str);
    }

    public long w(String str) {
        eb.l lVarHp = this.f19717q.hp(str, false, 0L);
        if (lVarHp == null || !lVarHp.hp()) {
            return 0L;
        }
        long jCurrentTimeMillis = lVarHp.f19705l - System.currentTimeMillis();
        if (jCurrentTimeMillis <= 0) {
            return 0L;
        }
        return jCurrentTimeMillis / 1000;
    }

    public static void l(int i2) {
        hp(i2).f19717q.hp(i2);
    }

    public void hp(com.byazt.jt.l lVar, mp mpVar, boolean z2) {
        if (lVar != null && mpVar != null) {
            lVar.j();
            if (!s.hp(ky.jl(mpVar)).hp("forbid_save_cache", new s.l.hp().hp(lVar).hp(mpVar).hp())) {
                if ((mpVar.mk() != null ? mpVar.mk().optInt("save_type") : 0) != 1) {
                    String strJ = lVar.j();
                    String strL = com.byazt.ymw.hp.l(mpVar.ij().toString());
                    long jCurrentTimeMillis = ((((System.currentTimeMillis() / 1000) / 60) / 60) / 3) + ky.ec(mpVar);
                    long jXe = mpVar.xe();
                    int iRf = mpVar.rf();
                    if (mpVar.pn() > 0) {
                        jXe = Math.min(jXe, mpVar.pn());
                    }
                    this.f19717q.hp(strJ, new eb.l(strL, mpVar.er(), jXe * 1000, mpVar.sq()), z2, jCurrentTimeMillis, iRf);
                }
            }
        }
    }

    public mp hp(String str, boolean z2, long j2) {
        eb.l lVarHp = this.f19717q.hp(str, z2, j2);
        if (lVarHp == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(com.byazt.ymw.hp.jx(lVarHp.jx));
            if (s.hp(this.f19717q.hp.l()).hp("forbid_read_cache", new s.l.hp().hp(jSONObject).hp())) {
                this.f19717q.hp(str, lVarHp.f19706w);
                return null;
            }
            mp mpVarHp = com.byazt.jz.hp.hp(jSONObject);
            mpVarHp.e(true);
            mpVarHp.eb(lVarHp.hp);
            mpVarHp.d(lVarHp.f19706w);
            mpVarHp.xm().l(2);
            return mpVarHp;
        } catch (Exception unused) {
            return null;
        }
    }

    public List<mp> hp(String str, boolean z2, long j2, int i2, double d2) {
        System.currentTimeMillis();
        List<eb.l> listHp = this.f19717q.hp(str, z2, j2, i2, d2);
        if (listHp != null && !listHp.isEmpty()) {
            listHp.size();
            System.currentTimeMillis();
            ArrayList arrayList = new ArrayList();
            for (eb.l lVar : listHp) {
                try {
                    JSONObject jSONObject = new JSONObject(com.byazt.ymw.hp.jx(lVar.jx));
                    if (s.hp(this.f19717q.hp.l()).hp("forbid_read_cache", new s.l.hp().hp(jSONObject).hp())) {
                        this.f19717q.hp(str, lVar.f19706w);
                    } else {
                        mp mpVarHp = com.byazt.jz.hp.hp(jSONObject);
                        mpVarHp.e(true);
                        mpVarHp.eb(lVar.hp);
                        mpVarHp.d(lVar.f19706w);
                        mpVarHp.xm().l(2);
                        arrayList.add(mpVarHp);
                    }
                } catch (Exception unused) {
                }
            }
            return arrayList;
        }
        return Collections.EMPTY_LIST;
    }

    public void hp(String str) {
        this.f19717q.hp(str);
    }

    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.f19717q.hp(str, str2);
    }

    public void hp(String str, String str2, boolean z2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.f19717q.hp(str, str2, z2);
    }

    public void hp() {
        this.f19717q.hp();
    }

    public static boolean hp(mp mpVar) {
        if (mpVar == null) {
            return false;
        }
        return (mpVar.mk() != null ? mpVar.mk().optInt("save_type") : 0) != 1;
    }
}
