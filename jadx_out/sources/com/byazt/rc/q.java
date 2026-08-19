package com.byazt.rc;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA, 150})
/* loaded from: classes3.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public long f25158a;
    public int eb;
    public volatile zy hp;

    /* renamed from: j, reason: collision with root package name */
    public final AtomicLong f25159j;
    public final long jx;

    /* renamed from: l, reason: collision with root package name */
    public int f25160l;

    /* renamed from: s, reason: collision with root package name */
    public JSONObject f25161s;

    /* renamed from: w, reason: collision with root package name */
    public volatile long f25162w;

    public q(long j2, long j3) {
        AtomicLong atomicLong = new AtomicLong();
        this.f25159j = atomicLong;
        this.f25160l = 0;
        this.jx = j2;
        atomicLong.set(j2);
        this.f25162w = j2;
        if (j3 >= j2) {
            this.f25158a = j3;
        } else {
            this.f25158a = -1L;
        }
    }

    public long a() {
        return this.f25158a;
    }

    public int e() {
        return this.f25160l;
    }

    public int eb() {
        return this.eb;
    }

    public JSONObject gu() throws JSONException {
        JSONObject jSONObject = this.f25161s;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
            this.f25161s = jSONObject;
        }
        jSONObject.put("st", jx());
        jSONObject.put("cu", j());
        jSONObject.put("en", a());
        return jSONObject;
    }

    public long hp() {
        return this.f25159j.get() - this.jx;
    }

    public long j() {
        long j2 = this.f25159j.get();
        long j3 = this.f25158a;
        if (j3 > 0) {
            long j4 = j3 + 1;
            if (j2 > j4) {
                return j4;
            }
        }
        return j2;
    }

    public long jx() {
        return this.jx;
    }

    public long l() {
        long j2 = this.f25158a;
        if (j2 >= this.jx) {
            return (j2 - w()) + 1;
        }
        return -1L;
    }

    public void q() {
        this.f25160l--;
    }

    public void s() {
        this.f25160l++;
    }

    public String toString() {
        return "Segment{startOffset=" + this.jx + ",\t currentOffset=" + this.f25159j + ",\t currentOffsetRead=" + w() + ",\t endOffset=" + this.f25158a + '}';
    }

    public long w() {
        zy zyVar = this.hp;
        if (zyVar != null) {
            long j2 = zyVar.j();
            if (j2 > this.f25162w) {
                return j2;
            }
        }
        return this.f25162w;
    }

    public void hp(long j2) {
        long j3 = this.jx;
        if (j2 < j3) {
            j2 = j3;
        }
        long j4 = this.f25158a;
        if (j4 > 0) {
            long j5 = j4 + 1;
            if (j2 > j5) {
                j2 = j5;
            }
        }
        this.f25159j.set(j2);
    }

    public void jx(long j2) {
        if (j2 >= this.jx) {
            this.f25158a = j2;
        } else if (j2 == -1) {
            this.f25158a = j2;
        }
    }

    public void j(long j2) {
        if (j2 >= this.f25159j.get()) {
            this.f25162w = j2;
        }
    }

    public void l(long j2) {
        this.f25159j.addAndGet(j2);
    }

    public void l(int i2) {
        this.f25160l = i2;
    }

    public void hp(int i2) {
        this.eb = i2;
    }

    public static String hp(List<q> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        Collections.sort(list, new Comparator<q>() { // from class: com.byazt.rc.q.1
            @Override // java.util.Comparator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public int compare(q qVar, q qVar2) {
                return (int) (qVar.jx() - qVar2.jx());
            }
        });
        StringBuilder sb = new StringBuilder();
        Iterator<q> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append("\r\n");
        }
        return sb.toString();
    }

    public q(q qVar) {
        AtomicLong atomicLong = new AtomicLong();
        this.f25159j = atomicLong;
        this.f25160l = 0;
        this.jx = qVar.jx;
        this.f25158a = qVar.f25158a;
        atomicLong.set(qVar.f25159j.get());
        this.f25162w = atomicLong.get();
        this.eb = qVar.eb;
    }

    public q(JSONObject jSONObject) {
        this.f25159j = new AtomicLong();
        this.f25160l = 0;
        this.jx = jSONObject.optLong("st");
        jx(jSONObject.optLong("en"));
        hp(jSONObject.optLong("cu"));
        j(j());
    }
}
