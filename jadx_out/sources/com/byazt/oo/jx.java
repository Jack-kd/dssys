package com.byazt.oo;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.d.i;
import com.anythink.core.common.m.f;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.jz.d;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.oo.hp;
import com.byazt.pg.b;
import com.byazt.pg.jl;
import com.byazt.rz.PluginConstants;
import com.byazt.sf.e;
import com.byazt.uid.eb;
import com.byazt.uid.w;
import com.byazt.xgv.jx;
import com.byazt.xgv.w;
import com.byazt.ymw.a;
import com.byazt.ymw.u;
import com.byazt.ymw.vv;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1356, 30})
/* loaded from: classes3.dex */
public class jx {
    public static final HashMap<String, String> eb;
    public static final String hp;
    public static final String jx;

    /* renamed from: l, reason: collision with root package name */
    public static final String f24141l;

    /* renamed from: q, reason: collision with root package name */
    public static long f24142q;

    /* renamed from: s, reason: collision with root package name */
    public static long f24143s;

    /* renamed from: w, reason: collision with root package name */
    public static final jx f24144w;

    /* renamed from: a, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f24145a;

    /* renamed from: j, reason: collision with root package name */
    public FileOutputStream f24146j;

    @com.byazt.kj.hp(hp = {0, 1, 1356, 1990})
    public static final class j extends Exception {
        public final int hp;

        public j(int i2, String str) {
            super(str);
            this.hp = i2;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 1356, 1055})
    /* renamed from: com.byazt.oo.jx$jx, reason: collision with other inner class name */
    public static final class C0331jx {

        /* renamed from: a, reason: collision with root package name */
        public String f24162a;

        /* renamed from: e, reason: collision with root package name */
        public int f24163e;
        public boolean eb;
        public String gu;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f24164j;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public int f24165l;

        /* renamed from: q, reason: collision with root package name */
        public int f24166q;

        /* renamed from: s, reason: collision with root package name */
        public int f24167s;

        /* renamed from: w, reason: collision with root package name */
        public String f24168w;

        private C0331jx() {
        }

        public boolean hp() {
            return TextUtils.equals(this.hp, "com.byted.mixed");
        }

        public String toString() {
            try {
                return new JSONObject().put("package_name", this.hp).put("version_code", this.f24165l).put(f.f5775Y, this.f24168w).put("max_version", this.f24166q).put("min_version", this.f24167s).put("is_revert", this.eb).put(TKDownloadReason.KSAD_TK_MD5, this.f24162a).put("plugin_file", this.gu).toString();
            } catch (JSONException unused) {
                return "";
            }
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        String str = File.separator;
        sb.append(str);
        sb.append("next");
        hp = sb.toString();
        f24141l = str + "tmp";
        jx = str + "conf";
        f24144w = new jx();
        eb = new HashMap<>();
    }

    private jx() {
    }

    private static File a(Context context) {
        return new File(jx(context), jx);
    }

    private static File j(Context context) {
        return new File(jx(context), f24141l);
    }

    private static File jx(Context context) {
        return com.byazt.rz.l.hp(context, "tt_pangle_bykv_file", 0);
    }

    private static File w(Context context) {
        return new File(jx(context), hp);
    }

    @com.byazt.kj.hp(hp = {0, 1, 1356, 224})
    public static class l {
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f24169j;
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public String f24170l;

        /* renamed from: w, reason: collision with root package name */
        public int f24171w;

        private l() {
            this.hp = 0;
            this.f24170l = "";
            this.jx = false;
            this.f24169j = false;
            this.f24171w = 0;
        }

        public synchronized void hp(int i2) {
            this.hp = i2;
        }

        public synchronized boolean j() {
            return this.jx;
        }

        public synchronized String jx() {
            return this.f24170l;
        }

        public synchronized void l(boolean z2) {
            this.f24169j = z2;
        }

        public synchronized boolean w() {
            return this.f24169j;
        }

        public synchronized void hp(String str) {
            this.f24170l = str;
        }

        public synchronized void l(int i2) {
            this.f24171w = i2;
        }

        public synchronized void hp(boolean z2) {
            this.jx = z2;
        }

        public synchronized int l() {
            return this.hp;
        }

        public synchronized int hp() {
            return this.f24171w;
        }
    }

    private static Pair<Boolean, Boolean> j(C0331jx c0331jx) {
        if (l(c0331jx)) {
            return new Pair<>(Boolean.valueOf(7643 == c0331jx.f24165l), Boolean.FALSE);
        }
        JSONObject jSONObjectOptJSONObject = s.u().pu().optJSONObject(c0331jx.hp);
        int iL = jSONObjectOptJSONObject != null ? l(jSONObjectOptJSONObject.optString(PluginConstants.KEY_PLUGIN_VERSION)) : 0;
        return new Pair<>(Boolean.valueOf(iL == c0331jx.f24165l), Boolean.valueOf(iL != 0));
    }

    private static boolean jx(C0331jx c0331jx) {
        JSONObject jSONObjectOptJSONObject;
        int iL = l(c0331jx) ? d.f21856j : (!s.u().pu().has(c0331jx.hp) || (jSONObjectOptJSONObject = s.u().pu().optJSONObject(c0331jx.hp)) == null) ? 0 : l(jSONObjectOptJSONObject.optString("sdk_version"));
        return iL >= c0331jx.f24167s && iL <= c0331jx.f24166q;
    }

    private void l(Context context) throws IOException {
        FileOutputStream fileOutputStream = this.f24146j;
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (Exception unused) {
            }
        }
        File fileJ = j(context);
        if (fileJ.exists()) {
            for (File file : fileJ.listFiles()) {
                try {
                    if (!"update.lock".equals(file.getName())) {
                        file.delete();
                    }
                } catch (Exception unused2) {
                }
            }
        }
    }

    private static int w(C0331jx c0331jx) {
        JSONObject jSONObjectOptJSONObject;
        if (l(c0331jx)) {
            return 7643;
        }
        if (!s.u().pu().has(c0331jx.hp) || (jSONObjectOptJSONObject = s.u().pu().optJSONObject(c0331jx.hp)) == null) {
            return 0;
        }
        return l(jSONObjectOptJSONObject.optString(PluginConstants.KEY_PLUGIN_VERSION));
    }

    @com.byazt.kj.hp(hp = {0, 1, 1356, 219})
    public static class hp {
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public int f24160j;
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public String f24161l;

        public hp(int i2, String str, boolean z2, int i3) {
            this.hp = i2;
            this.f24161l = str;
            this.jx = z2;
            this.f24160j = i3;
        }

        public hp(int i2) {
            this(i2, "", false, 0);
        }
    }

    public static jx hp() {
        return f24144w;
    }

    public void hp(final JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        final Context applicationContext = sz.getContext().getApplicationContext();
        w.l(new eb("updatePlugin") { // from class: com.byazt.oo.jx.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    jx.this.hp(applicationContext, (List<C0331jx>) jx.jx(jSONArray));
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<C0331jx> jx(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null) {
            return arrayList;
        }
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
            if (jSONObjectOptJSONObject != null) {
                C0331jx c0331jx = new C0331jx();
                c0331jx.hp = hp(jSONObjectOptJSONObject.optString("package_name"));
                c0331jx.f24165l = jSONObjectOptJSONObject.optInt("version_code");
                c0331jx.jx = jSONObjectOptJSONObject.optString(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME);
                c0331jx.f24164j = jSONObjectOptJSONObject.optString("download_url");
                c0331jx.f24168w = jSONObjectOptJSONObject.optString(f.f5775Y);
                c0331jx.f24167s = l(jSONObjectOptJSONObject.optString("min_version"));
                c0331jx.f24166q = l(jSONObjectOptJSONObject.optString("max_version"));
                c0331jx.f24163e = jSONObjectOptJSONObject.optInt("plugin_update_network", -2);
                arrayList.add(c0331jx);
            }
        }
        Collections.sort(arrayList, new Comparator<C0331jx>() { // from class: com.byazt.oo.jx.8
            @Override // java.util.Comparator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public int compare(C0331jx c0331jx2, C0331jx c0331jx3) {
                if ("com.byted.pangle".equals(c0331jx2.hp)) {
                    return -1;
                }
                return "com.byted.pangle".equals(c0331jx3.hp) ? 1 : 0;
            }
        });
        return arrayList;
    }

    private static boolean l(C0331jx c0331jx) {
        return "com.byted.pangle".equals(c0331jx.hp);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean hp(android.content.Context r3, int r4, java.lang.String r5) {
        /*
            r2 = this;
            com.byazt.jz.s r3 = com.byazt.jz.s.u()
            com.byazt.unt.hp r3 = r3.o()
            int r3 = r3.hp(r5)
            com.byazt.jz.s r5 = com.byazt.jz.s.u()
            boolean r5 = r5.yr()
            if (r5 == 0) goto L1b
            boolean r3 = r2.hp(r3)
            return r3
        L1b:
            r5 = -1
            if (r4 == r5) goto L33
            r5 = 1
            if (r4 == r5) goto L34
            r0 = 2
            if (r4 == r0) goto L34
            r0 = 3
            if (r4 == r0) goto L34
            r1 = 4
            if (r4 == r1) goto L31
            r1 = 5
            if (r4 == r1) goto L31
            if (r3 != r0) goto L33
            r4 = r5
            goto L34
        L31:
            r3 = 0
            return r3
        L33:
            r4 = r3
        L34:
            boolean r3 = r2.hp(r4)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.oo.jx.hp(android.content.Context, int, java.lang.String):boolean");
    }

    private boolean l(C0331jx c0331jx, int i2) {
        l(c0331jx);
        return (i2 == 21 || i2 == 18) ? false : true;
    }

    private boolean l(String str, String str2) {
        File file = new File(str, str2 + ".temp");
        return file.exists() && file.length() > 0;
    }

    private static boolean l(int i2) {
        File fileHp = com.byazt.rz.l.hp(sz.getContext());
        if (fileHp == null) {
            return false;
        }
        return new File(fileHp.getParent() + "/pangle_p/com.byted.pangle/version-" + i2).exists();
    }

    private boolean hp(int i2) {
        if (i2 != 1) {
            if (i2 == 3 || i2 == 4 || i2 == 5) {
                return false;
            }
        } else if (!vv.j(sz.getContext())) {
            return false;
        }
        return true;
    }

    public static String l() throws JSONException {
        String str;
        String strHp = com.byazt.xgv.l.hp();
        if ("arm64-v8a".equals(strHp)) {
            str = "@64";
        } else if ("armeabi-v7a".equals(strHp)) {
            str = "@32";
        } else if ("armeabi".equals(strHp)) {
            str = "@armeabi";
        } else {
            str = "";
        }
        return "com.byted.live.lite" + str;
    }

    public void hp(Function<SparseArray<Object>, Object> function) {
        this.f24145a = function;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final Context context, List<C0331jx> list) {
        synchronized ("__tt_pl_up_lock__") {
            try {
                try {
                } catch (Exception e2) {
                    k.hp().hp("", 7643, 0, "", 14, e2.getMessage(), 0L, false, false, false, false, 0);
                }
                if (hp(context)) {
                    final boolean zJx = jx();
                    if (zJx && !com.byazt.ymw.sz.hp(context)) {
                        l(context);
                    } else {
                        list.size();
                        final CountDownLatch countDownLatch = new CountDownLatch(list.size());
                        for (final C0331jx c0331jx : list) {
                            if (hp(c0331jx)) {
                                countDownLatch.countDown();
                            } else {
                                w.l(new eb("pl download") { // from class: com.byazt.oo.jx.2
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        jx.this.hp(context, c0331jx, false, zJx);
                                        countDownLatch.countDown();
                                    }
                                });
                            }
                        }
                        countDownLatch.await();
                        b bVar = (b) com.byazt.ym.j.getService(ATAdConst.KEY.M_S);
                        if (bVar != null) {
                            bVar.setState(0, 64, false);
                        }
                    }
                }
            } finally {
                l(context);
            }
        }
    }

    private boolean jx() {
        JSONObject jSONObjectPk = sz.l().pk();
        if (jSONObjectPk == null) {
            return false;
        }
        return jSONObjectPk.optBoolean("use_downloader", false);
    }

    private static int l(String str) {
        if (str != null) {
            try {
                return Integer.parseInt(str.replace(i.f2495E, ""));
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    private boolean hp(Context context) throws IOException {
        try {
            File fileJ = j(context);
            if (!fileJ.exists()) {
                fileJ.mkdirs();
            }
            File file = new File(fileJ, "update.lock");
            if (!file.exists()) {
                file.createNewFile();
            }
            if (!file.exists()) {
                return false;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            this.f24146j = fileOutputStream;
            FileLock fileLockTryLock = fileOutputStream.getChannel().tryLock();
            if (fileLockTryLock != null && fileLockTryLock.isValid()) {
                return true;
            }
            this.f24146j.close();
            return false;
        } catch (Throwable unused) {
            FileOutputStream fileOutputStream2 = this.f24146j;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused2) {
                }
            }
            return false;
        }
    }

    private boolean hp(C0331jx c0331jx) {
        String str = c0331jx == null ? null : c0331jx.hp;
        return !TextUtils.isEmpty(str) && str.equalsIgnoreCase("com.byted.pangle") && com.byazt.lca.jx.hp().s() == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Context context, C0331jx c0331jx, boolean z2, boolean z3) {
        hp hpVarHp;
        int i2;
        String str;
        boolean z4;
        hp hpVar = new hp(0);
        if (!hp(context, c0331jx.f24163e, c0331jx.hp)) {
            str = s.u().o() + ":" + c0331jx.f24163e;
            i2 = 20;
        } else {
            File fileJ = j(context);
            if (z3) {
                hpVarHp = hp(context, fileJ, c0331jx);
            } else {
                hpVarHp = hp(context, fileJ, c0331jx, z2, z3);
            }
            hpVar = hpVarHp;
            i2 = hpVar.hp;
            str = "";
        }
        String str2 = str;
        int i3 = i2;
        if (i3 == 9 || i3 == 14) {
            hp(c0331jx.hp, 1004);
            z4 = false;
        } else {
            z4 = true;
        }
        k.hp().hp(c0331jx.hp, l(c0331jx) ? 7643 : 0, c0331jx.f24165l, c0331jx.f24164j, i3, str2, f24142q - f24143s, z2, ((Boolean) j(c0331jx).second).booleanValue(), hpVar.jx, z3, hpVar.f24160j);
        if (z4) {
            hp(c0331jx, hpVar.hp);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(C0331jx c0331jx, int i2) {
        SparseArray<Object> sparseArrayL;
        PluginValueSet pluginValueSetL;
        if (this.f24145a == null || !l(c0331jx, i2)) {
            return;
        }
        SparseArray<Object> sparseArrayL2 = com.byazt.wi.j.hp().hp(2, c0331jx.toString()).hp(3, c0331jx.hp).l();
        boolean z2 = i2 == 6 || i2 == 10 || i2 == 16;
        SparseArray<Object> sparseArrayL3 = com.byazt.wi.w.hp().hp(z2).hp(z2 ? 0 : 1004).hp(sparseArrayL2).l();
        try {
            if (com.byazt.kd.j.hp(d.f21856j)) {
                sparseArrayL = com.byazt.wi.j.hp(sparseArrayL3).hp(1).hp(SparseArray.class).l();
            } else {
                sparseArrayL = com.byazt.wi.j.hp().hp(1).hp(SparseArray.class).hp(-99999979, sparseArrayL3).l();
            }
            Object objApply = this.f24145a.apply(sparseArrayL);
            if (objApply instanceof SparseArray) {
                pluginValueSetL = com.byazt.xi.hp.hp((SparseArray<Object>) objApply).l();
            } else {
                pluginValueSetL = (com.byazt.kd.j.hp(d.f21856j) && (objApply instanceof PluginValueSet)) ? (PluginValueSet) objApply : null;
            }
            if (pluginValueSetL != null && pluginValueSetL.booleanValue(4) && c0331jx.gu != null) {
                HashMap<String, String> map = eb;
                map.put(c0331jx.hp, new File(c0331jx.gu).getName());
                hp(c0331jx.hp, c0331jx.jx);
                map.values();
            }
            if (c0331jx.hp.equals("com.byted.csj.ext")) {
                e.hp(null);
            }
        } catch (Exception e2) {
            u.hp("PluginUpdater", "Download pl done, but install error:" + e2.getMessage());
        }
    }

    private static void hp(String str, String str2) throws JSONException {
        if (str == null) {
            return;
        }
        s.u().hp(str, str2);
    }

    private hp hp(Context context, File file, final C0331jx c0331jx) {
        if (c0331jx != null) {
            try {
                if (!TextUtils.isEmpty(c0331jx.f24164j)) {
                    if (TextUtils.isEmpty(c0331jx.hp)) {
                        return new hp(12);
                    }
                    if (!l(c0331jx) && !s.u().pu().has(c0331jx.hp)) {
                        return new hp(17);
                    }
                    final Pair<Boolean, Boolean> pairJ = j(c0331jx);
                    if (((Boolean) pairJ.first).booleanValue()) {
                        return new hp(18);
                    }
                    if (l(c0331jx.f24165l)) {
                        return new hp(21);
                    }
                    if (!jx(c0331jx)) {
                        return new hp(19);
                    }
                    final File fileA = a(context);
                    if (!fileA.exists()) {
                        fileA.mkdirs();
                    }
                    if (l(c0331jx) && d.f21856j >= c0331jx.f24165l) {
                        String str = "-" + a.l(c0331jx.hp) + "-" + d.f21856j + "-" + d.f21856j;
                        int i2 = d.f21856j;
                        c0331jx.f24166q = i2;
                        c0331jx.f24167s = i2;
                        c0331jx.eb = true;
                        hp(new File(fileA, str + ".conf"), c0331jx);
                        return new hp(10);
                    }
                    if (TextUtils.isEmpty(c0331jx.f24168w) && !c0331jx.hp()) {
                        return new hp(1);
                    }
                    final String strL = a.l(c0331jx.hp);
                    StringBuilder sb = new StringBuilder();
                    String strL2 = a.l(c0331jx.f24168w);
                    if (!TextUtils.isEmpty(strL2)) {
                        sb.append(strL2);
                        sb.append("-");
                    }
                    sb.append(strL);
                    sb.append("-");
                    sb.append(c0331jx.f24167s);
                    sb.append("-");
                    sb.append(c0331jx.f24166q);
                    String string = sb.toString();
                    final File fileW = w(context);
                    if (!fileW.exists()) {
                        fileW.mkdirs();
                    }
                    final File file2 = new File(fileW, string + (c0331jx.hp() ? ".dex.zip" : ".apk"));
                    if (file2.exists()) {
                        c0331jx.f24162a = a.hp(file2);
                        c0331jx.gu = file2.getAbsolutePath();
                        return new hp(16);
                    }
                    if (file2.getName().equals(eb.get(c0331jx.hp))) {
                        return new hp(21);
                    }
                    final int i3 = l(c0331jx) ? 7643 : 0;
                    final File file3 = new File(file, string);
                    f24143s = System.currentTimeMillis();
                    final CountDownLatch countDownLatch = new CountDownLatch(1);
                    final l lVar = new l();
                    new com.byazt.oo.hp(c0331jx.hp, c0331jx.f24164j, file.getAbsolutePath(), string, c0331jx.f24163e == 1, new hp.InterfaceC0330hp() { // from class: com.byazt.oo.jx.3
                        public long jl = 0;

                        @Override // com.byazt.oo.hp.InterfaceC0330hp
                        public void hp(DownloadInfo downloadInfo) throws JSONException {
                            lVar.hp(com.byazt.xq.a.a(downloadInfo) > 0);
                            k kVarHp = k.hp();
                            C0331jx c0331jx2 = c0331jx;
                            kVarHp.hp(c0331jx2.hp, i3, c0331jx2.f24165l, c0331jx2.f24164j, 7, "", 0L, false, ((Boolean) pairJ.second).booleanValue(), lVar.j(), true, 1);
                            C0331jx c0331jx3 = c0331jx;
                            k.jx(c0331jx3.hp, String.valueOf(c0331jx3.f24165l));
                        }

                        @Override // com.byazt.oo.hp.InterfaceC0330hp
                        public void l(DownloadInfo downloadInfo) {
                            lVar.hp(jx.this.hp(file3, fileA, file2, fileW, strL, c0331jx));
                            lVar.l(1);
                            if (lVar.w()) {
                                jx.this.hp(c0331jx, lVar.l());
                            }
                            countDownLatch.countDown();
                        }

                        @Override // com.byazt.oo.hp.InterfaceC0330hp
                        public void l(DownloadInfo downloadInfo, int i4) {
                            this.jl = System.currentTimeMillis();
                            k kVarHp = k.hp();
                            C0331jx c0331jx2 = c0331jx;
                            kVarHp.hp(c0331jx2.hp, i3, c0331jx2.f24165l, c0331jx2.f24164j, 7, "", 0L, false, ((Boolean) pairJ.second).booleanValue(), lVar.j(), true, i4);
                        }

                        @Override // com.byazt.oo.hp.InterfaceC0330hp
                        public void hp(DownloadInfo downloadInfo, BaseException baseException) {
                            long unused = jx.f24142q = System.currentTimeMillis();
                            lVar.hp(9);
                            lVar.l(1);
                            l lVar2 = lVar;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(baseException.getErrorCode());
                            sb2.append(" : ");
                            sb2.append(baseException.getErrorMessage() == null ? "" : baseException.getErrorMessage());
                            lVar2.hp(sb2.toString());
                            countDownLatch.countDown();
                        }

                        @Override // com.byazt.oo.hp.InterfaceC0330hp
                        public void hp(DownloadInfo downloadInfo, int i4) {
                            int iHp = jx.this.hp(file3, fileA, file2, fileW, strL, c0331jx);
                            k kVarHp = k.hp();
                            C0331jx c0331jx2 = c0331jx;
                            kVarHp.hp(c0331jx2.hp, i3, c0331jx2.f24165l, c0331jx2.f24164j, 6, "", System.currentTimeMillis() - this.jl, false, ((Boolean) pairJ.second).booleanValue(), lVar.j(), true, i4);
                            jx.this.hp(c0331jx, iHp);
                        }

                        @Override // com.byazt.oo.hp.InterfaceC0330hp
                        public void hp(DownloadInfo downloadInfo, BaseException baseException, int i4) {
                            k kVarHp = k.hp();
                            C0331jx c0331jx2 = c0331jx;
                            String str2 = c0331jx2.hp;
                            int i5 = i3;
                            int i6 = c0331jx2.f24165l;
                            String str3 = c0331jx2.f24164j;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(baseException.getErrorCode());
                            sb2.append(" : ");
                            sb2.append(baseException.getErrorMessage() == null ? "" : baseException.getErrorMessage());
                            kVarHp.hp(str2, i5, i6, str3, 9, sb2.toString(), System.currentTimeMillis() - this.jl, false, ((Boolean) pairJ.second).booleanValue(), lVar.j(), true, i4);
                        }
                    }).hp(context);
                    try {
                        lVar.l(!countDownLatch.await(600L, TimeUnit.SECONDS));
                    } catch (InterruptedException e2) {
                        lVar.hp(9);
                        lVar.hp("countDownLatch interrupted: " + e2.getMessage());
                    }
                    if (lVar.w()) {
                        lVar.hp(9);
                        lVar.hp("countDownLatch timeout");
                    }
                    return new hp(lVar.l(), lVar.jx(), lVar.j(), lVar.hp());
                }
            } catch (Exception e3) {
                String message = e3.getMessage();
                try {
                    message = Log.getStackTraceString(e3);
                } catch (Throwable unused) {
                }
                return new hp(14, message, false, 0);
            }
        }
        return new hp(2);
    }

    private hp hp(Context context, File file, C0331jx c0331jx, boolean z2, boolean z3) {
        com.byazt.oyr.l lVarHp;
        String str;
        if (c0331jx != null) {
            try {
                if (!TextUtils.isEmpty(c0331jx.f24164j)) {
                    if (TextUtils.isEmpty(c0331jx.hp)) {
                        return new hp(12);
                    }
                    if (!l(c0331jx) && !s.u().pu().has(c0331jx.hp)) {
                        return new hp(17);
                    }
                    Pair<Boolean, Boolean> pairJ = j(c0331jx);
                    if (((Boolean) pairJ.first).booleanValue()) {
                        return new hp(18);
                    }
                    if (l(c0331jx.f24165l)) {
                        return new hp(21);
                    }
                    if (!jx(c0331jx)) {
                        return new hp(19);
                    }
                    File fileA = a(context);
                    if (!fileA.exists()) {
                        fileA.mkdirs();
                    }
                    if (l(c0331jx) && d.f21856j >= c0331jx.f24165l) {
                        String str2 = "-" + a.l(c0331jx.hp) + "-" + d.f21856j + "-" + d.f21856j;
                        int i2 = d.f21856j;
                        c0331jx.f24166q = i2;
                        c0331jx.f24167s = i2;
                        c0331jx.eb = true;
                        hp(new File(fileA, str2 + ".conf"), c0331jx);
                        return new hp(10);
                    }
                    if (TextUtils.isEmpty(c0331jx.f24168w) && !c0331jx.hp()) {
                        return new hp(1);
                    }
                    String strL = a.l(c0331jx.hp);
                    StringBuilder sb = new StringBuilder();
                    String strL2 = a.l(c0331jx.f24168w);
                    if (!TextUtils.isEmpty(strL2)) {
                        sb.append(strL2);
                        sb.append("-");
                    }
                    sb.append(strL);
                    sb.append("-");
                    sb.append(c0331jx.f24167s);
                    sb.append("-");
                    sb.append(c0331jx.f24166q);
                    String string = sb.toString();
                    File fileW = w(context);
                    if (!fileW.exists()) {
                        fileW.mkdirs();
                    }
                    File file2 = new File(fileW, string + (c0331jx.hp() ? ".dex.zip" : ".apk"));
                    if (file2.exists()) {
                        c0331jx.f24162a = a.hp(file2);
                        c0331jx.gu = file2.getAbsolutePath();
                        return new hp(16);
                    }
                    if (file2.getName().equals(eb.get(c0331jx.hp))) {
                        return new hp(21);
                    }
                    int i3 = l(c0331jx) ? 7643 : 0;
                    File file3 = new File(file, string);
                    f24143s = System.currentTimeMillis();
                    String absolutePath = file.getAbsolutePath();
                    boolean zL = l(absolutePath, string);
                    k.hp().hp(c0331jx.hp, i3, c0331jx.f24165l, c0331jx.f24164j, 7, "", 0L, z2, ((Boolean) pairJ.second).booleanValue(), zL, false, 0);
                    k.jx(c0331jx.hp, String.valueOf(c0331jx.f24165l));
                    if (com.byazt.jkd.e.hp(c0331jx.hp)) {
                        lVarHp = hp(com.byazt.cm.w.hp().l().hp(c0331jx.f24164j, absolutePath, string), c0331jx.hp);
                    } else {
                        com.byazt.ap.l lVarJ = com.byazt.cm.w.hp().l().j();
                        lVarJ.hp(c0331jx.f24164j);
                        lVarJ.hp(absolutePath, string);
                        lVarHp = lVarJ.hp();
                    }
                    com.byazt.oyr.l lVar = lVarHp;
                    if (lVar != null && lVar.q()) {
                        return new hp(hp(file3, fileA, file2, fileW, strL, c0331jx), "", zL, 0);
                    }
                    f24142q = System.currentTimeMillis();
                    if (lVar != null) {
                        str = lVar.l() + " : " + lVar.jx();
                    } else {
                        str = "no response";
                    }
                    return new hp(9, str, zL, 0);
                }
            } catch (Exception e2) {
                if (!z3) {
                    hp(context, c0331jx);
                }
                String message = e2.getMessage();
                try {
                    message = Log.getStackTraceString(e2);
                } catch (Throwable unused) {
                }
                return new hp(14, message, false, 0);
            }
        }
        return new hp(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int hp(File file, File file2, File file3, File file4, String str, C0331jx c0331jx) {
        f24142q = System.currentTimeMillis();
        if (!file.exists()) {
            return 13;
        }
        hp(file4, str);
        hp(file2, str);
        if (!file.renameTo(file3)) {
            return 5;
        }
        File file5 = new File(file2, file.getName() + ".conf");
        c0331jx.f24162a = a.hp(file3);
        c0331jx.gu = file3.getAbsolutePath();
        c0331jx.eb = c0331jx.f24165l < w(c0331jx);
        return hp(file5, c0331jx) ? 6 : 15;
    }

    private static com.byazt.oyr.l hp(final com.byazt.ap.l lVar, final String str) throws j {
        try {
            return (com.byazt.oyr.l) new w.hp(new Callable<com.byazt.oyr.l>() { // from class: com.byazt.oo.jx.4
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public com.byazt.oyr.l call() {
                    return lVar.hp();
                }
            }, new w.l<com.byazt.oyr.l>() { // from class: com.byazt.oo.jx.5
                @Override // com.byazt.xgv.w.l
                public boolean hp(com.byazt.oyr.l lVar2) {
                    if (((jl) com.byazt.ym.j.getService("device_info_new")).getRealNetworkType(0L) == 0 || lVar2 == null) {
                        return false;
                    }
                    Throwable thHp = lVar2.hp();
                    return thHp != null ? com.byazt.xgv.w.hp(thHp) : com.byazt.xgv.w.hp(lVar2.l());
                }

                @Override // com.byazt.xgv.w.l
                public boolean hp(Exception exc) {
                    if (((jl) com.byazt.ym.j.getService("device_info_new")).getRealNetworkType(0L) == 0) {
                        return false;
                    }
                    return exc instanceof NullPointerException;
                }
            }).hp(com.byazt.jkd.e.l(str)).hp().hp();
        } catch (Exception e2) {
            String message = e2.getMessage();
            try {
                message = Log.getStackTraceString(e2);
            } catch (Throwable unused) {
            }
            throw new j(14, message);
        }
    }

    private void hp(final Context context, final C0331jx c0331jx) {
        if (com.byazt.jkd.e.hp(c0331jx.hp) && ((jl) com.byazt.ym.j.getService("device_info_new")).getRealNetworkType(0L) == 0) {
            com.byazt.xgv.jx.hp().hp(new jx.l() { // from class: com.byazt.oo.jx.6
                @Override // com.byazt.xgv.jx.l
                public void hp() throws Exception {
                    jx.this.hp(context, c0331jx, true, false);
                }
            });
        }
    }

    private static boolean hp(File file, C0331jx c0331jx) throws IOException {
        try {
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(c0331jx.toString());
            fileWriter.close();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    private static void hp(File file, final String str) {
        file.listFiles(new FilenameFilter() { // from class: com.byazt.oo.jx.7
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str2) {
                if (str2 == null || !str2.contains(str)) {
                    return false;
                }
                new File(file2, str2).delete();
                return false;
            }
        });
    }

    public static String hp(String str) {
        return ("com.byted.live.lite@64".equals(str) || "com.byted.live.lite@32".equals(str) || "com.byted.live.lite@armeabi".equals(str)) ? "com.byted.live.lite" : str;
    }

    public void hp(String str, int i2) {
        SparseArray<Object> sparseArrayL;
        if (this.f24145a == null) {
            return;
        }
        SparseArray<Object> sparseArrayL2 = com.byazt.wi.w.hp().hp(false).hp(i2).hp(com.byazt.wi.j.hp().hp(3, str).l()).l();
        int i3 = d.f21856j;
        if (i3 < 7000 && i3 >= 6800) {
            sparseArrayL = com.byazt.wi.j.hp(sparseArrayL2).hp(1).hp(Void.class).l();
        } else {
            sparseArrayL = com.byazt.wi.j.hp().hp(1).hp(Void.class).hp(-99999979, sparseArrayL2).l();
        }
        this.f24145a.apply(sparseArrayL);
    }
}
