package com.byazt.na;

import android.graphics.Rect;
import android.util.LongSparseArray;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

@com.byazt.kj.hp(hp = {0, 1, 2, 54})
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public List<com.byazt.yg.eb> f23402a;

    /* renamed from: e, reason: collision with root package name */
    public Rect f23403e;
    public SparseArray<com.byazt.yg.j> eb;
    public jx ec;
    public float gu;

    /* renamed from: j, reason: collision with root package name */
    public Map<String, q> f23404j;
    public float jl;
    public Map<String, List<com.byazt.at.s>> jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f23405k;

    /* renamed from: q, reason: collision with root package name */
    public List<com.byazt.at.s> f23407q;

    /* renamed from: s, reason: collision with root package name */
    public LongSparseArray<com.byazt.at.s> f23408s;
    public hp sz;

    /* renamed from: u, reason: collision with root package name */
    public j f23409u;
    public l vv;

    /* renamed from: w, reason: collision with root package name */
    public Map<String, com.byazt.yg.jx> f23411w;
    public float zy;
    public final vv hp = new vv();

    /* renamed from: l, reason: collision with root package name */
    public final HashSet<String> f23406l = new HashSet<>();

    /* renamed from: v, reason: collision with root package name */
    public int f23410v = 0;
    public String xs = "";

    @com.byazt.kj.hp(hp = {0, 1, 2, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp {
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f23413j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f23414l;

        /* renamed from: w, reason: collision with root package name */
        public float f23416w = -1.0f;

        /* renamed from: a, reason: collision with root package name */
        public float f23412a = -1.0f;
        public float eb = -1.0f;

        /* renamed from: s, reason: collision with root package name */
        public float f23415s = -1.0f;

        public String toString() {
            return "area[" + this.hp + "," + this.f23414l + "," + this.jx + "," + this.f23413j + "]->[" + this.f23416w + "," + this.f23412a + "," + this.eb + "," + this.f23415s + "]";
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 2, MediaPlayer.MEDIA_PLAYER_OPTION_FORMATER_AUDIO_QUEUE_SIZE})
    public static class j {

        /* renamed from: a, reason: collision with root package name */
        public String f23417a;

        /* renamed from: e, reason: collision with root package name */
        public int f23418e;
        public JSONArray eb;
        public int gu;
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public String f23419j;
        public String[] jl;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f23420l;

        /* renamed from: q, reason: collision with root package name */
        public JSONArray f23421q;

        /* renamed from: s, reason: collision with root package name */
        public String f23422s;

        /* renamed from: w, reason: collision with root package name */
        public int[] f23423w;
        public int zy;
    }

    @com.byazt.kj.hp(hp = {0, 1, 2, 897})
    public static class jx {
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public int f23424j = 10;
        public JSONArray jx;

        /* renamed from: l, reason: collision with root package name */
        public int[][] f23425l;

        /* renamed from: w, reason: collision with root package name */
        public String f23426w;
    }

    @com.byazt.kj.hp(hp = {0, 1, 2, MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_CHECK_ENHANCE})
    public static class l {

        /* renamed from: a, reason: collision with root package name */
        public String f23427a;
        public JSONArray eb;
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public int f23428j;
        public Map<String, Object> jx;

        /* renamed from: l, reason: collision with root package name */
        public Map<String, Object> f23429l;

        /* renamed from: s, reason: collision with root package name */
        public com.byazt.wf.j f23430s;

        /* renamed from: w, reason: collision with root package name */
        public int f23431w;
    }

    public float a() {
        return this.gu;
    }

    public hp e() {
        return this.sz;
    }

    public float eb() {
        return this.jl;
    }

    public jx gu() {
        return this.ec;
    }

    public void hp(Rect rect, float f2, float f3, float f4, List<com.byazt.at.s> list, LongSparseArray<com.byazt.at.s> longSparseArray, Map<String, List<com.byazt.at.s>> map, Map<String, q> map2, SparseArray<com.byazt.yg.j> sparseArray, Map<String, com.byazt.yg.jx> map3, List<com.byazt.yg.eb> list2, j jVar, String str, l lVar, jx jxVar, hp hpVar) {
        this.f23403e = rect;
        this.gu = f2;
        this.jl = f3;
        this.zy = f4;
        this.f23407q = list;
        this.f23408s = longSparseArray;
        this.jx = map;
        this.f23404j = map2;
        this.eb = sparseArray;
        this.f23411w = map3;
        this.f23402a = list2;
        this.f23409u = jVar;
        this.xs = str;
        this.vv = lVar;
        this.ec = jxVar;
        this.sz = hpVar;
    }

    public Rect j() {
        return this.f23403e;
    }

    public l jl() {
        return this.vv;
    }

    public vv jx() {
        return this.hp;
    }

    public List<com.byazt.at.s> k() {
        return this.f23407q;
    }

    public int l() {
        return this.f23410v;
    }

    public String q() {
        return this.xs;
    }

    public j s() {
        return this.f23409u;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        Iterator<com.byazt.at.s> it = this.f23407q.iterator();
        while (it.hasNext()) {
            sb.append(it.next().hp("\t"));
        }
        return sb.toString();
    }

    public Map<String, com.byazt.yg.jx> u() {
        return this.f23411w;
    }

    public SparseArray<com.byazt.yg.j> v() {
        return this.eb;
    }

    public float vv() {
        return this.jl - this.gu;
    }

    public float w() {
        return (long) ((vv() / this.zy) * 1000.0f);
    }

    public Map<String, q> xs() {
        return this.f23404j;
    }

    public float zy() {
        return this.zy;
    }

    public com.byazt.yg.eb jx(String str) {
        int size = this.f23402a.size();
        for (int i2 = 0; i2 < size; i2++) {
            com.byazt.yg.eb ebVar = this.f23402a.get(i2);
            if (ebVar.hp(str)) {
                return ebVar;
            }
        }
        return null;
    }

    public void l(boolean z2) {
        this.hp.hp(z2);
    }

    public List<com.byazt.at.s> l(String str) {
        return this.jx.get(str);
    }

    public void hp(String str) {
        com.byazt.ze.a.l(str);
        this.f23406l.add(str);
    }

    public void hp(boolean z2) {
        this.f23405k = z2;
    }

    public void hp(int i2) {
        this.f23410v += i2;
    }

    public boolean hp() {
        return this.f23405k;
    }

    public com.byazt.at.s hp(long j2) {
        return this.f23408s.get(j2);
    }

    public float hp(float f2) {
        return com.byazt.ze.q.hp(this.gu, this.jl, f2);
    }
}
