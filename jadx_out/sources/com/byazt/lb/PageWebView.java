package com.byazt.lb;

import android.content.Context;
import android.util.SparseArray;
import android.webkit.DownloadListener;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.byazt.cf.j;
import com.byazt.cf.jx;
import com.byazt.cf.l;
import com.byazt.dnb.s;
import com.byazt.jdb.a;
import com.byazt.jz.d;
import com.byazt.jz.ud;
import com.byazt.pm.w;
import com.byazt.ql.k;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.zn.ky;
import com.byazt.zn.r;
import com.byazt.zn.sz;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1293, 1866})
/* loaded from: classes3.dex */
public class PageWebView extends FrameLayout implements w {
    public static final SparseArray<WeakReference<DownloadListener>> hp = new SparseArray<>();

    /* renamed from: a, reason: collision with root package name */
    public k f22410a;

    /* renamed from: j, reason: collision with root package name */
    public mp f22411j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public SSWebView f22412l;

    /* renamed from: w, reason: collision with root package name */
    public ud f22413w;

    public PageWebView(@NonNull Context context) {
        super(context);
        this.jx = context;
        SSWebView sSWebView = new SSWebView(context);
        this.f22412l = sSWebView;
        sSWebView.setMaterialMeta(r.hp(this.f22411j));
        addView(this.f22412l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(JSONObject jSONObject) {
        WeakReference<DownloadListener> weakReference;
        l.hp(this.jx).hp(false).l(false).hp(this.f22412l);
        SSWebView sSWebView = this.f22412l;
        if (sSWebView != null) {
            sz.hp(sSWebView, d.f21856j, mp.w(this.f22411j));
        }
        this.f22412l.setMixedContentMode(0);
        if (jSONObject == null || (weakReference = hp.get(jSONObject.hashCode())) == null || weakReference.get() == null) {
            return;
        }
        this.f22412l.setDownloadListener(weakReference.get());
    }

    @Override // com.byazt.pm.w
    public void hp(boolean z2, JSONArray jSONArray) {
    }

    public void l(final JSONObject jSONObject) {
        s.hp(new Runnable() { // from class: com.byazt.lb.PageWebView.1
            @Override // java.lang.Runnable
            public void run() {
                PageWebView.this.jx(jSONObject);
            }
        });
    }

    public void setMeta(mp mpVar) {
        this.f22411j = mpVar;
        SSWebView sSWebView = this.f22412l;
        if (sSWebView != null) {
            sSWebView.setMaterialMeta(r.hp(mpVar));
        }
    }

    public void setUGenContext(k kVar) {
        this.f22410a = kVar;
    }

    public static void hp(JSONObject jSONObject, DownloadListener downloadListener) {
        if (downloadListener == null || jSONObject == null) {
            return;
        }
        hp.put(jSONObject.hashCode(), new WeakReference<>(downloadListener));
    }

    public static void hp(JSONObject jSONObject) {
        if (jSONObject != null) {
            hp.remove(jSONObject.hashCode());
        }
    }

    public void hp() {
        Map<String, Object> mapL;
        if (this.f22412l == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f22411j);
        this.f22413w = new ud(this.jx);
        k kVar = this.f22410a;
        if (kVar != null && (mapL = kVar.l()) != null && mapL.containsKey("key_reward_page")) {
            Object obj = mapL.get("key_reward_page");
            if (obj instanceof Map) {
                this.f22413w.hp((Map<String, Object>) obj);
            }
        }
        this.f22413w.l(this.f22412l).hp(this.f22411j).jx(arrayList).l(this.f22411j.j()).j(this.f22411j.w_()).jx(7).hp(ky.l(this.f22411j)).w(ky.sz(this.f22411j)).hp(this.f22412l).hp(true).l(com.byazt.fy.s.hp(this.f22411j)).hp((w) this);
        this.f22412l.setWebViewClient(new j(this.jx, this.f22413w, this.f22411j.j(), new a(this.f22411j, this.f22412l), null));
        this.f22412l.setWebChromeClient(new jx(this.f22413w));
    }

    public void hp(String str) {
        SSWebView sSWebView = this.f22412l;
        if (sSWebView != null) {
            sSWebView.loadUrl(str);
        }
    }
}
