package com.octopus.ad.internal.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.Octopus;
import com.octopus.ad.OnSensorListener;
import com.octopus.ad.R;
import com.octopus.ad.a.c;
import com.octopus.ad.c;
import com.octopus.ad.d.d;
import com.octopus.ad.d.i;
import com.octopus.ad.d.l;
import com.octopus.ad.internal.c.d;
import com.octopus.ad.internal.c.q;
import com.octopus.ad.internal.d.u;
import com.octopus.ad.internal.e.a;
import com.octopus.ad.internal.e.h;
import com.octopus.ad.internal.h;
import com.octopus.ad.internal.k;
import com.octopus.ad.internal.n;
import com.octopus.ad.internal.nativead.NativeAdEventListener;
import com.octopus.ad.internal.nativead.NativeAdShownListener;
import com.octopus.ad.internal.p;
import com.octopus.ad.internal.utilities.ImageManager;
import com.octopus.ad.internal.utilities.ViewUtil;
import com.octopus.ad.internal.video.VideoStateListener;
import com.octopus.ad.internal.y;
import com.octopus.ad.listener.OnCpaListener;
import com.octopus.ad.model.AdLogoInfo;
import com.octopus.ad.model.ComplianceInfo;
import com.octopus.ad.model.ShakeValue;
import com.octopus.ad.utils.ThreadUtils;
import com.octopus.ad.widget.RegionClickView;
import com.umeng.analytics.pro.be;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class e implements NativeAdResponse {

    /* renamed from: A, reason: collision with root package name */
    private Boolean f34282A;

    /* renamed from: D, reason: collision with root package name */
    private String f34285D;

    /* renamed from: E, reason: collision with root package name */
    private HashMap<String, Object> f34286E;

    /* renamed from: L, reason: collision with root package name */
    private AdLogoInfo f34293L;

    /* renamed from: M, reason: collision with root package name */
    private AdLogoInfo f34294M;

    /* renamed from: N, reason: collision with root package name */
    private f f34295N;

    /* renamed from: O, reason: collision with root package name */
    private c f34296O;

    /* renamed from: P, reason: collision with root package name */
    private Context f34297P;

    /* renamed from: Q, reason: collision with root package name */
    private AppCompatTextView f34298Q;

    /* renamed from: R, reason: collision with root package name */
    private c.v f34299R;

    /* renamed from: S, reason: collision with root package name */
    private l f34300S;

    /* renamed from: T, reason: collision with root package name */
    private View f34301T;

    /* renamed from: U, reason: collision with root package name */
    private VideoView f34302U;

    /* renamed from: V, reason: collision with root package name */
    private TextureView f34303V;

    /* renamed from: W, reason: collision with root package name */
    private ImageView f34304W;

    /* renamed from: X, reason: collision with root package name */
    private LinearLayout f34305X;

    /* renamed from: Y, reason: collision with root package name */
    private MediaPlayer f34306Y;

    /* renamed from: Z, reason: collision with root package name */
    private ProgressBar f34307Z;

    /* renamed from: a, reason: collision with root package name */
    private NativeAdResponse.b f34308a;
    private y aA;
    private com.octopus.ad.internal.g aB;
    private h aC;
    private ArrayList<n> aD;
    private List<? extends View> aE;
    private OnSensorListener aF;
    private OnCpaListener aG;
    private com.octopus.ad.b.a aH;
    private k.a aI;
    private c.b aJ;
    private ComplianceInfo aK;
    private Handler aa;
    private Runnable ab;
    private com.octopus.ad.a.a ac;
    private String ad;
    private boolean ae;
    private boolean af;
    private boolean ag;
    private boolean ah;
    private boolean ai;
    private boolean aj;
    private boolean am;
    private int an;
    private int ap;
    private ViewGroup aq;
    private View ar;
    private View as;
    private List<View> at;
    private List<View> au;
    private NativeAdEventListener av;
    private VideoStateListener aw;
    private View.OnClickListener ax;
    private View.OnTouchListener ay;
    private View.OnClickListener az;

    /* renamed from: b, reason: collision with root package name */
    private String f34309b;

    /* renamed from: c, reason: collision with root package name */
    private String f34310c;

    /* renamed from: d, reason: collision with root package name */
    private String f34311d;

    /* renamed from: e, reason: collision with root package name */
    private String f34312e;

    /* renamed from: f, reason: collision with root package name */
    private Bitmap f34313f;

    /* renamed from: g, reason: collision with root package name */
    private Bitmap f34314g;

    /* renamed from: h, reason: collision with root package name */
    private String f34315h;

    /* renamed from: i, reason: collision with root package name */
    private String f34316i;

    /* renamed from: j, reason: collision with root package name */
    private String f34317j;

    /* renamed from: k, reason: collision with root package name */
    private double f34318k;

    /* renamed from: l, reason: collision with root package name */
    private String f34319l;

    /* renamed from: m, reason: collision with root package name */
    private int f34320m;

    /* renamed from: n, reason: collision with root package name */
    private int f34321n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f34322o;

    /* renamed from: p, reason: collision with root package name */
    private boolean f34323p;

    /* renamed from: q, reason: collision with root package name */
    private boolean f34324q;

    /* renamed from: r, reason: collision with root package name */
    private boolean f34325r;

    /* renamed from: t, reason: collision with root package name */
    private boolean f34327t;

    /* renamed from: u, reason: collision with root package name */
    private boolean f34328u;

    /* renamed from: w, reason: collision with root package name */
    private boolean f34330w;

    /* renamed from: x, reason: collision with root package name */
    private boolean f34331x;

    /* renamed from: s, reason: collision with root package name */
    private boolean f34326s = false;

    /* renamed from: v, reason: collision with root package name */
    private boolean f34329v = false;

    /* renamed from: y, reason: collision with root package name */
    private int f34332y = 0;

    /* renamed from: z, reason: collision with root package name */
    private int f34333z = 0;

    /* renamed from: B, reason: collision with root package name */
    private boolean f34283B = false;

    /* renamed from: C, reason: collision with root package name */
    private boolean f34284C = false;

    /* renamed from: F, reason: collision with root package name */
    private boolean f34287F = false;

    /* renamed from: G, reason: collision with root package name */
    private final ArrayList<String> f34288G = new ArrayList<>();

    /* renamed from: H, reason: collision with root package name */
    private final ArrayList<String> f34289H = new ArrayList<>();

    /* renamed from: I, reason: collision with root package name */
    private final ArrayList<String> f34290I = new ArrayList<>();

    /* renamed from: J, reason: collision with root package name */
    private ArrayList<String> f34291J = new ArrayList<>();

    /* renamed from: K, reason: collision with root package name */
    private ArrayList<String> f34292K = new ArrayList<>();
    private boolean ak = true;
    private boolean al = true;
    private int ao = 0;

    /* renamed from: com.octopus.ad.internal.b.e$12, reason: invalid class name */
    public class AnonymousClass12 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ float f34338a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImageView f34339b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ ImageView f34340c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ TextView f34341d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ ImageView f34342e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ TextView f34343f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ TextView f34344g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ FrameLayout f34345h;

        /* renamed from: i, reason: collision with root package name */
        final /* synthetic */ ImageView f34346i;

        /* renamed from: j, reason: collision with root package name */
        final /* synthetic */ FrameLayout f34347j;

        /* renamed from: com.octopus.ad.internal.b.e$12$2, reason: invalid class name */
        public class AnonymousClass2 implements ImageManager.BitmapLoadedListener {
            public AnonymousClass2() {
            }

            @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
            public void onBitmapLoadFailed() {
                if (e.this.av != null) {
                    e.this.av.onAdRenderFailed(80101);
                }
                if (e.this.f34295N != null) {
                    e.this.f34295N.a("onBitmapLoadFailed");
                }
            }

            @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
            public void onBitmapLoaded(final Bitmap bitmap) {
                com.octopus.ad.d.d.a(e.this.f34297P, bitmap, new d.a() { // from class: com.octopus.ad.internal.b.e.12.2.1
                    @Override // com.octopus.ad.d.d.a
                    public void a(final Bitmap bitmap2) {
                        ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.internal.b.e.12.2.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    if (bitmap2 != null) {
                                        AnonymousClass12.this.f34346i.setBackground(new BitmapDrawable(e.this.f34297P.getResources(), bitmap2));
                                    }
                                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                    AnonymousClass12.this.f34346i.setImageBitmap(bitmap);
                                    if (e.this.f34307Z != null) {
                                        e.this.f34307Z.setVisibility(8);
                                    }
                                    e.this.w();
                                } catch (Exception e2) {
                                    if (e.this.av != null) {
                                        e.this.av.onAdRenderFailed(80101);
                                    }
                                    if (e.this.f34295N != null) {
                                        e.this.f34295N.a(e2.getMessage());
                                    }
                                }
                            }
                        });
                    }
                });
            }
        }

        public AnonymousClass12(float f2, ImageView imageView, ImageView imageView2, TextView textView, ImageView imageView3, TextView textView2, TextView textView3, FrameLayout frameLayout, ImageView imageView4, FrameLayout frameLayout2) {
            this.f34338a = f2;
            this.f34339b = imageView;
            this.f34340c = imageView2;
            this.f34341d = textView;
            this.f34342e = imageView3;
            this.f34343f = textView2;
            this.f34344g = textView3;
            this.f34345h = frameLayout;
            this.f34346i = imageView4;
            this.f34347j = frameLayout2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.aq == null) {
                return;
            }
            if (e.this.an <= 0) {
                e eVar = e.this;
                eVar.an = eVar.ar.getWidth();
                if (e.this.an <= 0) {
                    e eVar2 = e.this;
                    eVar2.an = ViewUtil.getScreenWidth(eVar2.ar.getContext());
                    e.this.ar.getLayoutParams().width = e.this.an;
                }
                e.this.ar.getLayoutParams().height = (int) (e.this.an / this.f34338a);
            }
            int unused = e.this.an;
            int i2 = e.this.ar.getLayoutParams().height;
            int iPx2dip = ViewUtil.px2dip(e.this.aq.getContext(), e.this.an);
            float f2 = iPx2dip > 0 ? iPx2dip / 360.0f : 1.0f;
            float f3 = f2 <= 1.0f ? f2 : 1.0f;
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.f34339b);
            arrayList.add(this.f34340c);
            arrayList.add(this.f34341d);
            arrayList.add(this.f34342e);
            arrayList.add(this.f34343f);
            arrayList.add(this.f34344g);
            arrayList.add(e.this.f34307Z);
            e.this.a((ArrayList<View>) arrayList, f3);
            if (e.this.aK != null) {
                e eVar3 = e.this;
                eVar3.f34298Q = ViewUtil.createComplianceView(eVar3.aq.getContext(), e.this.aK, f3, true);
                if (e.this.f34332y == 3 || e.this.f34332y == 4) {
                    e.this.f34298Q.post(new Runnable() { // from class: com.octopus.ad.internal.b.e.12.1
                        @Override // java.lang.Runnable
                        public void run() {
                            e.this.ar.getLayoutParams().height += e.this.f34298Q.getHeight();
                        }
                    });
                }
            }
            if (e.this.isVideo()) {
                if (!e.this.getVideoUrls().isEmpty()) {
                    this.f34345h.setBackgroundColor(-16777216);
                    if (e.this.af) {
                        e.this.f34303V.setVisibility(0);
                        e.this.q();
                    } else {
                        e.this.f34302U.setVisibility(0);
                        e.this.p();
                    }
                }
            } else if (!TextUtils.isEmpty(e.this.getImageUrl())) {
                ImageManager.with(null).getBitmap(e.this.getImageUrl(), new AnonymousClass2());
            }
            e.this.a(this.f34347j);
            e.this.a((ViewGroup) this.f34345h);
            e.this.a(this.f34343f);
            e.this.e();
            if (Octopus.getCustomController() != null && !Octopus.getCustomController().isShowFeedBack()) {
                this.f34344g.setVisibility(8);
            } else {
                final String strA = q.a("https://www.adintl.cn/sdkFeedback.html?slotId=${SLOT_ID}&sdkVersion=${SDK_VERSION}&deviceId=${DEVICE_ID}", e.this.f34295N.e(), Octopus.getOaid(e.this.f34297P));
                this.f34344g.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.b.e.12.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ViewUtil.openLocalBrowser(strA, 0);
                        if (e.this.f34295N != null) {
                            e.this.f34295N.c();
                        }
                    }
                });
            }
        }
    }

    /* renamed from: com.octopus.ad.internal.b.e$8, reason: invalid class name */
    public class AnonymousClass8 implements ImageManager.BitmapLoadedListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f34391a;

        public AnonymousClass8(Context context) {
            this.f34391a = context;
        }

        @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
        public void onBitmapLoadFailed() {
        }

        @Override // com.octopus.ad.internal.utilities.ImageManager.BitmapLoadedListener
        public void onBitmapLoaded(final Bitmap bitmap) {
            com.octopus.ad.d.d.a(this.f34391a, bitmap, new d.a() { // from class: com.octopus.ad.internal.b.e.8.1
                @Override // com.octopus.ad.d.d.a
                public void a(final Bitmap bitmap2) {
                    ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.internal.b.e.8.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                if (bitmap2 != null) {
                                    e.this.f34304W.setBackground(new BitmapDrawable(AnonymousClass8.this.f34391a.getResources(), bitmap2));
                                }
                                e.this.f34304W.setImageBitmap(bitmap);
                            } catch (Exception e2) {
                                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                            }
                        }
                    });
                }
            });
        }
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void addShakeView(final ViewGroup viewGroup, final int i2, final float f2) {
        if (viewGroup == null) {
            return;
        }
        viewGroup.post(new Runnable() { // from class: com.octopus.ad.internal.b.e.7
            @Override // java.lang.Runnable
            public void run() {
                if (e.this.f34299R == null || e.this.f34299R.a() == 0) {
                    e.this.f34299R = new c.v(1.5d, 0.0d, 0, "摇动或点击了解更多", 1, 0, 0, 3);
                }
                e.this.a(viewGroup, i2, f2);
            }
        });
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void bindUnifiedView(ViewGroup viewGroup, List<View> list, NativeAdEventListener nativeAdEventListener) {
        bindUnifiedView(viewGroup, list, null, nativeAdEventListener);
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void bindView(ViewGroup viewGroup, NativeAdEventListener nativeAdEventListener) {
        this.ai = true;
        this.aq = viewGroup;
        this.av = nativeAdEventListener;
        j();
        f fVar = this.f34295N;
        if (fVar != null) {
            fVar.b();
        }
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void destroy() {
        this.f34323p = true;
        this.f34287F = true;
        x();
        com.octopus.ad.internal.g gVar = this.aB;
        if (gVar != null) {
            gVar.a();
        }
        h hVar = this.aC;
        if (hVar != null) {
            hVar.a();
        }
        l lVar = this.f34300S;
        if (lVar != null) {
            lVar.a();
            this.f34300S = null;
        }
        Handler handler = this.aa;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.aa = null;
        }
        y yVar = this.aA;
        if (yVar != null) {
            yVar.d();
            this.aA = null;
        }
        f fVar = this.f34295N;
        if (fVar != null) {
            fVar.al();
            this.f34295N = null;
        }
        Bitmap bitmap = this.f34314g;
        if (bitmap != null) {
            bitmap.recycle();
            this.f34314g = null;
        }
        Bitmap bitmap2 = this.f34313f;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.f34313f = null;
        }
        MediaPlayer mediaPlayer = this.f34306Y;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            this.f34306Y = null;
        }
        this.ab = null;
        this.as = null;
        this.at = null;
        this.au = null;
        this.aq = null;
        this.aD = null;
        this.av = null;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getAdvertiser() {
        return this.f34285D;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public View getBlurView(Context context) {
        return b(context);
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getButtonText() {
        return TextUtils.isEmpty(this.f34317j) ? "查看详情" : this.f34317j;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public ComplianceInfo getComplianceInfo() {
        return this.aK;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public View getComplianceView(Context context) {
        ComplianceInfo complianceInfo = this.aK;
        if (complianceInfo != null) {
            return ViewUtil.createComplianceView(context, complianceInfo, 1.0f, true);
        }
        return null;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getCoveUrl() {
        return this.f34316i;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getDescription() {
        return this.f34310c;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public Bitmap getIcon() {
        return this.f34314g;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getIconUrl() {
        return this.f34312e;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public Bitmap getImage() {
        return this.f34313f;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getImageUrl() {
        return this.f34311d;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public ArrayList<String> getImageUrls() {
        return this.f34288G;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public int getInteractionType() {
        c.b bVar = this.aJ;
        if (bVar != null) {
            return bVar.d();
        }
        return 4;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getLandingPageUrl() {
        return this.f34315h;
    }

    @Override // com.octopus.ad.NativeAdResponse
    @NonNull
    public Bitmap getLogo(@NonNull Context context) {
        return BitmapFactory.decodeResource(context.getResources(), R.drawable.oct_logo);
    }

    @Override // com.octopus.ad.NativeAdResponse
    public AdLogoInfo getLogoInfo() {
        return this.f34294M;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getLogoUrl() {
        AdLogoInfo adLogoInfo = this.f34294M;
        if (adLogoInfo == null || adLogoInfo.getType() != AdLogoInfo.TYPE_PIC) {
            return null;
        }
        return this.f34294M.getAdurl();
    }

    @Override // com.octopus.ad.NativeAdResponse
    public int getMaterialType() {
        return isVideo() ? 2 : 1;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public Map<String, Object> getMediaExtraInfo() {
        f fVar = this.f34295N;
        return fVar != null ? fVar.ab() : Collections.EMPTY_MAP;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public NativeAdResponse.b getNativeAdType() {
        return this.f34308a;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public HashMap<String, Object> getNativeElements() {
        return this.f34286E;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public List<? extends View> getNativeInfoListView() {
        return this.aE;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public View getNativeView() {
        return this.aq;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public NativeAdResponse.a getNetworkIdentifier() {
        return NativeAdResponse.a.OCTOPUS;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public int getPictureHeight() {
        f fVar = this.f34295N;
        if (fVar != null) {
            return fVar.o();
        }
        return 0;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public int getPictureWidth() {
        f fVar = this.f34295N;
        if (fVar != null) {
            return fVar.p();
        }
        return 0;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public int getPrice() {
        return this.f34320m;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public ShakeValue getShakeValue() {
        f fVar = this.f34295N;
        if (fVar != null) {
            return fVar.aa();
        }
        return null;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public double getStarRating() {
        return this.f34318k;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getStore() {
        return this.f34319l;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public ArrayList<String> getTextList() {
        return this.f34290I;
    }

    @Override // com.octopus.ad.NativeAdResponse
    @NonNull
    public Bitmap getTextLogo(@NonNull Context context) {
        return BitmapFactory.decodeResource(context.getResources(), R.drawable.oct_logo_text);
    }

    @Override // com.octopus.ad.NativeAdResponse
    public AdLogoInfo getTextLogoInfo() {
        return this.f34293L;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getTextLogoUrl() {
        AdLogoInfo adLogoInfo = this.f34293L;
        if (adLogoInfo == null || adLogoInfo.getType() != AdLogoInfo.TYPE_PIC) {
            return null;
        }
        return this.f34293L.getAdurl();
    }

    @Override // com.octopus.ad.NativeAdResponse
    public String getTitle() {
        return this.f34309b;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public ArrayList<String> getVideoUrls() {
        return this.f34289H;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public View getVideoView(Context context) {
        if (context == null || !isVideo() || getVideoUrls().isEmpty()) {
            return null;
        }
        if (this.af) {
            if (this.f34303V == null) {
                this.f34303V = new TextureView(context);
                q();
            }
            return this.f34303V;
        }
        if (this.f34302U == null) {
            this.f34302U = new VideoView(context);
            p();
        }
        return this.f34302U;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public boolean hasExpired() {
        return this.f34287F;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public boolean isShakeAd() {
        return this.ah;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public boolean isVideo() {
        return this.ag;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public boolean isVideoMute() {
        return this.al;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void setAdWidth(int i2) {
        this.an = i2;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void setAutoFitWidth(boolean z2) {
        this.am = z2;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void setIcon(Bitmap bitmap) {
        this.f34314g = bitmap;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void setImage(Bitmap bitmap) {
        this.f34313f = bitmap;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void setIsVideoMute(boolean z2) {
        this.al = z2;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void setNativeAdEventListener(NativeAdEventListener nativeAdEventListener) throws NoSuchAlgorithmException {
        this.ak = false;
        if (this.f34297P == null) {
            this.f34297P = com.octopus.ad.internal.q.a().l();
        }
        this.ai = false;
        FrameLayout frameLayout = new FrameLayout(this.f34297P);
        this.aq = frameLayout;
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.av = nativeAdEventListener;
        f fVar = this.f34295N;
        if (fVar != null) {
            if (fVar.m() == p.DRAW) {
                l();
            } else if (this.f34295N.m() == p.BANNER) {
                m();
            } else {
                j();
            }
            this.f34295N.b();
        }
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void setNativeInfoListView(List<? extends View> list) {
        this.aE = list;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void setOnCpaListener(OnCpaListener onCpaListener) {
        this.aG = onCpaListener;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void setOnSensorListener(OnSensorListener onSensorListener) {
        this.aF = onSensorListener;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void setVideoStateListener(VideoStateListener videoStateListener) {
        this.aw = videoStateListener;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void showCloseButton(boolean z2) {
        this.f34328u = z2;
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void toggleVideoMute() {
        MediaPlayer mediaPlayer = this.f34306Y;
        if (mediaPlayer != null) {
            if (this.al) {
                mediaPlayer.setVolume(1.0f, 1.0f);
            } else {
                mediaPlayer.setVolume(0.0f, 0.0f);
            }
            this.al = !this.al;
        }
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void unregisterViews() {
        View view = this.as;
        if (view != null) {
            view.setOnClickListener(null);
        }
        List<View> list = this.at;
        if (list != null && !list.isEmpty()) {
            for (View view2 : this.at) {
                if (view2 != null) {
                    view2.setOnClickListener(null);
                }
            }
        }
        List<View> list2 = this.au;
        if (list2 != null && !list2.isEmpty()) {
            for (View view3 : this.au) {
                if (view3 != null) {
                    view3.setOnClickListener(null);
                }
            }
        }
        destroy();
    }

    private void A() {
        this.ax = new View.OnClickListener() { // from class: com.octopus.ad.internal.b.e.20
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e eVar = e.this;
                eVar.a(eVar.v());
            }
        };
    }

    private void B() {
        this.ay = new com.octopus.ad.internal.e.h(this.aq, this.f34283B, new h.a() { // from class: com.octopus.ad.internal.b.e.21
            @Override // com.octopus.ad.internal.e.h.a
            public void a(View view, com.octopus.ad.a.d dVar) {
                e.this.a(dVar);
            }
        });
    }

    private void C() {
        this.az = new View.OnClickListener() { // from class: com.octopus.ad.internal.b.e.22
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (e.this.f34295N != null) {
                    e eVar = e.this;
                    eVar.f34284C = eVar.f34295N.U();
                }
                if (e.this.f34284C && !e.this.f34324q) {
                    e.this.f34333z = 2;
                    e eVar2 = e.this;
                    eVar2.a(eVar2.v());
                    return;
                }
                if (e.this.av != null) {
                    e.this.av.onAdClose();
                }
                if (e.this.f34295N != null) {
                    e.this.f34295N.ac();
                }
                if (e.this.aq != null) {
                    if (e.this.ai) {
                        e.this.aq.removeAllViews();
                    } else {
                        ViewUtil.removeChildFromParent(e.this.aq);
                    }
                }
                e.this.destroy();
            }
        };
    }

    private void j() {
        if (this.aq == null) {
            NativeAdEventListener nativeAdEventListener = this.av;
            if (nativeAdEventListener != null) {
                nativeAdEventListener.onAdRenderFailed(80101);
            }
            f fVar = this.f34295N;
            if (fVar != null) {
                fVar.a("AdContainer is null");
                return;
            }
            return;
        }
        u();
        int i2 = this.f34332y;
        if (i2 == 1) {
            a(R.layout.oct_native_text_above_img, 1.4f);
            return;
        }
        if (i2 == 2) {
            a(R.layout.oct_native_text_below_img, 1.4f);
            return;
        }
        if (i2 == 3) {
            a(R.layout.oct_native_text_right_img, 4.74f);
        } else if (i2 != 4) {
            a(R.layout.oct_native_one_img, 1.78f);
        } else {
            a(R.layout.oct_native_text_left_img, 4.74f);
        }
    }

    private void k() {
        if (this.aq != null) {
            e();
            u();
            return;
        }
        NativeAdEventListener nativeAdEventListener = this.av;
        if (nativeAdEventListener != null) {
            nativeAdEventListener.onAdRenderFailed(80101);
        }
        f fVar = this.f34295N;
        if (fVar != null) {
            fVar.a("AdContainer is null");
        }
    }

    private void l() throws NoSuchAlgorithmException {
        if (this.aq != null) {
            u();
            View viewInflate = LayoutInflater.from(this.aq.getContext()).inflate(R.layout.oct_layout_draw, this.aq);
            this.ar = viewInflate;
            this.an = ViewUtil.getScreenWidth(viewInflate.getContext());
            a(1.0f);
            return;
        }
        NativeAdEventListener nativeAdEventListener = this.av;
        if (nativeAdEventListener != null) {
            nativeAdEventListener.onAdRenderFailed(80101);
        }
        f fVar = this.f34295N;
        if (fVar != null) {
            fVar.a("AdContainer is null");
        }
    }

    private void m() {
        if (this.aq != null) {
            u();
            a(isVideo() ? R.layout.oct_layout_banner_video : R.layout.oct_layout_banner, 6.4f);
            return;
        }
        NativeAdEventListener nativeAdEventListener = this.av;
        if (nativeAdEventListener != null) {
            nativeAdEventListener.onAdRenderFailed(80101);
        }
        f fVar = this.f34295N;
        if (fVar != null) {
            fVar.a("AdContainer is null");
        }
    }

    private void n() {
        c.p pVarK;
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        f fVar = this.f34295N;
        if (fVar == null || (pVarK = fVar.K()) == null) {
            return;
        }
        c.n nVarA = pVarK.a();
        if (this.f34295N.m() == p.DRAW) {
            if (nVarA == null || nVarA.a() != 1 || (viewGroup2 = this.aq) == null) {
                return;
            }
            viewGroup2.setOnClickListener(this.ax);
            this.aq.setOnTouchListener(this.ay);
            return;
        }
        if ((nVarA == null || nVarA.a() == 1) && (viewGroup = this.aq) != null) {
            viewGroup.setOnClickListener(this.ax);
            this.aq.setOnTouchListener(this.ay);
        }
    }

    private void o() {
        ViewGroup viewGroup = this.aq;
        if (viewGroup != null) {
            viewGroup.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.b.e.23
                @Override // android.view.View.OnClickListener
                public void onClick(View view) throws IllegalStateException {
                    try {
                        if (e.this.isVideo()) {
                            if (e.this.af) {
                                if (e.this.f34306Y != null) {
                                    if (e.this.f34306Y.isPlaying()) {
                                        e.this.f34306Y.pause();
                                        e.this.f34329v = true;
                                        if (e.this.aw != null) {
                                            e.this.aw.onVideoPause();
                                            return;
                                        }
                                        return;
                                    }
                                    e.this.f34306Y.start();
                                    e.this.f34329v = false;
                                    if (e.this.aw != null) {
                                        e.this.aw.onVideoResume();
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            if (e.this.f34302U != null) {
                                if (e.this.f34302U.isPlaying()) {
                                    e.this.f34302U.pause();
                                    e.this.f34329v = true;
                                    if (e.this.aw != null) {
                                        e.this.aw.onVideoPause();
                                        return;
                                    }
                                    return;
                                }
                                e.this.f34302U.start();
                                e.this.f34329v = false;
                                if (e.this.aw != null) {
                                    e.this.aw.onVideoResume();
                                }
                            }
                        }
                    } catch (Exception e2) {
                        com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.f34302U == null) {
            return;
        }
        this.aa = new Handler();
        this.ab = new Runnable() { // from class: com.octopus.ad.internal.b.e.25
            @Override // java.lang.Runnable
            public void run() {
                if (e.this.f34302U == null || e.this.f34302U.getDuration() <= 0) {
                    return;
                }
                int duration = e.this.f34302U.getDuration();
                e eVar = e.this;
                eVar.ap = eVar.f34302U.getCurrentPosition();
                if (!e.this.f34302U.isPlaying()) {
                    if (e.this.ap <= 0 || e.this.aj || e.this.f34295N == null) {
                        return;
                    }
                    e.this.f34295N.ai();
                    return;
                }
                e.this.t();
                com.octopus.ad.d.b.f.a("OctopusAd", "currentPosition:" + e.this.ap + ServiceReference.DELIMITER + duration);
                int i2 = e.this.ap / 1000 == duration / TTAdConstant.INIT_LOCAL_FAIL_CODE ? 1 : e.this.ap / 1000 == duration / 2000 ? 2 : e.this.ap / 1000 == (duration * 3) / TTAdConstant.INIT_LOCAL_FAIL_CODE ? 3 : 0;
                if (i2 > 0 && e.this.f34295N != null) {
                    e.this.f34295N.c(i2);
                }
                com.octopus.ad.d.b.f.a("OctopusAd", "video progress:" + i2);
            }
        };
        this.f34302U.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.octopus.ad.internal.b.e.26
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                e.this.aj = true;
                e.this.ap = 0;
                if (e.this.f34295N != null) {
                    e.this.f34295N.aj();
                }
                if (e.this.aw != null) {
                    e.this.aw.onVideoCompleted();
                }
            }
        });
        this.f34302U.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.octopus.ad.internal.b.e.27
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
                if (e.this.aw == null) {
                    return true;
                }
                e.this.aw.onVideoError(i2, i3);
                return true;
            }
        });
        this.f34302U.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.octopus.ad.internal.b.e.28
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                e.this.f34306Y = mediaPlayer;
                if (e.this.f34295N != null && e.this.f34295N.A() && com.octopus.ad.internal.q.a().h() && e.this.al) {
                    e.this.al = true;
                    mediaPlayer.setVolume(0.0f, 0.0f);
                } else {
                    e.this.al = false;
                    mediaPlayer.setVolume(1.0f, 1.0f);
                }
                if (e.this.f34307Z != null) {
                    e.this.f34307Z.setVisibility(8);
                }
                if (e.this.f34295N != null) {
                    e.this.f34295N.ah();
                }
                if (e.this.aw != null) {
                    e.this.aw.onVideoStart();
                }
                e.this.t();
                e.this.w();
                e.this.r();
            }
        });
        this.f34302U.getHolder().addCallback(new SurfaceHolder.Callback() { // from class: com.octopus.ad.internal.b.e.29
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
                if (e.this.f34302U == null || e.this.f34302U.isPlaying()) {
                    return;
                }
                if (e.this.ap > 0) {
                    e.this.f34302U.seekTo(e.this.ap);
                }
                e.this.f34302U.start();
                if (e.this.f34307Z != null) {
                    e.this.f34307Z.setVisibility(0);
                }
                if (e.this.aw != null) {
                    e.this.aw.onVideoReady();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            }
        });
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        TextureView textureView = this.f34303V;
        if (textureView == null) {
            return;
        }
        textureView.setSurfaceTextureListener(new TextureView.SurfaceTextureListener() { // from class: com.octopus.ad.internal.b.e.2
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(@NonNull SurfaceTexture surfaceTexture, int i2, int i3) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
                Surface surface = new Surface(surfaceTexture);
                e.this.f34306Y = new MediaPlayer();
                e.this.f34306Y.setSurface(surface);
                e.this.f34306Y.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.octopus.ad.internal.b.e.2.1
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public void onCompletion(MediaPlayer mediaPlayer) {
                        e.this.aj = true;
                        e.this.ap = 0;
                        if (e.this.f34295N != null) {
                            e.this.f34295N.aj();
                        }
                        if (e.this.aw != null) {
                            e.this.aw.onVideoCompleted();
                        }
                    }
                });
                e.this.f34306Y.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.octopus.ad.internal.b.e.2.2
                    @Override // android.media.MediaPlayer.OnErrorListener
                    public boolean onError(MediaPlayer mediaPlayer, int i4, int i5) {
                        if (e.this.aw == null) {
                            return true;
                        }
                        e.this.aw.onVideoError(i4, i5);
                        return true;
                    }
                });
                e.this.f34306Y.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.octopus.ad.internal.b.e.2.3
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public void onPrepared(MediaPlayer mediaPlayer) {
                        e.this.s();
                        if (e.this.f34295N != null && e.this.f34295N.A() && com.octopus.ad.internal.q.a().h()) {
                            e.this.al = true;
                            mediaPlayer.setVolume(0.0f, 0.0f);
                        } else {
                            e.this.al = false;
                            mediaPlayer.setVolume(1.0f, 1.0f);
                        }
                        if (e.this.f34307Z != null) {
                            e.this.f34307Z.setVisibility(8);
                        }
                        if (e.this.f34295N != null) {
                            e.this.f34295N.ah();
                        }
                        if (e.this.aw != null) {
                            e.this.aw.onVideoStart();
                        }
                        e.this.t();
                        e.this.w();
                        e.this.r();
                    }
                });
                e.this.d();
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(@NonNull SurfaceTexture surfaceTexture) {
                if (e.this.aa != null) {
                    e.this.aa.removeCallbacksAndMessages(null);
                    e.this.aa = null;
                }
                if (e.this.f34306Y != null) {
                    e.this.f34306Y.release();
                    e.this.f34306Y = null;
                }
                e.this.ab = null;
                return true;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(@NonNull SurfaceTexture surfaceTexture, int i2, int i3) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(@NonNull SurfaceTexture surfaceTexture) {
            }
        });
        this.aa = new Handler();
        this.ab = new Runnable() { // from class: com.octopus.ad.internal.b.e.3
            @Override // java.lang.Runnable
            public void run() {
                if (e.this.f34306Y == null || e.this.f34306Y.getDuration() <= 0) {
                    return;
                }
                int duration = e.this.f34306Y.getDuration();
                e eVar = e.this;
                eVar.ap = eVar.f34306Y.getCurrentPosition();
                if (!e.this.f34306Y.isPlaying()) {
                    if (e.this.ap <= 0 || e.this.aj || e.this.f34295N == null) {
                        return;
                    }
                    e.this.f34295N.ai();
                    return;
                }
                e.this.t();
                com.octopus.ad.d.b.f.a("OctopusAd", "currentPosition:" + e.this.ap + ServiceReference.DELIMITER + duration);
                int i2 = e.this.ap / 1000 == duration / TTAdConstant.INIT_LOCAL_FAIL_CODE ? 1 : e.this.ap / 1000 == duration / 2000 ? 2 : e.this.ap / 1000 == (duration * 3) / TTAdConstant.INIT_LOCAL_FAIL_CODE ? 3 : 0;
                if (i2 > 0 && e.this.f34295N != null) {
                    e.this.f34295N.c(i2);
                }
                com.octopus.ad.d.b.f.a("OctopusAd", "video progress:" + i2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        f fVar;
        if (this.aq == null || (fVar = this.f34295N) == null || fVar.m() != p.DRAW || this.aB != null) {
            return;
        }
        this.aB = com.octopus.ad.internal.g.a(this.aq, new NativeAdShownListener() { // from class: com.octopus.ad.internal.b.e.4
            @Override // com.octopus.ad.internal.nativead.NativeAdShownListener
            public void onAdShown(boolean z2) throws IllegalStateException {
                try {
                    if (!e.this.af) {
                        if (!z2) {
                            if (e.this.f34302U.isPlaying()) {
                                e.this.f34302U.pause();
                                return;
                            }
                            return;
                        } else {
                            if (e.this.f34329v || e.this.f34302U.isPlaying()) {
                                return;
                            }
                            e.this.f34302U.start();
                            return;
                        }
                    }
                    if (e.this.f34306Y != null) {
                        if (!z2) {
                            if (e.this.f34306Y.isPlaying()) {
                                e.this.f34306Y.pause();
                            }
                        } else {
                            if (e.this.f34329v || e.this.f34306Y.isPlaying()) {
                                return;
                            }
                            e.this.f34306Y.start();
                        }
                    }
                } catch (Exception e2) {
                    com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        Matrix matrixA;
        TextureView textureView = this.f34303V;
        if (textureView == null || this.f34306Y == null || (matrixA = new com.octopus.ad.c(new c.C0719c(textureView.getWidth(), this.f34303V.getHeight()), new c.C0719c(this.f34306Y.getVideoWidth(), this.f34306Y.getVideoHeight())).a(c.b.FIT_CENTER)) == null) {
            return;
        }
        this.f34303V.setTransform(matrixA);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        Handler handler = this.aa;
        if (handler == null || this.ab == null) {
            return;
        }
        handler.removeCallbacksAndMessages(null);
        this.aa.postDelayed(this.ab, 1000L);
    }

    private void u() {
        f fVar;
        c.p pVarK;
        if (this.aq == null || (fVar = this.f34295N) == null || this.f34299R != null || (pVarK = fVar.K()) == null) {
            return;
        }
        c.v vVarC = pVarK.c();
        this.f34299R = vVarC;
        if (vVarC == null || vVarC.a() != 1) {
            return;
        }
        b(this.aq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.octopus.ad.a.d v() {
        int screenWidth;
        float f2;
        int screenHeight;
        try {
            float f3 = 1.4f;
            if (this.f34326s || this.f34322o) {
                screenWidth = ViewUtil.getScreenWidth(com.octopus.ad.internal.q.a().l());
                f2 = screenWidth;
                int i2 = (int) (f2 / 1.4f);
                f fVar = this.f34295N;
                if (fVar == null) {
                    screenHeight = i2;
                } else if (fVar.m() == p.DRAW) {
                    screenHeight = ViewUtil.getScreenHeight(com.octopus.ad.internal.q.a().l());
                } else {
                    if (this.f34295N.m() == p.BANNER) {
                        f3 = 6.4f;
                        screenHeight = (int) (f2 / f3);
                    }
                    screenHeight = i2;
                }
            } else {
                ViewGroup viewGroup = this.aq;
                if (viewGroup != null) {
                    screenWidth = viewGroup.getWidth();
                    screenHeight = this.aq.getHeight();
                } else {
                    screenWidth = 0;
                    screenHeight = 0;
                }
                if (screenWidth == 0 || screenHeight == 0) {
                    screenWidth = ViewUtil.getScreenWidth(com.octopus.ad.internal.q.a().l());
                    f2 = screenWidth;
                    screenHeight = (int) (f2 / f3);
                }
            }
            int iA = i.a(screenWidth);
            int iA2 = i.a(screenHeight);
            int iA3 = i.a(150) + 50;
            com.octopus.ad.a.d dVar = new com.octopus.ad.a.d(1);
            dVar.a(iA);
            dVar.b(iA2);
            dVar.a(String.valueOf(System.currentTimeMillis()));
            dVar.d(String.valueOf(System.currentTimeMillis()));
            dVar.c(String.valueOf(System.currentTimeMillis() / 1000));
            dVar.c(iA);
            dVar.d(iA2);
            dVar.b(String.valueOf(System.currentTimeMillis() + iA3));
            dVar.e(screenWidth);
            dVar.f(screenHeight);
            return dVar;
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        f fVar;
        if (this.f34331x || this.ar == null || (fVar = this.f34295N) == null || fVar.m() != p.DRAW) {
            return;
        }
        this.f34331x = true;
        c.z zVarK = this.f34295N.k();
        if (zVarK == null || zVarK.a() != 1) {
            return;
        }
        this.f34305X = (LinearLayout) this.ar.findViewById(R.id.rl_auto);
        final TextView textView = (TextView) this.ar.findViewById(R.id.tv_auto);
        TextView textView2 = (TextView) this.ar.findViewById(R.id.tv_stop);
        this.f34305X.setVisibility(0);
        com.octopus.ad.b.a aVar = new com.octopus.ad.b.a(zVarK.b() * 1000, 50L);
        this.aH = aVar;
        aVar.a(new com.octopus.ad.b.b() { // from class: com.octopus.ad.internal.b.e.18
            @Override // com.octopus.ad.b.b
            public void a(long j2) {
                int i2 = (int) ((j2 / 1000) + 1);
                textView.setText(String.format(Locale.US, "%d秒后自动跳转详情页", Integer.valueOf(i2)));
                if (i2 <= 3) {
                    textView.setBackgroundResource(R.drawable.oct_bg_common_orange);
                }
            }

            @Override // com.octopus.ad.b.b
            public void b() {
            }

            @Override // com.octopus.ad.b.b
            public void a() {
                e.this.f34333z = 3;
                e.this.f34325r = true;
                e eVar = e.this;
                eVar.a(eVar.v());
                e.this.x();
            }
        });
        this.aH.a();
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.b.e.19
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.this.x();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        com.octopus.ad.b.a aVar = this.aH;
        if (aVar != null) {
            aVar.d();
        }
        LinearLayout linearLayout = this.f34305X;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        ArrayList<String> arrayList = this.f34291J;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            String str = arrayList.get(i2);
            i2++;
            String str2 = str;
            if (str2.contains("?rv=1")) {
                ViewUtil.openLocalBrowser(str2, 0);
            } else {
                if (str2.contains("track=oct")) {
                    if (this.f34322o) {
                        str2 = str2 + "&opt=10";
                    } else if (this.f34326s) {
                        str2 = str2 + "&opt=1";
                    }
                }
                new com.octopus.ad.internal.i(str2).b();
            }
        }
    }

    private void z() {
        f fVar = this.f34295N;
        if (fVar != null) {
            this.f34283B = fVar.T();
        }
        A();
        B();
        C();
        List<View> list = this.at;
        if (list == null || list.isEmpty()) {
            n();
        } else {
            for (View view : this.at) {
                if (view != null) {
                    view.setOnClickListener(this.ax);
                    view.setOnTouchListener(this.ay);
                }
            }
        }
        List<View> list2 = this.au;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        for (View view2 : this.au) {
            if (view2 != null) {
                view2.setOnClickListener(this.az);
            }
        }
    }

    @Override // com.octopus.ad.NativeAdResponse
    public void bindUnifiedView(ViewGroup viewGroup, List<View> list, List<View> list2, NativeAdEventListener nativeAdEventListener) {
        this.ai = true;
        this.aq = viewGroup;
        this.av = nativeAdEventListener;
        this.at = list;
        this.au = list2;
        k();
        f fVar = this.f34295N;
        if (fVar != null) {
            fVar.b();
        }
    }

    public void h() {
        c.x xVarL;
        c.q qVarC;
        f fVar = this.f34295N;
        if (fVar == null || (xVarL = fVar.L()) == null || (qVarC = xVarL.c()) == null) {
            return;
        }
        if (qVarC.a() == 1) {
            e(true);
            new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.b.e.15
                @Override // java.lang.Runnable
                public void run() {
                    e.this.y();
                }
            }, qVarC.c());
            if (qVarC.b() == 1) {
                this.f34325r = true;
                final boolean z2 = qVarC.e() == 1;
                if (z2) {
                    this.aI = new k.a() { // from class: com.octopus.ad.internal.b.e.16
                        @Override // com.octopus.ad.internal.k.a
                        public void a(String str) {
                            if ("AppBackground".equals(str)) {
                                e.this.f34327t = true;
                            }
                        }
                    };
                    k.a().a(this.aI);
                }
                new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.b.e.17
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!e.this.f34327t) {
                            e eVar = e.this;
                            eVar.a(eVar.v());
                        }
                        if (z2) {
                            k.a().b(e.this.aI);
                        }
                    }
                }, qVarC.d());
            }
        }
    }

    public boolean i() {
        return this.f34326s;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(boolean z2) {
        NativeAdEventListener nativeAdEventListener;
        f fVar;
        if (this.ae) {
            return;
        }
        this.ae = true;
        if (z2 && (fVar = this.f34295N) != null) {
            z2 = fVar.R();
        }
        if (z2 && (nativeAdEventListener = this.av) != null) {
            nativeAdEventListener.onADExposed();
        }
        f fVar2 = this.f34295N;
        if (fVar2 != null) {
            fVar2.a(this.ac, z2);
        }
        if (this.ac == null || !f().equals(this.ac.a())) {
            return;
        }
        com.octopus.ad.internal.q.a().f35022m.remove(this.ac.b());
    }

    public void d() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        String str = getVideoUrls().get(0);
        if (this.f34306Y == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            com.octopus.ad.internal.d.h hVarB = com.octopus.ad.internal.q.a().b();
            if (hVarB != null) {
                String strA = hVarB.a(str);
                if (hVarB.b(str)) {
                    str = strA;
                } else {
                    com.octopus.ad.internal.e.a.a(str, (u) null);
                }
            }
            this.f34306Y.setDataSource(str);
            this.f34306Y.prepare();
            this.f34306Y.start();
            VideoStateListener videoStateListener = this.aw;
            if (videoStateListener != null) {
                videoStateListener.onVideoReady();
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            NativeAdEventListener nativeAdEventListener = this.av;
            if (nativeAdEventListener != null) {
                nativeAdEventListener.onAdRenderFailed(80202);
            }
            f fVar = this.f34295N;
            if (fVar != null) {
                fVar.a(e2.getMessage());
            }
        }
    }

    public void e() {
        z();
        a(new NativeAdShownListener() { // from class: com.octopus.ad.internal.b.e.5
            @Override // com.octopus.ad.internal.nativead.NativeAdShownListener
            public void onAdShown(boolean z2) {
                e.this.g(z2);
            }
        });
    }

    public String f() {
        if (this.ad == null) {
            this.ad = "";
        }
        return this.ad;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0016  */
    @Override // com.octopus.ad.NativeAdResponse
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getComplianceView(android.content.Context r3, int r4) {
        /*
            r2 = this;
            com.octopus.ad.model.ComplianceInfo r0 = r2.aK
            if (r0 == 0) goto L20
            float r0 = com.octopus.ad.internal.utilities.ViewUtil.getScreenWidthDp(r3)
            r1 = 0
            int r1 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r1 <= 0) goto L16
            if (r4 <= 0) goto L16
            float r4 = (float) r4
            int r1 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r1 <= 0) goto L16
            float r4 = r4 / r0
            goto L18
        L16:
            r4 = 1065353216(0x3f800000, float:1.0)
        L18:
            com.octopus.ad.model.ComplianceInfo r0 = r2.aK
            r1 = 1
            androidx.appcompat.widget.AppCompatTextView r3 = com.octopus.ad.internal.utilities.ViewUtil.createComplianceView(r3, r0, r4, r1)
            return r3
        L20:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.octopus.ad.internal.b.e.getComplianceView(android.content.Context, int):android.view.View");
    }

    public void b(AdLogoInfo adLogoInfo) {
        this.f34294M = adLogoInfo;
    }

    public void c() {
        String str = getVideoUrls().get(0);
        if (this.f34302U == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            com.octopus.ad.internal.d.h hVarB = com.octopus.ad.internal.q.a().b();
            if (hVarB != null) {
                String strA = hVarB.a(str);
                if (hVarB.b(str)) {
                    this.f34302U.setVideoPath(strA);
                    return;
                } else {
                    com.octopus.ad.internal.e.a.a(str, (u) null);
                    this.f34302U.setVideoPath(str);
                    return;
                }
            }
            this.f34302U.setVideoPath(str);
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            NativeAdEventListener nativeAdEventListener = this.av;
            if (nativeAdEventListener != null) {
                nativeAdEventListener.onAdRenderFailed(80202);
            }
            f fVar = this.f34295N;
            if (fVar != null) {
                fVar.a(e2.getMessage());
            }
        }
    }

    public f b() {
        return this.f34295N;
    }

    public void e(boolean z2) {
        this.f34322o = z2;
    }

    private void b(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        if (this.f34300S == null) {
            l lVar = new l(viewGroup.getContext());
            this.f34300S = lVar;
            lVar.a(this.f34299R);
            this.f34300S.a(viewGroup);
            this.f34300S.a(new l.a() { // from class: com.octopus.ad.internal.b.e.6
                @Override // com.octopus.ad.d.l.a
                public void a(com.octopus.ad.a.d dVar) {
                    e.this.a(dVar);
                    if (e.this.aF != null) {
                        e.this.aF.onShakeTrigger(1, dVar.o(), dVar.p());
                    }
                }
            });
        }
        this.f34300S.b();
    }

    public void f(boolean z2) {
        f fVar = this.f34295N;
        if (fVar != null) {
            fVar.a(z2);
        }
    }

    public void b(boolean z2) {
        this.ah = z2;
    }

    private View b(Context context) {
        if (this.f34304W == null) {
            this.f34304W = new ImageView(context);
            ImageManager.with(context).getBitmap(getImageUrl(), new AnonymousClass8(context));
        }
        return this.f34304W;
    }

    public void g() {
        f fVar;
        c.x xVarL;
        c.q qVarC;
        if (this.f34326s || (fVar = this.f34295N) == null || (xVarL = fVar.L()) == null || (qVarC = xVarL.c()) == null) {
            return;
        }
        if (qVarC.a() == 1) {
            d(true);
            new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.b.e.11
                @Override // java.lang.Runnable
                public void run() {
                    e.this.y();
                }
            }, qVarC.c());
            if (qVarC.b() == 1) {
                this.f34325r = true;
                final boolean z2 = qVarC.e() == 1;
                if (z2) {
                    this.aI = new k.a() { // from class: com.octopus.ad.internal.b.e.13
                        @Override // com.octopus.ad.internal.k.a
                        public void a(String str) {
                            if ("AppBackground".equals(str)) {
                                e.this.f34327t = true;
                            }
                        }
                    };
                    k.a().a(this.aI);
                }
                new Handler().postDelayed(new Runnable() { // from class: com.octopus.ad.internal.b.e.14
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!e.this.f34327t) {
                            e eVar = e.this;
                            eVar.a(eVar.v());
                        }
                        if (z2) {
                            k.a().b(e.this.aI);
                        }
                    }
                }, qVarC.d());
            }
        }
    }

    public void a(Context context) {
        this.f34297P = context;
        if (context == null) {
            this.f34297P = com.octopus.ad.internal.q.a().l();
        }
    }

    public void a(AdLogoInfo adLogoInfo) {
        this.f34293L = adLogoInfo;
    }

    public void b(String str) {
        this.f34315h = str;
    }

    private void c(ViewGroup viewGroup) {
        View view;
        if (viewGroup == null || (view = this.f34301T) == null) {
            return;
        }
        ViewUtil.removeChildFromParent(view);
        if (viewGroup instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13, -1);
            viewGroup.addView(this.f34301T, layoutParams);
            return;
        }
        viewGroup.addView(this.f34301T);
    }

    public void a(int i2) {
        this.f34321n = i2;
    }

    public void b(int i2) {
        f fVar = this.f34295N;
        if (fVar != null) {
            fVar.b(i2);
        }
    }

    public int a() {
        return this.f34321n;
    }

    public void d(boolean z2) {
        this.f34326s = z2;
    }

    public static e a(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        ArrayList<String> arrayListA = com.octopus.ad.internal.c.k.a(com.octopus.ad.internal.c.k.a(jSONObject, "ImpressionTrackers"));
        e eVar = new e();
        if (arrayListA != null) {
            eVar.f34291J = arrayListA;
        }
        eVar.f34309b = com.octopus.ad.internal.c.k.c(jSONObject, "Headline");
        eVar.f34310c = com.octopus.ad.internal.c.k.c(jSONObject, "Body");
        eVar.f34311d = com.octopus.ad.internal.c.k.c(jSONObject, "Image");
        eVar.f34316i = com.octopus.ad.internal.c.k.c(jSONObject, "Cover");
        eVar.f34332y = com.octopus.ad.internal.c.k.d(jSONObject, "LayoutType");
        eVar.f34328u = com.octopus.ad.internal.c.k.g(jSONObject, "IsShowClose");
        JSONArray jSONArrayA = com.octopus.ad.internal.c.k.a(jSONObject, "Images");
        JSONArray jSONArrayA2 = com.octopus.ad.internal.c.k.a(jSONObject, "Videos");
        JSONArray jSONArrayA3 = com.octopus.ad.internal.c.k.a(jSONObject, "Texts");
        if (jSONArrayA != null) {
            for (int i2 = 0; i2 < jSONArrayA.length(); i2++) {
                eVar.f34288G.add((String) jSONArrayA.get(i2));
            }
        }
        if (jSONArrayA2 != null) {
            for (int i3 = 0; i3 < jSONArrayA2.length(); i3++) {
                eVar.f34289H.add((String) jSONArrayA2.get(i3));
            }
        }
        if (jSONArrayA3 != null) {
            for (int i4 = 0; i4 < jSONArrayA3.length(); i4++) {
                eVar.f34290I.add((String) jSONArrayA3.get(i4));
            }
        }
        if (jSONObject.has("AppIcon")) {
            eVar.f34308a = NativeAdResponse.b.APP_INSTALL;
            eVar.f34312e = com.octopus.ad.internal.c.k.c(jSONObject, "AppIcon");
            eVar.f34317j = com.octopus.ad.internal.c.k.c(jSONObject, "Action");
            eVar.f34318k = com.octopus.ad.internal.c.k.f(jSONObject, "Star");
            eVar.f34319l = com.octopus.ad.internal.c.k.c(jSONObject, "Store");
            eVar.f34320m = com.octopus.ad.internal.c.k.d(jSONObject, "Price");
        } else {
            eVar.f34308a = NativeAdResponse.b.CONTENT;
            eVar.f34312e = com.octopus.ad.internal.c.k.c(jSONObject, "Logo");
            eVar.f34317j = com.octopus.ad.internal.c.k.c(jSONObject, "Action");
            eVar.f34285D = com.octopus.ad.internal.c.k.c(jSONObject, "Advertiser");
        }
        ArrayList<String> arrayListA2 = com.octopus.ad.internal.c.k.a(com.octopus.ad.internal.c.k.a(jSONObject, "ClickTrackers"));
        if (arrayListA2 != null) {
            eVar.f34292K = arrayListA2;
        }
        eVar.f34286E = com.octopus.ad.internal.c.k.a(com.octopus.ad.internal.c.k.b(jSONObject, "Custom"));
        return eVar;
    }

    public void d(String str) {
        this.f34292K.add(str);
    }

    public void c(boolean z2) {
        this.af = z2;
    }

    public void c(String str) {
        this.f34291J.add(str);
    }

    private void a(int i2, float f2) {
        ViewGroup viewGroup = this.aq;
        if (viewGroup != null) {
            try {
                View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(i2, (ViewGroup) null);
                this.ar = viewInflate;
                if (this.an > 0) {
                    int i3 = this.an;
                    this.aq.addView(this.ar, new ViewGroup.LayoutParams(i3, (int) (i3 / f2)));
                } else {
                    this.aq.addView(viewInflate);
                }
                a(f2);
                return;
            } catch (Exception e2) {
                NativeAdEventListener nativeAdEventListener = this.av;
                if (nativeAdEventListener != null) {
                    nativeAdEventListener.onAdRenderFailed(80101);
                }
                f fVar = this.f34295N;
                if (fVar != null) {
                    fVar.a(e2.getMessage());
                    return;
                }
                return;
            }
        }
        NativeAdEventListener nativeAdEventListener2 = this.av;
        if (nativeAdEventListener2 != null) {
            nativeAdEventListener2.onAdRenderFailed(80101);
        }
        f fVar2 = this.f34295N;
        if (fVar2 != null) {
            fVar2.a("AdContainer is null");
        }
    }

    private void a(final float f2) throws NoSuchAlgorithmException {
        View view;
        if (this.aq == null || (view = this.ar) == null) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.fl_container);
        ImageView imageView = (ImageView) this.ar.findViewById(R.id.ad_image);
        TextView textView = (TextView) this.ar.findViewById(R.id.ad_feedback);
        FrameLayout frameLayout2 = (FrameLayout) this.ar.findViewById(R.id.ad_compliance);
        ImageView imageView2 = (ImageView) this.ar.findViewById(R.id.ad_logo);
        ImageView imageView3 = (ImageView) this.ar.findViewById(R.id.ad_logo_text);
        ImageView imageView4 = (ImageView) this.ar.findViewById(R.id.ad_close);
        TextView textView2 = (TextView) this.ar.findViewById(R.id.ad_title);
        TextView textView3 = (TextView) this.ar.findViewById(R.id.ad_action);
        this.f34302U = (VideoView) this.ar.findViewById(R.id.ad_video);
        this.f34303V = (TextureView) this.ar.findViewById(R.id.ad_texture);
        this.f34307Z = (ProgressBar) this.ar.findViewById(R.id.ad_loading);
        if (!TextUtils.isEmpty(getTitle())) {
            textView2.setText(getTitle());
        }
        if (!TextUtils.isEmpty(getButtonText())) {
            textView3.setText(getButtonText());
        }
        if (!TextUtils.isEmpty(getLogoUrl()) && getLogoUrl().endsWith("octlogo.png")) {
            imageView2.setImageResource(R.drawable.oct_logo);
        } else {
            ImageManager.with(null).load(getLogoUrl()).into(imageView2);
        }
        if (!TextUtils.isEmpty(getTextLogoUrl()) && getTextLogoUrl().endsWith("remdad.png")) {
            imageView3.setImageResource(R.drawable.oct_logo_text);
        } else {
            ImageManager.with(null).load(getTextLogoUrl()).into(imageView3);
        }
        this.at = new ArrayList();
        if (this.f34328u) {
            imageView4.setVisibility(0);
            ArrayList arrayList = new ArrayList();
            this.au = arrayList;
            arrayList.add(imageView4);
        } else {
            imageView4.setVisibility(8);
        }
        if (this.an == 0) {
            this.am = true;
        }
        if (this.am) {
            this.aq.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.octopus.ad.internal.b.e.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    try {
                        if (e.this.aq != null) {
                            e.this.aq.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                            int width = e.this.aq.getWidth();
                            if (width <= 0 || width == e.this.an) {
                                return;
                            }
                            e.this.ar.getLayoutParams().width = width;
                            e.this.ar.getLayoutParams().height = (int) (width / f2);
                        }
                    } catch (Exception e2) {
                        com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
                    }
                }
            });
        }
        this.aq.post(new AnonymousClass12(f2, imageView2, imageView3, textView2, imageView4, textView3, textView, frameLayout, imageView, frameLayout2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        c.p pVarK;
        c.s sVarB;
        f fVar = this.f34295N;
        if (fVar == null || fVar.m() != p.DRAW || (pVarK = this.f34295N.K()) == null || (sVarB = pVarK.b()) == null || sVarB.a() != 1) {
            return;
        }
        a(view, sVarB.b());
    }

    private void a(View view, String str) {
        View view2;
        try {
            if (this.aq != null && (view2 = this.ar) != null) {
                RegionClickView regionClickView = (RegionClickView) view2.findViewById(R.id.regionClickView);
                if (TextUtils.isEmpty(str)) {
                    str = "点击跳转至第三方应用或详情页";
                }
                regionClickView.setTitle(str);
                regionClickView.setVisibility(0);
                this.at.add(view);
                this.at.add(regionClickView);
                o();
            }
        } catch (Exception e2) {
            com.octopus.ad.d.b.f.d("OctopusAd", "An Exception Caught: " + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FrameLayout frameLayout) {
        AppCompatTextView appCompatTextView;
        if (frameLayout == null || (appCompatTextView = this.f34298Q) == null) {
            return;
        }
        ViewUtil.removeChildFromParent(appCompatTextView);
        frameLayout.addView(this.f34298Q, new FrameLayout.LayoutParams(-1, -2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ViewGroup viewGroup) {
        c.v vVar;
        if (viewGroup == null || (vVar = this.f34299R) == null || vVar.a() != 1) {
            return;
        }
        int i2 = this.f34332y;
        if (i2 != 3 && i2 != 4) {
            addShakeView(viewGroup, 100, 10.0f);
        } else {
            addShakeView(viewGroup, com.bykv.vk.component.ttvideo.player.MediaPlayer.MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE, 13.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ArrayList<View> arrayList, final float f2) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            View view = arrayList.get(i2);
            i2++;
            final View view2 = view;
            if (view2 == null) {
                return;
            }
            if (view2 instanceof TextView) {
                TextView textView = (TextView) view2;
                textView.setTextSize(0, textView.getTextSize() * f2);
            } else {
                view2.post(new Runnable() { // from class: com.octopus.ad.internal.b.e.24
                    @Override // java.lang.Runnable
                    public void run() {
                        ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                        if (layoutParams != null) {
                            layoutParams.width = (int) (view2.getWidth() * f2);
                            layoutParams.height = (int) (view2.getHeight() * f2);
                            view2.setLayoutParams(layoutParams);
                        }
                    }
                });
            }
        }
    }

    public void a(boolean z2) {
        this.ag = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ViewGroup viewGroup, int i2, float f2) {
        ViewGroup viewGroup2;
        if (viewGroup != null) {
            try {
                c.v vVar = this.f34299R;
                if (vVar == null) {
                    return;
                }
                if (TextUtils.isEmpty(vVar.e())) {
                    if (this.f34299R.h() == 0) {
                        this.f34299R.a("摇动或点击了解更多");
                    } else {
                        this.f34299R.a("转动或点击了解更多");
                    }
                }
                if (this.f34300S == null) {
                    b(viewGroup);
                }
                this.f34300S.a("50%", "50%", i2 + "", i2 + "");
                if (this.f34295N != null) {
                    viewGroup2 = viewGroup;
                    this.f34301T = this.f34300S.a(this.aq, viewGroup2, f2, this.f34299R.e(), this.f34295N.m(), this.ak);
                } else {
                    viewGroup2 = viewGroup;
                }
                if (this.f34301T != null) {
                    if (this.f34299R.b() == 1) {
                        this.f34333z = 7;
                    }
                    if (this.f34299R.g() == 1) {
                        c(viewGroup2);
                    }
                    if (this.f34299R.i() == 1) {
                        this.f34301T.setOnClickListener(this.ax);
                        this.f34301T.setOnTouchListener(this.ay);
                    } else {
                        this.f34301T.setOnClickListener(null);
                    }
                }
            } catch (Exception e2) {
                com.octopus.ad.d.b.f.a("OctopusAd", "An Exception Caught", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.octopus.ad.a.d dVar) {
        if (this.ae || this.f34322o || this.f34326s) {
            boolean z2 = false;
            if (System.currentTimeMillis() - l.f34052a > 2000) {
                this.f34324q = true;
                x();
                c cVar = this.f34296O;
                boolean z3 = cVar != null && cVar.h();
                NativeAdEventListener nativeAdEventListener = this.av;
                if (nativeAdEventListener != null && z3) {
                    Boolean bool = Boolean.TRUE;
                    Boolean bool2 = this.f34282A;
                    if (bool == bool2 || (Boolean.FALSE != bool2 && !this.f34325r && !this.f34283B && !this.f34284C)) {
                        z2 = true;
                    }
                }
                if (z2) {
                    nativeAdEventListener.onAdClick();
                }
                f fVar = this.f34295N;
                if (fVar != null) {
                    if (z2) {
                        fVar.a(this.aG);
                    }
                    this.f34295N.b(z2);
                    int i2 = this.ao + 1;
                    this.ao = i2;
                    this.f34295N.a(this.f34297P, this.f34333z, this.f34322o, this.f34326s, z3, dVar, i2);
                }
                l.f34052a = System.currentTimeMillis();
                return;
            }
            this.f34325r = false;
            this.f34333z = 0;
        }
    }

    private void a(final NativeAdShownListener nativeAdShownListener) {
        if (this.f34287F || this.aq == null) {
            return;
        }
        y yVar = this.aA;
        if (yVar != null) {
            yVar.d();
        }
        Object tag = this.aq.getTag(55665918);
        if (tag instanceof y) {
            ((y) tag).d();
        }
        y yVarA = y.a(this.aq);
        this.aA = yVarA;
        this.aq.setTag(55665918, yVarA);
        if (this.aA == null) {
            return;
        }
        if (this.f34296O != null) {
            this.aC = com.octopus.ad.internal.h.a(this.aq, (NativeAdShownListener) null);
            this.aD = new ArrayList<>();
            ArrayList<String> arrayList = this.f34291J;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                String str = arrayList.get(i2);
                i2++;
                String str2 = str;
                if (str2.contains("?rv=1")) {
                    ViewUtil.openLocalBrowser(str2, 0);
                } else {
                    if (str2.contains("track=oct")) {
                        if (!this.f34296O.h()) {
                            str2 = str2 + "&opt=4";
                        } else {
                            f fVar = this.f34295N;
                            if (fVar != null && !fVar.R()) {
                                str2 = str2 + "&opt=11";
                            }
                        }
                    }
                    String str3 = str2;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    com.octopus.ad.internal.d dVarJ = this.f34296O.j();
                    if (dVarJ != null) {
                        jCurrentTimeMillis = dVarJ.h();
                    }
                    long j2 = jCurrentTimeMillis;
                    f fVar2 = this.f34295N;
                    n nVarA = n.a(be.f48800c, this.f34296O.d(), f(), j2, str3, this.aA, this.aq.getContext(), fVar2 != null ? fVar2.ao() : null);
                    if (nVarA != null && str3.contains("track=octimp")) {
                        nVarA.a(new d.a() { // from class: com.octopus.ad.internal.b.e.9
                            @Override // com.octopus.ad.internal.c.d.a
                            public void a(int i3, boolean z2, String str4) {
                                if (nativeAdShownListener != null) {
                                    if (z2 && e.this.f34296O != null) {
                                        z2 = e.this.f34296O.h();
                                    }
                                    nativeAdShownListener.onAdShown(z2);
                                }
                            }
                        });
                    }
                    if (nVarA != null) {
                        this.aD.add(nVarA);
                    }
                }
            }
        } else {
            this.ae = true;
        }
        this.as = this.aq;
        f fVar3 = this.f34295N;
        if (fVar3 == null || this.f34330w) {
            return;
        }
        this.f34330w = true;
        com.octopus.ad.internal.e.a.a(fVar3, new a.c() { // from class: com.octopus.ad.internal.b.e.10
            @Override // com.octopus.ad.internal.e.a.c
            public void a() {
                if (e.this.f34323p || e.this.f34324q || e.this.as == null || e.this.f34295N == null) {
                    return;
                }
                if (com.octopus.ad.internal.e.a.a(e.this.f34295N)) {
                    e.this.f34325r = false;
                    e.this.f34333z = 0;
                } else {
                    e.this.f34325r = true;
                    e.this.f34333z = 9;
                }
                e eVar = e.this;
                eVar.a(eVar.v());
            }
        });
        this.f34282A = this.f34295N.S();
    }

    public void a(f fVar) {
        this.f34295N = fVar;
    }

    public void a(String str) {
        this.ad = str;
    }

    public void a(c cVar) {
        this.f34296O = cVar;
    }

    public void a(long j2, long j3) {
        c.l lVarJ;
        if (this.f34295N == null || !com.octopus.ad.internal.q.a().f() || (lVarJ = this.f34295N.j()) == null || TextUtils.isEmpty(lVarJ.c())) {
            return;
        }
        com.octopus.ad.internal.q.a().a(this.f34295N.ag());
        if (lVarJ.b() == 1) {
            this.ac = com.octopus.ad.internal.q.a().f35022m.get(lVarJ.c());
        }
        com.octopus.ad.a.a aVar = this.ac;
        if (aVar == null || !aVar.j() || this.ac.f() < getPrice()) {
            com.octopus.ad.a.a aVar2 = new com.octopus.ad.a.a();
            this.ac = aVar2;
            aVar2.a(getPrice());
            this.ac.a(j2);
            this.ac.b(j3);
            this.ac.a(f());
            this.ac.b(lVarJ.a());
            this.ac.b(lVarJ.c());
            this.ac.c(lVarJ.d());
            this.ac.a(this.f34295N.V());
            this.ac.e(this.f34295N.Z());
            if (this.f34295N.a() != null) {
                this.ac.d(this.f34295N.Y());
                this.ac.a(this.f34295N.a().v());
            }
            com.octopus.ad.internal.q.a().f35022m.put(lVarJ.c(), this.ac);
        }
    }

    public void a(c.b bVar) {
        this.aJ = bVar;
        if (bVar != null) {
            this.aK = bVar.i();
        }
    }

    public void a(int i2, String str, String str2) {
        List<c.i> listV;
        c.b bVar = this.aJ;
        if (bVar == null || (listV = bVar.v()) == null) {
            return;
        }
        for (int i3 = 0; i3 < listV.size(); i3++) {
            c.i iVar = listV.get(i3);
            if (iVar != null && !TextUtils.isEmpty(iVar.e())) {
                new com.octopus.ad.internal.i(q.a(iVar.e(), i2, str, str2)).b();
            }
        }
    }
}
