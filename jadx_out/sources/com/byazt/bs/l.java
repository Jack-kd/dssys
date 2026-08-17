package com.byazt.bs;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.bz;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY, 34})
/* loaded from: classes2.dex */
public abstract class l extends com.byazt.cmm.hp implements jx {

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.yc.hp f18663j;
    public com.byazt.jw.w jx;

    /* renamed from: l, reason: collision with root package name */
    public final Context f18664l;
    public final List<com.byazt.jw.l> hp = new ArrayList();

    /* renamed from: w, reason: collision with root package name */
    public boolean f18665w = false;

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f18662a = new Runnable() { // from class: com.byazt.bs.l.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (l.this) {
                try {
                    if (l.this.hp.isEmpty()) {
                        l.this.f18665w = false;
                        return;
                    }
                    ArrayList arrayList = new ArrayList(l.this.hp);
                    l.this.hp.clear();
                    l.this.f18665w = false;
                    l.this.l(arrayList);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };

    public l(Context context, com.byazt.jw.w wVar, com.byazt.yc.hp hpVar) {
        this.f18664l = context;
        this.jx = wVar;
        this.f18663j = hpVar;
    }

    private void l() {
        if (this.f18665w) {
            return;
        }
        com.byazt.pa.hp.hp(j()).hp().postDelayed(this.f18662a, r0.l());
        this.f18665w = true;
    }

    public Context getContext() {
        return this.f18664l;
    }

    public abstract String hp();

    public abstract com.byazt.jw.w j();

    public int w() {
        Cursor cursorQuery = null;
        int i2 = 0;
        try {
            cursorQuery = com.byazt.yv.l.query(getContext(), hp(), new String[]{"count(1)"}, null, null, null, null, null, this.jx);
            if (cursorQuery != null) {
                cursorQuery.moveToFirst();
                i2 = cursorQuery.getInt(0);
            }
        } catch (Exception unused) {
            if (cursorQuery != null) {
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                try {
                    cursorQuery.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
        if (cursorQuery != null) {
            try {
                cursorQuery.close();
            } catch (Exception unused3) {
            }
        }
        return i2;
    }

    public List<com.byazt.jw.l> hp(int i2, int i3, com.byazt.jw.l lVar, boolean z2) {
        int iL;
        if (this.f18663j == null || lVar == null || !com.byazt.giz.hp.hp(i2) || !hp(lVar) || (iL = this.f18663j.l()) <= i3) {
            return null;
        }
        return hp(iL - i3, bz.f48985d, i2, z2);
    }

    public synchronized void l(com.byazt.jw.l lVar) {
        if (hp(lVar) && lVar.eb() != null && !TextUtils.isEmpty(lVar.jx())) {
            this.hp.add(lVar);
            l();
        }
    }

    public com.byazt.cmm.l hp(int i2, List<com.byazt.jw.l> list) {
        com.byazt.cmm.l lVar = new com.byazt.cmm.l();
        if (list != null && list.size() != 0 && list.get(0) != null && hp(list.get(0))) {
            if (i2 != 200 && i2 != -1 && i2 != -3) {
                lVar.hp("code:".concat(String.valueOf(i2)));
            } else {
                lVar.hp(delete(list));
            }
            lVar.hp(true);
            return lVar;
        }
        lVar.hp(false);
        return lVar;
    }

    public void l(List<com.byazt.jw.l> list) {
        com.byazt.yv.l.insert(getContext(), hp(), list, this.jx);
        Iterator<com.byazt.jw.l> it = list.iterator();
        while (it.hasNext()) {
            com.byazt.giz.hp.hp(it.next(), this.jx, "_db");
        }
    }

    @Override // com.byazt.cmm.hp
    public List<com.byazt.jw.l> l(int i2, com.byazt.jw.l lVar, boolean z2, List<String> list, String str) {
        List<com.byazt.jw.l> listHp = hp(bz.f48985d, i2, z2);
        if (!hp(listHp, list)) {
            return null;
        }
        hp();
        listHp.size();
        return listHp;
    }

    public void hp(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            Iterator<com.byazt.jw.l> it = this.hp.iterator();
            while (it.hasNext()) {
                com.byazt.jw.l next = it.next();
                if (next != null) {
                    String strJx = next.jx();
                    if (!TextUtils.isEmpty(strJx) && list.contains(strJx)) {
                        it.remove();
                    }
                }
            }
        } catch (Throwable th) {
            hp();
            th.getMessage();
        }
    }

    @Override // com.byazt.cmm.hp
    public boolean l(int i2, String str, com.byazt.jw.l lVar) {
        if (this.f18663j == null) {
            return false;
        }
        int iW = w();
        int iHp = this.f18663j.hp();
        hp();
        com.byazt.giz.hp.l(i2);
        return iW >= iHp;
    }

    @Override // com.byazt.cmm.hp
    public boolean hp(String str) {
        if (this.f18663j == null) {
            return false;
        }
        int iW = w();
        hp();
        return iW > 0;
    }

    private boolean hp(List<com.byazt.jw.l> list, List<String> list2) {
        if (list != null && !list.isEmpty() && list2 != null && !list2.isEmpty()) {
            try {
                Iterator<com.byazt.jw.l> it = list.iterator();
                while (it.hasNext()) {
                    com.byazt.jw.l next = it.next();
                    if (next != null) {
                        String strJx = next.jx();
                        if (!TextUtils.isEmpty(strJx) && list2.contains(strJx)) {
                            it.remove();
                        }
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        return (list == null || list.isEmpty()) ? false : true;
    }
}
