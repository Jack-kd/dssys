package com.beizi.fusion;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.anythink.core.common.f.g;
import com.beizi.fusion.rn;
import com.beizi.fusion.unified.BZUnifiedAdDownloadAppInfo;
import com.beizi.fusion.unified.BZUnifiedAdImageInfo;
import com.beizi.fusion.unified.BZUnifiedAdResponse;
import com.beizi.fusion.unified.BZUnifiedAdTemplateBeanModel;
import com.beizi.fusion.unified.BZUnifiedAdVideoInfo;
import com.umeng.analytics.pro.bv;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class mj extends l3 {

    /* renamed from: P, reason: collision with root package name */
    private lj f15084P;

    /* renamed from: Q, reason: collision with root package name */
    private e5 f15085Q;

    public class a implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f15086a;

        public a(View view) {
            this.f15086a = view;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            try {
                View view = this.f15086a;
                if (view == null) {
                    return true;
                }
                view.getViewTreeObserver().removeOnPreDrawListener(this);
                mj.this.a(this.f15086a);
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
                return true;
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f15088a;

        public class a implements bo {

            /* renamed from: com.beizi.fusion.mj$b$a$a, reason: collision with other inner class name */
            public class RunnableC0165a implements Runnable {
                public RunnableC0165a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (mj.this.f15084P != null) {
                        mj.this.f15084P.onAdShown();
                    }
                }
            }

            public a() {
            }

            @Override // com.beizi.fusion.bo
            public void a() {
                try {
                    if (mj.this.f14797c != null) {
                        Log.e("BeiZisAd", "enter BeiZi ad show");
                        rn rnVar = mj.this.f14797c;
                        b bVar = b.this;
                        rnVar.f(bVar.f15088a, mj.this.f14806l);
                        if (mj.this.f14814t) {
                            mj.this.f14815u = true;
                            v3.b().a(mj.this.f14812r);
                        }
                        b.this.f15088a.post(new RunnableC0165a());
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        public b(View view) {
            this.f15088a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (mj.this.f15084P == null || mj.this.f14797c == null) {
                    return;
                }
                mj.this.f15085Q = new e5(this.f15088a, new a());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f15092a;

        public c(int i2) {
            this.f15092a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            mj.this.f15084P.onAdFailed(this.f15092a);
        }
    }

    public class d implements BZUnifiedAdResponse {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ rn f15094a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ BZUnifiedAdTemplateBeanModel f15095b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f15096c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f15097d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f15098e;

        public d(rn rnVar, BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel, String str, String str2, String str3) {
            this.f15094a = rnVar;
            this.f15095b = bZUnifiedAdTemplateBeanModel;
            this.f15096c = str;
            this.f15097d = str2;
            this.f15098e = str3;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public String getActionText() {
            BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = this.f15095b;
            if (bZUnifiedAdTemplateBeanModel != null) {
                return bZUnifiedAdTemplateBeanModel.getActionText();
            }
            return null;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public String getAdBrand() {
            BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = this.f15095b;
            if (bZUnifiedAdTemplateBeanModel != null) {
                return bZUnifiedAdTemplateBeanModel.getAdBrand();
            }
            return null;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public String getCreativeId() {
            BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = this.f15095b;
            if (bZUnifiedAdTemplateBeanModel != null) {
                return bZUnifiedAdTemplateBeanModel.getCreativeId();
            }
            return null;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public String getDeeplink() {
            return this.f15096c;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public String getDesc() {
            BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = this.f15095b;
            if (bZUnifiedAdTemplateBeanModel != null) {
                return bZUnifiedAdTemplateBeanModel.getDesc();
            }
            return null;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public BZUnifiedAdDownloadAppInfo getDownloadAppInfo() {
            if (!mj.this.f14798d || this.f15094a == null) {
                return null;
            }
            BZUnifiedAdDownloadAppInfo bZUnifiedAdDownloadAppInfo = new BZUnifiedAdDownloadAppInfo();
            bZUnifiedAdDownloadAppInfo.setAppName(this.f15094a.j());
            bZUnifiedAdDownloadAppInfo.setAppVersion(this.f15094a.q());
            bZUnifiedAdDownloadAppInfo.setAppDeveloper(this.f15094a.k());
            String strO = this.f15094a.o();
            if (TextUtils.isEmpty(strO)) {
                bZUnifiedAdDownloadAppInfo.setAppPermission(this.f15094a.n());
            } else {
                bZUnifiedAdDownloadAppInfo.setAppPermission(strO);
            }
            bZUnifiedAdDownloadAppInfo.setAppPrivacy(this.f15094a.p());
            bZUnifiedAdDownloadAppInfo.setAppIntro(this.f15094a.r());
            return bZUnifiedAdDownloadAppInfo;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public String getDownloadUrl() {
            return this.f15097d;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public int getEcpm() {
            try {
                return Integer.parseInt(this.f15094a.V());
            } catch (Exception e2) {
                e2.printStackTrace();
                return 0;
            }
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public BZUnifiedAdImageInfo getIcon() {
            BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = this.f15095b;
            if (bZUnifiedAdTemplateBeanModel != null) {
                return bZUnifiedAdTemplateBeanModel.getIcon();
            }
            return null;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public BZUnifiedAdImageInfo getImage() {
            BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = this.f15095b;
            if (bZUnifiedAdTemplateBeanModel != null) {
                return bZUnifiedAdTemplateBeanModel.getImage();
            }
            return null;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public List getImageList() {
            BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = this.f15095b;
            if (bZUnifiedAdTemplateBeanModel != null) {
                return bZUnifiedAdTemplateBeanModel.getImageList();
            }
            return null;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public int getImageMode() {
            BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = this.f15095b;
            if (bZUnifiedAdTemplateBeanModel == null) {
                return -1;
            }
            if (bZUnifiedAdTemplateBeanModel.getVideo() != null) {
                return 3;
            }
            if (this.f15095b.getImageList() == null || this.f15095b.getImageList().size() <= 1) {
                return this.f15095b.getImage() != null ? 1 : -1;
            }
            return 2;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public int getInteractionType() {
            if (!TextUtils.isEmpty(this.f15096c)) {
                return 1;
            }
            if (!TextUtils.isEmpty(this.f15097d) && this.f15097d.contains(com.anythink.core.basead.a.e.f1620e)) {
                return 1;
            }
            if (mj.this.f14798d && !TextUtils.isEmpty(this.f15097d) && this.f15097d.startsWith("http")) {
                return 2;
            }
            return !TextUtils.isEmpty(this.f15098e) ? 3 : 0;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public String getLandingPage() {
            return this.f15098e;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public BZUnifiedAdImageInfo getLogo() {
            rn rnVar = this.f15094a;
            if (rnVar == null) {
                return null;
            }
            rn.e eVarI = rnVar.I();
            BZUnifiedAdImageInfo bZUnifiedAdImageInfo = new BZUnifiedAdImageInfo();
            if (eVarI != null) {
                bZUnifiedAdImageInfo.setUrl(eVarI.a());
            }
            return bZUnifiedAdImageInfo;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public String getTitle() {
            BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = this.f15095b;
            if (bZUnifiedAdTemplateBeanModel != null) {
                return bZUnifiedAdTemplateBeanModel.getTitle();
            }
            return null;
        }

        @Override // com.beizi.fusion.unified.BZUnifiedAdResponse
        public BZUnifiedAdVideoInfo getVideo() {
            BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel = this.f15095b;
            if (bZUnifiedAdTemplateBeanModel != null) {
                return bZUnifiedAdTemplateBeanModel.getVideo();
            }
            return null;
        }
    }

    public class e implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ BZUnifiedAdResponse f15100a;

        public e(BZUnifiedAdResponse bZUnifiedAdResponse) {
            this.f15100a = bZUnifiedAdResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (mj.this.f15084P != null) {
                Log.e("BeiZisAd", "enter BeiZi ad load");
                mj.this.f15084P.onAdLoaded(this.f15100a);
            }
        }
    }

    public mj(Context context, String str, wh whVar) {
        super(context, str, whVar);
    }

    private BZUnifiedAdTemplateBeanModel g(String str) {
        BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel;
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2;
        JSONArray jSONArrayOptJSONArray;
        int i2;
        JSONObject jSONObjectOptJSONObject3;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            bZUnifiedAdTemplateBeanModel = null;
            try {
                if (!str.startsWith("{")) {
                    return null;
                }
                JSONObject jSONObject = new JSONObject(str);
                BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModel2 = new BZUnifiedAdTemplateBeanModel();
                if (jSONObject.has("creativeId")) {
                    bZUnifiedAdTemplateBeanModel2.setCreativeId(jSONObject.optString("creativeId"));
                }
                if (jSONObject.has("adBrand")) {
                    bZUnifiedAdTemplateBeanModel2.setAdBrand(jSONObject.optString("adBrand"));
                }
                if (jSONObject.has(g.a.f3271h)) {
                    bZUnifiedAdTemplateBeanModel2.setTitle(jSONObject.optString(g.a.f3271h));
                }
                if (jSONObject.has("desc")) {
                    bZUnifiedAdTemplateBeanModel2.setDesc(jSONObject.optString("desc"));
                }
                if (jSONObject.has("actionText")) {
                    bZUnifiedAdTemplateBeanModel2.setActionText(jSONObject.optString("actionText"));
                }
                if (jSONObject.has("image") && (jSONObjectOptJSONObject3 = jSONObject.optJSONObject("image")) != null) {
                    BZUnifiedAdImageInfo bZUnifiedAdImageInfo = new BZUnifiedAdImageInfo();
                    if (jSONObjectOptJSONObject3.has("width")) {
                        bZUnifiedAdImageInfo.setWidth(jSONObjectOptJSONObject3.optInt("width"));
                    }
                    if (jSONObjectOptJSONObject3.has("height")) {
                        bZUnifiedAdImageInfo.setHeight(jSONObjectOptJSONObject3.optInt("height"));
                    }
                    if (jSONObjectOptJSONObject3.has("url")) {
                        bZUnifiedAdImageInfo.setUrl(jSONObjectOptJSONObject3.optString("url"));
                    }
                    bZUnifiedAdTemplateBeanModel2.setImage(bZUnifiedAdImageInfo);
                }
                if (jSONObject.has("imageList") && (jSONArrayOptJSONArray = jSONObject.optJSONArray("imageList")) != null && jSONArrayOptJSONArray.length() > 0) {
                    ArrayList arrayList = new ArrayList();
                    int i3 = 0;
                    while (i3 < jSONArrayOptJSONArray.length()) {
                        JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i3);
                        JSONArray jSONArray = jSONArrayOptJSONArray;
                        BZUnifiedAdImageInfo bZUnifiedAdImageInfo2 = new BZUnifiedAdImageInfo();
                        if (jSONObject2.has("width")) {
                            i2 = i3;
                            bZUnifiedAdImageInfo2.setWidth(jSONObject2.optInt("width"));
                        } else {
                            i2 = i3;
                        }
                        if (jSONObject2.has("height")) {
                            bZUnifiedAdImageInfo2.setHeight(jSONObject2.optInt("height"));
                        }
                        if (jSONObject2.has("url")) {
                            bZUnifiedAdImageInfo2.setUrl(jSONObject2.optString("url"));
                        }
                        arrayList.add(bZUnifiedAdImageInfo2);
                        i3 = i2 + 1;
                        jSONArrayOptJSONArray = jSONArray;
                    }
                    bZUnifiedAdTemplateBeanModel2.setImageList(arrayList);
                }
                if (jSONObject.has("video") && (jSONObjectOptJSONObject2 = jSONObject.optJSONObject("video")) != null) {
                    BZUnifiedAdVideoInfo bZUnifiedAdVideoInfo = new BZUnifiedAdVideoInfo();
                    if (jSONObjectOptJSONObject2.has("coverWidth")) {
                        bZUnifiedAdVideoInfo.setCoverWidth(jSONObjectOptJSONObject2.optInt("coverWidth"));
                    }
                    if (jSONObjectOptJSONObject2.has("coverHeight")) {
                        bZUnifiedAdVideoInfo.setCoverHeight(jSONObjectOptJSONObject2.optInt("coverHeight"));
                    }
                    if (jSONObjectOptJSONObject2.has("coverUrl")) {
                        bZUnifiedAdVideoInfo.setCoverUrl(jSONObjectOptJSONObject2.optString("coverUrl"));
                    }
                    if (jSONObjectOptJSONObject2.has("coverHeight")) {
                        bZUnifiedAdVideoInfo.setCoverHeight(jSONObjectOptJSONObject2.optInt("coverHeight"));
                    }
                    if (jSONObjectOptJSONObject2.has("url")) {
                        bZUnifiedAdVideoInfo.setUrl(jSONObjectOptJSONObject2.optString("url"));
                    }
                    if (jSONObjectOptJSONObject2.has("duration")) {
                        bZUnifiedAdVideoInfo.setDuration(jSONObjectOptJSONObject2.optInt("duration"));
                    }
                    if (jSONObjectOptJSONObject2.has(bv.f48925z)) {
                        bZUnifiedAdVideoInfo.setResolution(jSONObjectOptJSONObject2.optString(bv.f48925z));
                    }
                    bZUnifiedAdTemplateBeanModel2.setVideo(bZUnifiedAdVideoInfo);
                }
                if (jSONObject.has("icon") && (jSONObjectOptJSONObject = jSONObject.optJSONObject("icon")) != null) {
                    BZUnifiedAdImageInfo bZUnifiedAdImageInfo3 = new BZUnifiedAdImageInfo();
                    if (jSONObjectOptJSONObject.has("width")) {
                        bZUnifiedAdImageInfo3.setWidth(jSONObjectOptJSONObject.optInt("width"));
                    }
                    if (jSONObjectOptJSONObject.has("height")) {
                        bZUnifiedAdImageInfo3.setHeight(jSONObjectOptJSONObject.optInt("height"));
                    }
                    if (jSONObjectOptJSONObject.has("url")) {
                        bZUnifiedAdImageInfo3.setUrl(jSONObjectOptJSONObject.optString("url"));
                    }
                    bZUnifiedAdTemplateBeanModel2.setIcon(bZUnifiedAdImageInfo3);
                }
                if ((bZUnifiedAdTemplateBeanModel2.getImageList() == null || bZUnifiedAdTemplateBeanModel2.getImageList().size() <= 1) && bZUnifiedAdTemplateBeanModel2.getImage() == null) {
                    if (bZUnifiedAdTemplateBeanModel2.getVideo() == null) {
                        return null;
                    }
                }
                return bZUnifiedAdTemplateBeanModel2;
            } catch (Throwable th) {
                th = th;
                th.printStackTrace();
                return bZUnifiedAdTemplateBeanModel;
            }
        } catch (Throwable th2) {
            th = th2;
            bZUnifiedAdTemplateBeanModel = null;
        }
    }

    public void b(View view) {
        if (view == null) {
            return;
        }
        try {
            view.getViewTreeObserver().addOnPreDrawListener(new a(view));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.l3
    public void d() {
        super.d();
        e5 e5Var = this.f15085Q;
        if (e5Var != null) {
            e5Var.a();
        }
        this.f15085Q = null;
    }

    public void a(lj ljVar) {
        this.f15084P = ljVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        if (view == null) {
            return;
        }
        view.post(new b(view));
    }

    public void a(ViewGroup viewGroup, kj kjVar) {
        try {
            if (this.f15084P != null && viewGroup != null && kjVar != null) {
                int iA = kjVar.a();
                rn rnVar = this.f14797c;
                if (rnVar == null) {
                    return;
                }
                rnVar.e(this.f14793N);
                this.f14797c.c(true);
                h5 h5Var = new h5();
                if (!TextUtils.isEmpty(kjVar.d())) {
                    h5Var.g(kjVar.d());
                }
                if (!TextUtils.isEmpty(kjVar.e())) {
                    h5Var.h(kjVar.e());
                }
                if (!TextUtils.isEmpty(kjVar.b())) {
                    h5Var.e(kjVar.b());
                }
                if (!TextUtils.isEmpty(kjVar.c())) {
                    h5Var.f(kjVar.c());
                }
                if (!TextUtils.isEmpty(kjVar.h())) {
                    h5Var.c(kjVar.h());
                }
                if (!TextUtils.isEmpty(kjVar.i())) {
                    h5Var.d(kjVar.i());
                }
                if (!TextUtils.isEmpty(kjVar.f())) {
                    h5Var.a(kjVar.f());
                }
                if (!TextUtils.isEmpty(kjVar.g())) {
                    h5Var.b(kjVar.g());
                }
                this.f14797c.a(viewGroup, h5Var, String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis() + 10), this.f14803i, this.f14806l, iA);
                this.f14803i = true;
                this.f15084P.onAdClick();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.l3
    public void a(int i2) {
        if (this.f15084P == null || this.f14804j || this.f14801g) {
            return;
        }
        this.f14804j = true;
        Handler handler = this.f14789J;
        if (handler != null) {
            handler.post(new c(i2));
        }
    }

    @Override // com.beizi.fusion.l3
    public void a(rn rnVar) {
        e(rnVar.V());
        a(rnVar.c());
        b(rnVar.j0());
        String strA = rnVar.A();
        String strG = rnVar.G();
        String strL = rnVar.l();
        BZUnifiedAdTemplateBeanModel bZUnifiedAdTemplateBeanModelG = g(rnVar.b0());
        if (bZUnifiedAdTemplateBeanModelG == null) {
            a(3);
            return;
        }
        d dVar = new d(rnVar, bZUnifiedAdTemplateBeanModelG, strA, strL, strG);
        Handler handler = this.f14789J;
        if (handler != null) {
            handler.post(new e(dVar));
        }
    }
}
