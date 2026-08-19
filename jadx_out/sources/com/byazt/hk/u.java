package com.byazt.hk;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.AnyThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.byazt.hk.q;
import com.byazt.hk.xs;
import com.byazt.ub.w;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 227, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes2.dex */
public final class u {

    /* renamed from: e, reason: collision with root package name */
    public static String f20724e;
    public static long gu;
    public static final String hp;

    /* renamed from: j, reason: collision with root package name */
    public static final List<com.byazt.ub.w> f20725j;
    public static boolean jl;

    /* renamed from: l, reason: collision with root package name */
    public static final String f20726l;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f20727a;
    public final sz eb;

    /* renamed from: k, reason: collision with root package name */
    public Long f20728k;

    /* renamed from: s, reason: collision with root package name */
    public final Context f20730s;

    /* renamed from: w, reason: collision with root package name */
    public final xs f20731w;
    public Map<String, String> zy;
    public final ReentrantLock jx = new ReentrantLock();

    /* renamed from: q, reason: collision with root package name */
    public final AtomicBoolean f20729q = new AtomicBoolean(false);

    static {
        String str = u.class.getSimpleName() + "#";
        f20726l = str;
        hp = str;
        f20725j = new ArrayList();
    }

    public u(Context context) {
        this.f20730s = context.getApplicationContext();
        xs xsVarHp = vv.hp(context);
        this.f20731w = xsVarHp;
        if (xsVarHp != null) {
            this.f20727a = xsVarHp.l(context);
        } else {
            this.f20727a = false;
        }
        this.eb = new sz(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        int iIntValue;
        try {
            this.jx.lock();
            ec ecVarHp = this.eb.hp();
            long jLongValue = -1;
            boolean z2 = false;
            if (ecVarHp != null) {
                f20724e = ecVarHp.hp;
                Boolean bool = ecVarHp.jx;
                jl = bool != null && bool.booleanValue();
                Long l2 = ecVarHp.eb;
                gu = l2 == null ? -1L : l2.longValue();
                this.zy = ecVarHp.hp();
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            Pair<String, Boolean> pairHp = hp(this.f20730s);
            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
            ec ecVar = null;
            String string = null;
            if (pairHp.first != null) {
                if (ecVarHp != null) {
                    string = ecVarHp.f20715l;
                    iIntValue = ecVarHp.f20713a.intValue() + 1;
                } else {
                    iIntValue = -1;
                }
                if (TextUtils.isEmpty(string)) {
                    string = UUID.randomUUID().toString();
                }
                if (iIntValue <= 0) {
                    iIntValue = 1;
                }
                ec ecVar2 = new ec((String) pairHp.first, string, (Boolean) pairHp.second, Long.valueOf(jElapsedRealtime2), Long.valueOf(System.currentTimeMillis()), Integer.valueOf(iIntValue), this.f20728k);
                this.eb.hp(ecVar2);
                ecVar = ecVar2;
            }
            if (ecVar != null) {
                f20724e = ecVar.hp;
                Boolean bool2 = ecVar.jx;
                if (bool2 != null && bool2.booleanValue()) {
                    z2 = true;
                }
                jl = z2;
                Long l3 = ecVar.eb;
                if (l3 != null) {
                    jLongValue = l3.longValue();
                }
                gu = jLongValue;
                this.zy = ecVar.hp();
            }
            this.jx.unlock();
            hp(new w.hp(f20724e, jl, gu), jx());
        } catch (Throwable th) {
            this.jx.unlock();
            hp(new w.hp(f20724e, jl, gu), jx());
            throw th;
        }
    }

    private static Object[] jx() {
        Object[] array;
        List<com.byazt.ub.w> list = f20725j;
        synchronized (list) {
            try {
                array = list.size() > 0 ? list.toArray() : null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return array;
    }

    public void l() {
        if (this.f20729q.compareAndSet(false, true)) {
            hp(new Runnable() { // from class: com.byazt.hk.u.1
                @Override // java.lang.Runnable
                public void run() {
                    u.this.j();
                }
            });
        }
    }

    @Nullable
    @WorkerThread
    public Map<String, String> hp(long j2) {
        if (!this.f20727a) {
            return null;
        }
        if (!com.byazt.ub.hp.f26121l) {
            ec ecVarHp = this.eb.hp();
            if (ecVarHp != null) {
                return ecVarHp.hp();
            }
            return null;
        }
        l();
        if (this.zy == null) {
            SystemClock.elapsedRealtime();
            try {
                if (this.jx.tryLock(j2, TimeUnit.MILLISECONDS)) {
                    this.jx.unlock();
                }
            } catch (InterruptedException e2) {
                com.byazt.gt.e.hp(e2);
            }
        }
        return this.zy;
    }

    @AnyThread
    public static void hp(@Nullable com.byazt.ub.w wVar) {
        List<com.byazt.ub.w> list = f20725j;
        synchronized (list) {
            list.add(wVar);
        }
        String str = f20724e;
        if (str != null) {
            hp(new w.hp(str, jl, gu), new Object[]{wVar});
        }
    }

    public xs hp() {
        return this.f20731w;
    }

    private static void hp(@Nullable w.hp hpVar, Object[] objArr) {
        if (hpVar == null || objArr == null) {
            return;
        }
        for (Object obj : objArr) {
            ((com.byazt.ub.w) obj).hp(hpVar);
        }
    }

    public static void hp(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e2) {
            com.byazt.gt.e.hp(e2);
        }
    }

    public static <K, V> void hp(Map<K, V> map, K k2, V v2) {
        if (k2 == null || v2 == null) {
            return;
        }
        map.put(k2, v2);
    }

    @NonNull
    @WorkerThread
    private Pair<String, Boolean> hp(Context context) {
        String str;
        Boolean boolValueOf;
        xs.hp hpVarJx;
        xs xsVar = this.f20731w;
        if (xsVar == null || (hpVarJx = xsVar.jx(context)) == null) {
            str = null;
            boolValueOf = null;
        } else {
            str = hpVarJx.f20732l;
            boolValueOf = Boolean.valueOf(hpVarJx.jx);
            if (hpVarJx instanceof q.hp) {
                this.f20728k = Long.valueOf(((q.hp) hpVarJx).hp);
            }
        }
        return new Pair<>(str, boolValueOf);
    }

    private static void hp(Runnable runnable) {
        s.hp(hp + "-query", runnable);
    }
}
