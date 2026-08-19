package com.byazt.un;

import android.content.ContentValues;
import android.text.TextUtils;
import com.anythink.core.d.b.e;
import com.byazt.dnb.s;
import com.byazt.uid.eb;
import com.byazt.xci.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 1167, 54})
/* loaded from: classes3.dex */
public class a {
    public static final a hp = new a();

    /* renamed from: j, reason: collision with root package name */
    public static volatile hp f26267j;
    public static volatile long jx;

    /* renamed from: l, reason: collision with root package name */
    public static final hp f26268l;

    /* renamed from: w, reason: collision with root package name */
    public final Map<String, l> f26269w = new ConcurrentHashMap();

    public interface hp {
        void hp(long j2);

        void hp(ContentValues contentValues);
    }

    @com.byazt.kj.hp(hp = {0, 1, 1167, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_CHECK_ENHANCE})
    public static class l {

        /* renamed from: a, reason: collision with root package name */
        public long f26272a;
        public boolean eb;
        public long hp;

        /* renamed from: j, reason: collision with root package name */
        public long f26273j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public int f26274l;

        /* renamed from: s, reason: collision with root package name */
        public boolean f26275s;

        /* renamed from: w, reason: collision with root package name */
        public long f26276w;

        private l() {
        }
    }

    static {
        hp hpVar = new hp() { // from class: com.byazt.un.a.1
            @Override // com.byazt.un.a.hp
            public void hp(ContentValues contentValues) {
                w.hp(contentValues);
            }

            @Override // com.byazt.un.a.hp
            public void hp(long j2) {
                w.hp(j2);
            }
        };
        f26268l = hpVar;
        jx = -1L;
        f26267j = hpVar;
    }

    public void j(String str, long j2) {
        l lVar;
        if (TextUtils.isEmpty(str) || (lVar = this.f26269w.get(str)) == null) {
            return;
        }
        if (j2 <= 0) {
            j2 = System.currentTimeMillis();
        }
        synchronized (lVar) {
            try {
                if (lVar.f26275s) {
                    if (lVar.hp <= 0) {
                        lVar.hp = j2;
                    }
                    ContentValues contentValuesHp = hp(str, lVar, j2);
                    this.f26269w.remove(str);
                    hp(contentValuesHp);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void jx(String str, long j2) {
        l lVar;
        if (TextUtils.isEmpty(str) || (lVar = this.f26269w.get(str)) == null) {
            return;
        }
        if (j2 <= 0) {
            j2 = System.currentTimeMillis();
        }
        synchronized (lVar) {
            try {
                if (lVar.eb) {
                    return;
                }
                lVar.eb = true;
                if (lVar.hp <= 0) {
                    lVar.hp = j2;
                }
                lVar.f26272a = Math.max(0L, j2 - lVar.hp);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static a hp() {
        return hp;
    }

    public void l(final String str, final long j2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        s.hp(new eb("tmax_record_on_cached") { // from class: com.byazt.un.a.2
            @Override // java.lang.Runnable
            public void run() {
                l lVar = (l) a.this.f26269w.get(str);
                if (lVar == null) {
                    return;
                }
                long jCurrentTimeMillis = j2;
                if (jCurrentTimeMillis <= 0) {
                    jCurrentTimeMillis = System.currentTimeMillis();
                }
                synchronized (lVar) {
                    try {
                        long j3 = lVar.hp;
                        if (j3 <= 0) {
                            return;
                        }
                        if (lVar.f26276w <= 0) {
                            lVar.f26276w = Math.max(0L, jCurrentTimeMillis - j3);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    public boolean hp(int i2) {
        s.jx jxVarHp = com.byazt.xci.s.hp(i2);
        if (jxVarHp == null || jxVarHp.xs() == null) {
            return false;
        }
        return jxVarHp.xs().l();
    }

    public void hp(String str, int i2, String str2, long j2) {
        l lVarPutIfAbsent;
        if (!hp(i2) || TextUtils.isEmpty(str)) {
            return;
        }
        l lVar = this.f26269w.get(str);
        if (lVar == null && (lVarPutIfAbsent = this.f26269w.putIfAbsent(str, (lVar = new l()))) != null) {
            lVar = lVarPutIfAbsent;
        }
        synchronized (lVar) {
            if (j2 <= 0) {
                j2 = System.currentTimeMillis();
                lVar.hp = j2;
                lVar.f26274l = i2;
                lVar.jx = str2;
                lVar.f26273j = 0L;
                lVar.f26276w = 0L;
                lVar.f26272a = 0L;
                lVar.eb = false;
                lVar.f26275s = false;
            } else {
                lVar.hp = j2;
                lVar.f26274l = i2;
                lVar.jx = str2;
                lVar.f26273j = 0L;
                lVar.f26276w = 0L;
                lVar.f26272a = 0L;
                lVar.eb = false;
                lVar.f26275s = false;
            }
        }
    }

    public void hp(String str, long j2) {
        l lVar;
        if (TextUtils.isEmpty(str) || (lVar = this.f26269w.get(str)) == null) {
            return;
        }
        if (j2 <= 0) {
            j2 = System.currentTimeMillis();
        }
        synchronized (lVar) {
            try {
                if (lVar.hp <= 0) {
                    lVar.hp = j2;
                }
                if (lVar.f26273j <= 0) {
                    lVar.f26273j = Math.max(0L, j2 - lVar.hp);
                }
                lVar.f26275s = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private ContentValues hp(String str, l lVar, long j2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("load_id", str);
        contentValues.put("ad_slot_type", Integer.valueOf(lVar.f26274l));
        contentValues.put("ad_slot_id", lVar.jx);
        contentValues.put("loaded_duration", Long.valueOf(lVar.f26273j));
        contentValues.put("cached_duration", Long.valueOf(lVar.f26276w));
        contentValues.put("shown_duration", Long.valueOf(lVar.f26272a));
        contentValues.put("is_shown", Integer.valueOf(lVar.eb ? 1 : 0));
        contentValues.put(e.a.f8607i, Long.valueOf(j2));
        return contentValues;
    }

    private void hp(ContentValues contentValues) {
        f26267j.hp(contentValues);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - jx > 86400000) {
            jx = jCurrentTimeMillis;
            final long j2 = jCurrentTimeMillis - 604800000;
            if (j2 > 0) {
                com.byazt.dnb.s.hp(new eb("tmax_record_cleanup") { // from class: com.byazt.un.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        a.f26267j.hp(j2);
                    }
                });
            }
        }
    }
}
