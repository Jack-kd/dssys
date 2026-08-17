package com.byazt.ll;

import androidx.annotation.NonNull;
import com.byazt.ik.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1665, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public static String f22629a = "7z_unzip_start";

    /* renamed from: e, reason: collision with root package name */
    public static String f22630e = "rm_entry_finish";
    public static String eb = "7z_unzip_finish";
    public static String gu = "e_create_ac_failed";
    public static String hp = "request_finish";

    /* renamed from: j, reason: collision with root package name */
    public static String f22631j = "install_start";
    public static volatile l jl = null;
    public static String jx = "download_finish";

    /* renamed from: l, reason: collision with root package name */
    public static String f22632l = "download_start";

    /* renamed from: q, reason: collision with root package name */
    public static String f22633q = "load_finish";

    /* renamed from: s, reason: collision with root package name */
    public static String f22634s = "load_start";

    /* renamed from: w, reason: collision with root package name */
    public static String f22635w = "install_finish";
    public final List<com.byazt.ll.hp> zy = new ArrayList();

    @com.byazt.kj.hp(hp = {0, 1, 1665, 123})
    public static class hp {

        /* renamed from: a, reason: collision with root package name */
        public static int f22636a = 12001;

        /* renamed from: b, reason: collision with root package name */
        public static int f22637b = 32004;
        public static int cx = 32003;

        /* renamed from: d, reason: collision with root package name */
        public static int f22638d = 32007;
        public static int di = 32005;
        public static int dy = 42000;

        /* renamed from: e, reason: collision with root package name */
        public static int f22639e = 20000;
        public static int eb = 12002;
        public static int ec = 31000;
        public static int gu = 21000;
        public static int hp = 1;
        public static int hq = 32999;

        /* renamed from: j, reason: collision with root package name */
        public static int f22640j = -2;
        public static int jl = 21001;
        public static int jx = -1;

        /* renamed from: k, reason: collision with root package name */
        public static int f22641k = 22000;

        /* renamed from: l, reason: collision with root package name */
        public static int f22642l = 2;
        public static int lv = 50000;

        /* renamed from: n, reason: collision with root package name */
        public static int f22643n = 32001;
        public static int ns = 32002;
        public static int nu = 41000;

        /* renamed from: o, reason: collision with root package name */
        public static int f22644o = 32006;

        /* renamed from: q, reason: collision with root package name */
        public static int f22645q = 12004;

        /* renamed from: r, reason: collision with root package name */
        public static int f22646r = 50004;

        /* renamed from: s, reason: collision with root package name */
        public static int f22647s = 12003;
        public static int sz = 32000;

        /* renamed from: u, reason: collision with root package name */
        public static int f22648u = 22002;
        public static int ud = 40000;

        /* renamed from: v, reason: collision with root package name */
        public static int f22649v = 22001;
        public static int vv = 30000;

        /* renamed from: w, reason: collision with root package name */
        public static int f22650w = 12000;
        public static int wv = 32008;
        public static int xs = 22999;
        public static int zy = 21002;
    }

    private l() {
    }

    public static l hp() {
        if (jl == null) {
            synchronized (l.class) {
                jl = new l();
            }
        }
        return jl;
    }

    public void hp(@NonNull com.byazt.ll.hp hpVar) {
        synchronized (this.zy) {
            this.zy.add(hpVar);
        }
    }

    public void hp(String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        synchronized (this.zy) {
            try {
                Iterator<com.byazt.ll.hp> it = this.zy.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().hp(str, jSONObject, jSONObject2, jSONObject3);
                    } catch (Throwable th) {
                        a.hp(th);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
