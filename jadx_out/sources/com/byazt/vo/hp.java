package com.byazt.vo;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.byazt.dnb.j;
import com.byazt.fe.w;
import com.byazt.jz.sz;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.ymw.eb;
import com.byazt.ymw.s;
import com.byazt.zn.n;
import java.io.File;
import java.io.FileFilter;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1317, 28})
/* loaded from: classes3.dex */
public class hp {

    @SuppressLint({"StaticFieldLeak"})
    public static volatile hp hp;

    /* renamed from: j, reason: collision with root package name */
    public long f26607j;
    public final l jx;

    /* renamed from: l, reason: collision with root package name */
    public final Context f26608l;

    private hp(Context context) {
        this.f26608l = context == null ? sz.getContext() : context.getApplicationContext();
        this.jx = new l();
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp(sz.getContext());
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void l() {
        File[] fileArrListFiles;
        w.hp(7).hp();
        w.hp(8).hp();
        File fileJ = (("mounted".equals(j.hp()) || !Environment.isExternalStorageRemovable()) && eb.j(this.f26608l, false, null) != null) ? eb.j(this.f26608l, false, null) : eb.l(this.f26608l, false, null);
        if (fileJ == null || !fileJ.exists() || !fileJ.isDirectory() || (fileArrListFiles = fileJ.listFiles(new FileFilter() { // from class: com.byazt.vo.hp.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                if (file != null) {
                    return file.getName().contains("reward_video_cache");
                }
                return false;
            }
        })) == null || fileArrListFiles.length <= 0) {
            return;
        }
        for (File file : fileArrListFiles) {
            try {
                s.jx(file);
            } catch (Throwable unused) {
            }
        }
    }

    public String hp(boolean z2, String str) {
        long jJx = sz.l().jx(str);
        if (jJx > 0 && System.currentTimeMillis() - this.f26607j < jJx) {
            return "1";
        }
        int i2 = z2 ? 7 : 8;
        mp mpVarL = l(z2, str);
        if (mpVarL == null) {
            return "0";
        }
        if (mpVarL.tw() + mpVarL.su() < System.currentTimeMillis()) {
            w.hp(i2).hp(str);
            return "1";
        }
        JSONObject jSONObjectHp = hp(mpVarL);
        if (jSONObjectHp != null) {
            this.f26607j = System.currentTimeMillis();
            return jSONObjectHp.toString();
        }
        return "0";
    }

    public void l(com.byazt.jt.l lVar, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        hp(lVar, str);
    }

    public synchronized mp l(boolean z2, String str) {
        mp mpVarHp;
        try {
            if (z2) {
                mpVarHp = com.byazt.ash.eb.hp().hp(str, 0);
            } else {
                mpVarHp = com.byazt.ash.l.hp().hp(str, 0);
            }
            if (mpVarHp == null) {
                return null;
            }
            if (n.jx(mpVarHp)) {
                if (TextUtils.isEmpty(str) || !str.endsWith("again")) {
                    return mpVarHp;
                }
                return null;
            }
            if (com.byazt.we.hp.hp(mpVarHp)) {
                return mpVarHp;
            }
            if (df.v(mpVarHp) == null) {
                return null;
            }
            return mpVarHp;
        } catch (Throwable th) {
            throw th;
        }
    }

    private JSONObject hp(mp mpVar) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("req_id", mpVar.nr());
            jSONObject.put("aid", Long.valueOf(mpVar.cx()));
            jSONObject.put("cid", Long.valueOf(mpVar.j()));
            jSONObject.put("price", mpVar.yj());
            jSONObject.put("material_key", mpVar.ru());
            jSONObject.put("s_send_ts", mpVar.tw());
            jSONObject.put("cache_time", mpVar.su());
            jSONObject.put(com.sigmob.sdk.base.n.f36450m, mpVar.rv());
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public void hp(com.byazt.jt.l lVar, String str) {
        this.jx.hp(str, lVar);
    }

    public com.byazt.jt.l hp(mp mpVar, String str) {
        return this.jx.hp(mpVar == null ? null : mpVar.xq(), str);
    }
}
