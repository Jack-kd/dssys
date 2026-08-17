package com.byazt.nra;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.lf.k;
import com.byazt.xci.mp;
import com.byazt.xci.ns;
import com.byazt.xci.xs;
import com.byazt.yrp.q;
import com.byazt.zn.ky;
import com.byazt.zn.ms;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF, 28})
/* loaded from: classes3.dex */
public abstract class hp implements j {
    public volatile Function<SparseArray<Object>, Object> hp = null;
    public JSONObject jx;

    /* renamed from: l, reason: collision with root package name */
    public volatile String f23788l;

    public void a_(String str) {
    }

    @Override // com.byazt.nra.j
    public void hp() {
    }

    @Override // com.byazt.nra.j
    public long jx() {
        return -1L;
    }

    public int l(q qVar) {
        xs xsVarK;
        if (1 != com.byazt.yx.l.hp().w()) {
            return 2;
        }
        if (!com.byazt.zls.hp.hp(qVar)) {
            return 3;
        }
        if (ky.o() && (xsVarK = qVar.k()) != null) {
            String strL = xsVarK.l();
            if (!TextUtils.isEmpty(strL)) {
                Uri uri = Uri.parse(strL);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(uri);
                return ky.l(intent, true) ? 0 : 4;
            }
        }
        return 0;
    }

    public abstract boolean r_();

    @Override // com.byazt.nra.j
    public void hp(String str, mp mpVar, long j2) {
    }

    @Override // com.byazt.nra.j
    public void jx(q qVar) {
    }

    @Override // com.byazt.nra.j
    public void hp(Function<SparseArray<Object>, Object> function) {
        if (function == null) {
            return;
        }
        this.hp = function;
    }

    public boolean hp(q qVar) {
        if (qVar == null) {
            return false;
        }
        return hp(qVar.e(), qVar.w());
    }

    @Override // com.byazt.nra.j
    public boolean hp(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (Long.parseLong(str) <= 0) {
                return false;
            }
            switch (i2) {
            }
            return false;
        }
    }

    public long hp(mp mpVar) {
        if (mpVar == null) {
            return 0L;
        }
        String strE = mpVar.e();
        if (TextUtils.isEmpty(strE)) {
            strE = hp(mpVar.k());
        }
        try {
            return Long.parseLong(strE);
        } catch (Exception unused) {
            return 0L;
        }
    }

    public String hp(xs xsVar) {
        Map<String, String> mapHp;
        if (xsVar == null) {
            return null;
        }
        String strL = xsVar.l();
        if (TextUtils.isEmpty(strL)) {
            return null;
        }
        if ((strL.startsWith("snssdk2329") || strL.startsWith("snssdk1128")) && (mapHp = ms.hp(strL)) != null) {
            return mapHp.get("room_id");
        }
        return null;
    }

    public String hp(q qVar, String str, Map map) {
        if (map != null) {
            try {
                String str2 = (String) map.get("dpa_tag");
                if (!TextUtils.isEmpty(str2)) {
                    String strW = ns.w(qVar.zy(), str2);
                    if (!TextUtils.isEmpty(strW)) {
                        JSONObject jSONObject = new JSONObject(str);
                        JSONObject jSONObject2 = new JSONObject(strW);
                        Iterator<String> itKeys = jSONObject2.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            jSONObject.putOpt(next, jSONObject2.opt(next));
                        }
                        return jSONObject.toString();
                    }
                }
            } catch (Exception e2) {
                k.hp().hp("getEcomLiveParams", e2);
                return str;
            }
        }
        return str;
    }

    public void hp(mp mpVar, String str, int i2, int i3, int i4) {
        com.byazt.jdb.j.hp(mpVar, str, i2, i3, i4, r_());
    }

    public boolean hp(q qVar, int i2) {
        return qVar.w() == 7 || i2 == 103;
    }
}
