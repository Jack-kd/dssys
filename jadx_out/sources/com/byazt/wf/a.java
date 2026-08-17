package com.byazt.wf;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.cb;
import com.byazt.ymw.e;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 416, 54})
/* loaded from: classes3.dex */
public class a {
    public static volatile a hp;

    /* renamed from: a, reason: collision with root package name */
    public l f26878a;

    /* renamed from: j, reason: collision with root package name */
    public Context f26879j;

    /* renamed from: w, reason: collision with root package name */
    public jx f26882w;
    public int eb = 30;

    /* renamed from: s, reason: collision with root package name */
    public boolean f26881s = false;

    /* renamed from: l, reason: collision with root package name */
    public final Map<String, List<WeakReference<eb>>> f26880l = new ConcurrentHashMap();
    public final Map<String, w> jx = new ConcurrentHashMap();

    private a() {
    }

    public boolean jx() {
        return this.f26881s;
    }

    public l l() {
        return this.f26878a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(j jVar, eb ebVar) {
        final String strHp = jVar.hp();
        if (hp(jVar)) {
            hp(ebVar, jVar);
            return;
        }
        synchronized (this) {
            try {
                List<WeakReference<eb>> list = this.f26880l.get(strHp);
                if (list != null && !list.isEmpty()) {
                    list.add(new WeakReference<>(ebVar));
                    return;
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(new WeakReference(ebVar));
                this.f26880l.put(strHp, arrayList);
                w wVar = new w(this.f26879j);
                this.jx.put(strHp, wVar);
                final long jCurrentTimeMillis = System.currentTimeMillis();
                wVar.hp(jVar, new eb() { // from class: com.byazt.wf.a.2
                    @Override // com.byazt.wf.eb
                    public void hp(j jVar2) throws JSONException {
                        a.this.hp(jVar2, true, System.currentTimeMillis() - jCurrentTimeMillis, 0, (String) null);
                        a.this.hp(strHp, true, jVar2, 0, (String) null);
                        a.this.hp(strHp);
                    }

                    @Override // com.byazt.wf.eb
                    public void hp(j jVar2, int i2, String str) throws JSONException {
                        a.this.hp(jVar2, false, System.currentTimeMillis() - jCurrentTimeMillis, i2, str);
                        a.this.hp(strHp, false, jVar2, i2, str);
                        a.this.hp(strHp);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static a hp() {
        if (hp == null) {
            synchronized (a.class) {
                try {
                    if (hp == null) {
                        hp = new a();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void hp(Context context) {
        if (context == null || this.f26879j != null) {
            return;
        }
        this.f26879j = context.getApplicationContext();
        s.hp().hp(context);
        s.hp().hp(this.eb);
        hp.hp().hp(context);
    }

    public void hp(jx jxVar) {
        this.f26882w = jxVar;
    }

    public void hp(l lVar) {
        this.f26878a = lVar;
    }

    public void hp(int i2) {
        if (this.eb == i2) {
            return;
        }
        this.eb = i2;
        s.hp().hp(i2);
    }

    public void hp(boolean z2) {
        this.f26881s = z2;
    }

    public void hp(final j jVar, final eb ebVar) {
        if (jVar != null && !TextUtils.isEmpty(jVar.hp())) {
            if (this.f26881s) {
                hp(ebVar, jVar, 1001, "Zip download is disabled");
                return;
            } else {
                com.byazt.uid.w.l(new com.byazt.uid.eb("") { // from class: com.byazt.wf.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.l(jVar, ebVar);
                    }
                });
                return;
            }
        }
        hp(ebVar, jVar, 1001, "Invalid zip config");
    }

    public static boolean hp(j jVar) {
        Context context;
        File fileL;
        if (jVar == null || TextUtils.isEmpty(jVar.hp()) || (context = hp().f26879j) == null || (fileL = com.byazt.rz.l.l(context)) == null) {
            return false;
        }
        String strJ = s.j(jVar.hp());
        String strJx = jVar.jx();
        if (TextUtils.isEmpty(strJx)) {
            strJx = "img_0.png";
        }
        StringBuilder sb = new StringBuilder("tt_lottie_imgcac");
        String str = File.separator;
        sb.append(str);
        sb.append(strJ);
        sb.append(str);
        sb.append(strJx);
        return new File(fileL, sb.toString()).exists();
    }

    private void hp(final eb ebVar, final j jVar) {
        if (ebVar != null) {
            e.l().post(new Runnable() { // from class: com.byazt.wf.a.3
                @Override // java.lang.Runnable
                public void run() {
                    ebVar.hp(jVar);
                }
            });
        }
    }

    private void hp(final eb ebVar, final j jVar, final int i2, final String str) {
        if (ebVar != null) {
            e.l().post(new Runnable() { // from class: com.byazt.wf.a.4
                @Override // java.lang.Runnable
                public void run() {
                    ebVar.hp(jVar, i2, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, boolean z2, j jVar, int i2, String str2) {
        List<WeakReference<eb>> listRemove;
        synchronized (this) {
            listRemove = this.f26880l.remove(str);
        }
        if (listRemove == null || listRemove.isEmpty()) {
            return;
        }
        Iterator<WeakReference<eb>> it = listRemove.iterator();
        while (it.hasNext()) {
            eb ebVar = it.next().get();
            if (ebVar != null) {
                if (z2) {
                    hp(ebVar, jVar);
                } else {
                    hp(ebVar, jVar, i2, str2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str) {
        this.jx.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(j jVar, boolean z2, long j2, int i2, String str) throws JSONException {
        if (this.f26882w == null || jVar == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(cb.f11292o, z2);
            jSONObject.put("duration_ms", j2);
            jSONObject.put("url", jVar.hp());
            if (!z2) {
                jSONObject.put("error_code", i2);
                jSONObject.put("error_desc", str);
            }
            this.f26882w.hp("lot_download", jSONObject);
        } catch (Exception unused) {
        }
    }
}
