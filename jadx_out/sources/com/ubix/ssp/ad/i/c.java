package com.ubix.ssp.ad.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.constants.ErrorCode;
import com.sigmob.sdk.base.models.SigMacroCommon;
import com.ubix.ssp.ad.a;
import com.ubix.ssp.ad.e.a0.o;
import com.ubix.ssp.ad.e.a0.s;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.a0.v;
import com.ubix.ssp.ad.e.a0.x;
import com.ubix.ssp.ad.e.y.a.a;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.ParamsReview;
import com.ubix.ssp.open.nativee.NativeAd;
import com.ubix.ssp.open.nativee.UBiXImage;
import com.ubix.ssp.open.nativee.UBiXNativeInteractionListener;
import com.ubix.ssp.open.nativee.UBiXNativeVideoListener;
import com.ubix.ssp.open.nativee.express.UBiXNativeExpressInteractionListener;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public class c extends com.ubix.ssp.ad.a {

    /* renamed from: C, reason: collision with root package name */
    static ConcurrentHashMap<String, Integer> f48109C = new ConcurrentHashMap<>();

    /* renamed from: D, reason: collision with root package name */
    static ConcurrentHashMap<Integer, List<View.OnAttachStateChangeListener>> f48110D = new ConcurrentHashMap<>();

    /* renamed from: E, reason: collision with root package name */
    private SoftReference<Context> f48111E;

    /* renamed from: F, reason: collision with root package name */
    private com.ubix.ssp.ad.g.g f48112F;

    /* renamed from: G, reason: collision with root package name */
    private ConcurrentHashMap<Integer, HashMap<String, Object>> f48113G;

    /* renamed from: H, reason: collision with root package name */
    private boolean f48114H;

    public class a implements View.OnAttachStateChangeListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f48115a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f48116b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ float f48117c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ UBiXNativeInteractionListener f48118d;

        public a(ViewGroup viewGroup, com.ubix.ssp.ad.d.a aVar, float f2, UBiXNativeInteractionListener uBiXNativeInteractionListener) {
            this.f48115a = viewGroup;
            this.f48116b = aVar;
            this.f48117c = f2;
            this.f48118d = uBiXNativeInteractionListener;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) throws Throwable {
            try {
                this.f48115a.removeOnAttachStateChangeListener(this);
                c.this.a(this.f48116b, this.f48115a, this.f48117c, this.f48118d);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public class b implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f48120a;

        public b(com.ubix.ssp.ad.d.a aVar) {
            this.f48120a = aVar;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            HashMap map = new HashMap();
            HashMap map2 = (HashMap) c.this.f48113G.get(Integer.valueOf(this.f48120a.hashCode()));
            if (map2 == null) {
                c.this.f48113G.put(Integer.valueOf(this.f48120a.hashCode()), new HashMap());
            } else if (map2.get("native_click_map_key") != null && (map = (HashMap) map2.get("native_click_map_key")) != null) {
                map.put("__CLICK_AREA__", "1");
                map.put("__CLICK_TRIGGER__", "1");
            }
            c.this.a((HashMap<String, String>) map, view, motionEvent);
            c.this.a(this.f48120a.hashCode(), "native_click_map_key", map);
            if (motionEvent.getAction() == 1) {
                view.performClick();
            }
            return true;
        }
    }

    /* renamed from: com.ubix.ssp.ad.i.c$c, reason: collision with other inner class name */
    public class ViewOnClickListenerC0844c implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f48122a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ UBiXNativeInteractionListener f48123b;

        public ViewOnClickListenerC0844c(com.ubix.ssp.ad.d.a aVar, UBiXNativeInteractionListener uBiXNativeInteractionListener) {
            this.f48122a = aVar;
            this.f48123b = uBiXNativeInteractionListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                HashMap map = new HashMap();
                HashMap map2 = (HashMap) c.this.f48113G.get(Integer.valueOf(this.f48122a.hashCode()));
                if (map2 != null) {
                    if (map2.get("native_click_map_key") != null && (map = (HashMap) map2.get("native_click_map_key")) != null) {
                        map.put("__CLICK_AREA__", "1");
                        map.put("__CLICK_TRIGGER__", "1");
                    }
                    HashMap map3 = map;
                    u.a("shouldClick");
                    Object obj = ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48122a.hashCode()))).get("native_custom_confirm_window_listener_key");
                    c.this.a(this.f48122a, view, (HashMap<String, String>) map3, this.f48123b, obj == null ? null : (com.ubix.ssp.ad.g.c) obj);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class d implements View.OnClickListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UBiXNativeInteractionListener f48125a;

        public d(UBiXNativeInteractionListener uBiXNativeInteractionListener) {
            this.f48125a = uBiXNativeInteractionListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            u.e("onAdClicked in");
            UBiXNativeInteractionListener uBiXNativeInteractionListener = this.f48125a;
            if (uBiXNativeInteractionListener != null) {
                uBiXNativeInteractionListener.onAdClosed();
            }
            u.e("onAdClicked out");
        }
    }

    public class e implements View.OnAttachStateChangeListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f48127a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f48128b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ UBiXNativeInteractionListener f48129c;

        public e(ViewGroup viewGroup, com.ubix.ssp.ad.d.a aVar, UBiXNativeInteractionListener uBiXNativeInteractionListener) {
            this.f48127a = viewGroup;
            this.f48128b = aVar;
            this.f48129c = uBiXNativeInteractionListener;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            try {
                this.f48127a.removeOnAttachStateChangeListener(this);
                c.this.a(this.f48127a, this.f48128b, this.f48129c, (UBiXNativeExpressInteractionListener) null);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public class f implements a.y {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f48131a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f48132b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f48133c;

        public f(int i2, View view, com.ubix.ssp.ad.d.a aVar) {
            this.f48131a = i2;
            this.f48132b = view;
            this.f48133c = aVar;
        }

        @Override // com.ubix.ssp.ad.a.y
        public void a() {
        }

        @Override // com.ubix.ssp.ad.a.y
        public boolean a(boolean z2) {
            if (!z2) {
                return true;
            }
            int i2 = this.f48131a;
            if (i2 == 44) {
                com.ubix.ssp.ad.e.s.b.c().a(this.f48132b.getContext(), this.f48133c.f45773o);
                return false;
            }
            if (i2 != 45) {
                return true;
            }
            com.ubix.ssp.ad.e.s.b.c().b(this.f48132b.getContext(), this.f48133c.f45773o);
            return false;
        }
    }

    public class g extends BroadcastReceiver {
        public g() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            c.this.f48114H = false;
            com.ubix.ssp.ad.e.a0.m.a(((com.ubix.ssp.ad.a) c.this).f45539c).a(this);
            u.e("install result onReceived " + intent);
            try {
                for (com.ubix.ssp.ad.d.a aVar : ((com.ubix.ssp.ad.a) c.this).f45541e) {
                    if (aVar.f45773o == intent.getIntExtra("service_intent_notify_id", -1)) {
                        aVar.f45779u = intent.getStringExtra("service_intent_pkg_extra");
                        UBiXNativeInteractionListener uBiXNativeInteractionListener = (UBiXNativeInteractionListener) ((HashMap) c.this.f48113G.get(Integer.valueOf(aVar.hashCode()))).get("interaction_listener_key");
                        if (uBiXNativeInteractionListener != null) {
                            uBiXNativeInteractionListener.onAdStatusChanged();
                            return;
                        }
                        return;
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class h extends com.ubix.ssp.ad.g.k.g {

        /* renamed from: a, reason: collision with root package name */
        private int f48136a = 0;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f48137b;

        public h(com.ubix.ssp.ad.d.a aVar) {
            this.f48137b = aVar;
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void a(int i2, long j2, long j3) {
            c cVar;
            com.ubix.ssp.ad.d.a aVar;
            int i3;
            if (j3 > 0) {
                int i4 = (int) ((100 * j2) / (j3 == 0 ? 1L : j3));
                int i5 = this.f48136a;
                if (i4 >= i5 * 25) {
                    if (i5 == 0) {
                        cVar = c.this;
                        aVar = this.f48137b;
                        i3 = 5000;
                    } else if (i5 == 1) {
                        cVar = c.this;
                        aVar = this.f48137b;
                        i3 = ErrorCode.NO_AD_FILL_FOR_LIST_EMPTY;
                    } else if (i5 == 2) {
                        cVar = c.this;
                        aVar = this.f48137b;
                        i3 = 5050;
                    } else {
                        if (i5 == 3) {
                            cVar = c.this;
                            aVar = this.f48137b;
                            i3 = 5075;
                        }
                        this.f48136a++;
                    }
                    cVar.a(aVar, i3);
                    this.f48136a++;
                }
            }
            UBiXNativeVideoListener uBiXNativeVideoListener = (UBiXNativeVideoListener) ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48137b.hashCode()))).get("video_listener_key");
            if (uBiXNativeVideoListener != null) {
                uBiXNativeVideoListener.onVideoProgressUpdate(j2, j3);
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g, com.ubix.ssp.ad.g.k.b
        public void b(int i2, View view, HashMap<String, String> map) {
            UBiXNativeInteractionListener uBiXNativeInteractionListener = (UBiXNativeInteractionListener) ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48137b.hashCode()))).get("interaction_listener_key");
            if (map != null) {
                map.put("__CLICK_AREA__", "1");
                map.put("__CLICK_TRIGGER__", "1");
            }
            Object obj = ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48137b.hashCode()))).get("native_custom_confirm_window_listener_key");
            c.this.a(this.f48137b, view, map, uBiXNativeInteractionListener, obj == null ? null : (com.ubix.ssp.ad.g.c) obj);
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void c(int i2) {
            c.this.a(this.f48137b, 5100);
            c.this.a(this.f48137b, 5200);
            UBiXNativeVideoListener uBiXNativeVideoListener = (UBiXNativeVideoListener) ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48137b.hashCode()))).get("video_listener_key");
            if (uBiXNativeVideoListener != null) {
                uBiXNativeVideoListener.onVideoComplete();
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void g(int i2) {
            try {
                HashMap map = (HashMap) c.this.f48113G.get(Integer.valueOf(this.f48137b.hashCode()));
                Boolean bool = Boolean.FALSE;
                map.put("lst_str", bool);
                ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48137b.hashCode()))).put("lst_res", bool);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            UBiXNativeVideoListener uBiXNativeVideoListener = (UBiXNativeVideoListener) ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48137b.hashCode()))).get("video_listener_key");
            if (uBiXNativeVideoListener != null) {
                uBiXNativeVideoListener.onVideoPause();
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void h(int i2) {
            boolean z2;
            Object obj;
            try {
                obj = ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48137b.hashCode()))).get("lst_str");
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (obj != null) {
                z2 = Boolean.parseBoolean(obj + "");
            } else {
                z2 = false;
            }
            if (z2) {
                return;
            }
            ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48137b.hashCode()))).put("lst_str", Boolean.TRUE);
            UBiXNativeVideoListener uBiXNativeVideoListener = (UBiXNativeVideoListener) ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48137b.hashCode()))).get("video_listener_key");
            if (uBiXNativeVideoListener != null) {
                uBiXNativeVideoListener.onVideoStart();
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void j(int i2) {
            boolean z2;
            Object obj;
            try {
                obj = ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48137b.hashCode()))).get("lst_res");
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (obj != null) {
                z2 = Boolean.parseBoolean(obj + "");
            } else {
                z2 = false;
            }
            if (z2) {
                return;
            }
            ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48137b.hashCode()))).put("lst_res", Boolean.TRUE);
            UBiXNativeVideoListener uBiXNativeVideoListener = (UBiXNativeVideoListener) ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48137b.hashCode()))).get("video_listener_key");
            if (uBiXNativeVideoListener != null) {
                uBiXNativeVideoListener.onVideoResume();
            }
        }

        @Override // com.ubix.ssp.ad.g.k.g
        public void a(int i2, AdError adError) {
            UBiXNativeVideoListener uBiXNativeVideoListener = (UBiXNativeVideoListener) ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48137b.hashCode()))).get("video_listener_key");
            c.this.a(this.f48137b, 5200);
            if (uBiXNativeVideoListener != null) {
                uBiXNativeVideoListener.onVideoError(adError);
            }
        }
    }

    public class i implements com.ubix.ssp.ad.g.k.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ UBiXNativeExpressInteractionListener f48139a;

        public i(UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener) {
            this.f48139a = uBiXNativeExpressInteractionListener;
        }

        @Override // com.ubix.ssp.ad.g.k.c
        public void a() {
        }

        @Override // com.ubix.ssp.ad.g.k.c
        public void a(String str) {
            u.e("onAdClosed in");
            UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener = this.f48139a;
            if (uBiXNativeExpressInteractionListener != null) {
                uBiXNativeExpressInteractionListener.onAdClosed();
            }
            u.e("onAdClosed out");
        }
    }

    public class j implements s.e {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f48141a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f48142b;

        public j(Object obj, com.ubix.ssp.ad.d.a aVar) {
            this.f48141a = obj;
            this.f48142b = aVar;
        }

        @Override // com.ubix.ssp.ad.e.a0.s.e
        public void a(float f2, float f3) {
            try {
                if (((ViewGroup) this.f48141a).isShown()) {
                    if (com.ubix.ssp.ad.e.a0.y.c.a((View) this.f48141a, 0.75f, false, (List<Integer>) null) || com.ubix.ssp.ad.e.a0.y.c.a((ViewGroup) this.f48141a)) {
                        return;
                    }
                    HashMap map = new HashMap();
                    HashMap map2 = (HashMap) c.this.f48113G.get(Integer.valueOf(this.f48142b.hashCode()));
                    if (map2 != null && map2.get("native_click_map_key") != null) {
                        map = (HashMap) map2.get("native_click_map_key");
                    }
                    HashMap map3 = map;
                    map3.put("__TRI_VAL__", Base64.encodeToString((f2 + "").getBytes(), 10));
                    map3.put("__CLICK_AREA__", "3");
                    map3.put("__CLICK_TRIGGER__", "3");
                    Object obj = ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48142b.hashCode()))).get("native_custom_confirm_window_listener_key");
                    c.this.a(this.f48142b, (ViewGroup) this.f48141a, (HashMap<String, String>) map3, (UBiXNativeInteractionListener) map2.get("interaction_listener_key"), obj != null ? (com.ubix.ssp.ad.g.c) obj : null);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.s.e
        public void a(Bundle bundle) {
            try {
                if (!((ViewGroup) this.f48141a).isShown() || com.ubix.ssp.ad.e.a0.y.c.a((View) this.f48141a, 0.75f, false, (List<Integer>) null) || com.ubix.ssp.ad.e.a0.y.c.a((ViewGroup) this.f48141a)) {
                    return;
                }
                HashMap map = new HashMap();
                HashMap map2 = (HashMap) c.this.f48113G.get(Integer.valueOf(this.f48142b.hashCode()));
                if (map2 != null && map2.get("native_click_map_key") != null) {
                    map = (HashMap) map2.get("native_click_map_key");
                }
                if (bundle.getInt("__SENSOR_INFO_TYPE__") == 1) {
                    map.put("__X_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__X_MAX_ACC__"))));
                    map.put("__Y_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__Y_MAX_ACC__"))));
                    map.put("__Z_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__Z_MAX_ACC__"))));
                    map.put("__TURN_X__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_X__"))));
                    map.put("__TURN_Y__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_Y__"))));
                    map.put("__TURN_Z__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_Z__"))));
                    map.put("__UBIX_TURN_TARGET__", bundle.getInt("__UBIX_TURN_TARGET__") + "");
                    map.put("__TURN_TIME__", bundle.getLong("__TURN_TIME__") + "");
                }
                c.this.a(bundle);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class k implements View.OnAttachStateChangeListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f48144a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f48145b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f48146c;

        public class a implements s.e {
            public a() {
            }

            @Override // com.ubix.ssp.ad.e.a0.s.e
            public void a(float f2, float f3) {
                try {
                    if (((ViewGroup) k.this.f48145b).isShown()) {
                        if (com.ubix.ssp.ad.e.a0.y.c.a((View) k.this.f48145b, 0.75f, false, (List<Integer>) null) || com.ubix.ssp.ad.e.a0.y.c.a((ViewGroup) k.this.f48145b)) {
                            return;
                        }
                        HashMap map = new HashMap();
                        HashMap map2 = (HashMap) c.this.f48113G.get(Integer.valueOf(k.this.f48146c.hashCode()));
                        if (map2 != null && map2.get("native_click_map_key") != null) {
                            map = (HashMap) map2.get("native_click_map_key");
                        }
                        HashMap map3 = map;
                        map3.put("__TRI_VAL__", Base64.encodeToString((f2 + "").getBytes(), 10));
                        map3.put("__CLICK_AREA__", "3");
                        map3.put("__CLICK_TRIGGER__", "3");
                        Object obj = ((HashMap) c.this.f48113G.get(Integer.valueOf(k.this.f48146c.hashCode()))).get("native_custom_confirm_window_listener_key");
                        k kVar = k.this;
                        c.this.a(kVar.f48146c, (ViewGroup) kVar.f48145b, (HashMap<String, String>) map3, (UBiXNativeInteractionListener) map2.get("interaction_listener_key"), obj != null ? (com.ubix.ssp.ad.g.c) obj : null);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }

            @Override // com.ubix.ssp.ad.e.a0.s.e
            public void a(Bundle bundle) {
                try {
                    if (!((ViewGroup) k.this.f48145b).isShown() || com.ubix.ssp.ad.e.a0.y.c.a((View) k.this.f48145b, 0.75f, false, (List<Integer>) null) || com.ubix.ssp.ad.e.a0.y.c.a((ViewGroup) k.this.f48145b)) {
                        return;
                    }
                    HashMap map = new HashMap();
                    HashMap map2 = (HashMap) c.this.f48113G.get(Integer.valueOf(k.this.f48146c.hashCode()));
                    if (map2 != null && map2.get("native_click_map_key") != null) {
                        map = (HashMap) map2.get("native_click_map_key");
                    }
                    if (bundle.getInt("__SENSOR_INFO_TYPE__") == 1) {
                        map.put("__X_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__X_MAX_ACC__"))));
                        map.put("__Y_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__Y_MAX_ACC__"))));
                        map.put("__Z_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__Z_MAX_ACC__"))));
                        map.put("__TURN_X__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_X__"))));
                        map.put("__TURN_Y__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_Y__"))));
                        map.put("__TURN_Z__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_Z__"))));
                        map.put("__UBIX_TURN_TARGET__", bundle.getInt("__UBIX_TURN_TARGET__") + "");
                        map.put("__TURN_TIME__", bundle.getLong("__TURN_TIME__") + "");
                    }
                    c.this.a(bundle);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }

        public k(Object obj, Object obj2, com.ubix.ssp.ad.d.a aVar) {
            this.f48144a = obj;
            this.f48145b = obj2;
            this.f48146c = aVar;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            Object obj = this.f48144a;
            if (obj != null) {
                ((s) obj).a(new a());
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ((ViewGroup) this.f48145b).removeOnAttachStateChangeListener(this);
            ((s) this.f48144a).f();
            ((s) this.f48144a).a();
        }
    }

    public class l extends FrameLayout {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f48149a;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                int height = (l.this.f48149a.getMeasuredHeight() - l.this.f48149a.getPaddingTop()) - l.this.f48149a.getPaddingTop() <= 0 ? l.this.f48149a.getHeight() : (l.this.f48149a.getMeasuredHeight() - l.this.f48149a.getPaddingTop()) - l.this.f48149a.getPaddingTop();
                l.this.getLayoutParams().width = (l.this.f48149a.getMeasuredWidth() - l.this.f48149a.getPaddingLeft()) - l.this.f48149a.getPaddingRight();
                l.this.getLayoutParams().height = height;
                l.this.setVisibility(0);
                u.e("11111onConfigurationChanged in" + l.this.getVisibility());
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                int height = (l.this.f48149a.getMeasuredHeight() - l.this.f48149a.getPaddingTop()) - l.this.f48149a.getPaddingTop() <= 0 ? l.this.f48149a.getHeight() : (l.this.f48149a.getMeasuredHeight() - l.this.f48149a.getPaddingTop()) - l.this.f48149a.getPaddingTop();
                l.this.getLayoutParams().width = (l.this.f48149a.getMeasuredWidth() - l.this.f48149a.getPaddingLeft()) - l.this.f48149a.getPaddingRight();
                l.this.getLayoutParams().height = height;
                u.e("111111onAttachedToWindow in" + l.this.getVisibility());
            }
        }

        /* renamed from: com.ubix.ssp.ad.i.c$l$c, reason: collision with other inner class name */
        public class RunnableC0845c implements Runnable {
            public RunnableC0845c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (l.this.getLayoutParams() != null) {
                    l.this.getLayoutParams().width = 0;
                    l.this.getLayoutParams().height = 0;
                    u.e("111111onDetachedFromWindow in" + l.this.getVisibility());
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(Context context, ViewGroup viewGroup) {
            super(context);
            this.f48149a = viewGroup;
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            setVisibility(0);
            u.e("111111onAttachedToWindow out" + getVisibility() + this);
            post(new b());
        }

        @Override // android.view.View
        public void onConfigurationChanged(Configuration configuration) {
            super.onConfigurationChanged(configuration);
            setVisibility(8);
            u.e("11111onConfigurationChanged out" + getVisibility() + this);
            post(new a());
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            setVisibility(8);
            u.e("111111onDetachedFromWindow out" + getVisibility() + this);
            post(new RunnableC0845c());
        }
    }

    public class m implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.l f48154a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f48155b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ ViewGroup f48156c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f48157d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ View f48158e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ UBiXNativeInteractionListener f48159f;

        public m(com.ubix.ssp.ad.d.l lVar, List list, ViewGroup viewGroup, com.ubix.ssp.ad.d.a aVar, View view, UBiXNativeInteractionListener uBiXNativeInteractionListener) {
            this.f48154a = lVar;
            this.f48155b = list;
            this.f48156c = viewGroup;
            this.f48157d = aVar;
            this.f48158e = view;
            this.f48159f = uBiXNativeInteractionListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList;
            c cVar;
            com.ubix.ssp.ad.d.a aVar;
            View view;
            UBiXNativeInteractionListener uBiXNativeInteractionListener;
            int i2;
            try {
                if (this.f48154a.s0()) {
                    arrayList = this.f48155b != null ? new ArrayList(this.f48155b) : new ArrayList();
                    arrayList.add(this.f48156c);
                    cVar = c.this;
                    aVar = this.f48157d;
                    view = this.f48158e;
                    uBiXNativeInteractionListener = this.f48159f;
                    i2 = 768;
                } else {
                    if (com.ubix.ssp.ad.d.b.f45786E == 1 && this.f48157d.f45778t) {
                        return;
                    }
                    arrayList = new ArrayList();
                    arrayList.add(c.this.a(this.f48156c));
                    cVar = c.this;
                    aVar = this.f48157d;
                    view = this.f48158e;
                    uBiXNativeInteractionListener = this.f48159f;
                    i2 = 256;
                }
                cVar.a(aVar, arrayList, view, i2, uBiXNativeInteractionListener);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class n implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f48161a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.a0.o f48162b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.l f48163c;

        public n(ViewGroup viewGroup, com.ubix.ssp.ad.e.a0.o oVar, com.ubix.ssp.ad.d.l lVar) {
            this.f48161a = viewGroup;
            this.f48162b = oVar;
            this.f48163c = lVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.ubix.ssp.ad.e.a0.o oVar;
            ViewGroup viewGroup = this.f48161a;
            if (viewGroup == null || (oVar = this.f48162b) == null || this.f48163c == null) {
                return;
            }
            viewGroup.addView(oVar, new ViewGroup.LayoutParams(-1, -1));
            this.f48162b.a(this.f48163c.Z(), this.f48163c.W(), this.f48163c.Z() == 1 ? this.f48163c.F() : new int[]{this.f48163c.T()}, this.f48163c.X(), this.f48163c.U(), this.f48163c.L0(), this.f48163c.C0(), this.f48163c.D0());
        }
    }

    public class o implements o.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f48165a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f48166b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ UBiXNativeInteractionListener f48167c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.a0.o f48168d;

        public o(com.ubix.ssp.ad.d.a aVar, ViewGroup viewGroup, UBiXNativeInteractionListener uBiXNativeInteractionListener, com.ubix.ssp.ad.e.a0.o oVar) {
            this.f48165a = aVar;
            this.f48166b = viewGroup;
            this.f48167c = uBiXNativeInteractionListener;
            this.f48168d = oVar;
        }

        @Override // com.ubix.ssp.ad.e.a0.o.f
        public void a(float f2, float f3) {
            try {
                HashMap map = new HashMap();
                HashMap map2 = (HashMap) c.this.f48113G.get(Integer.valueOf(this.f48165a.hashCode()));
                if (map2 != null && map2.get("native_click_map_key") != null) {
                    map = (HashMap) map2.get("native_click_map_key");
                }
                map.put("__TRI_VAL__", Base64.encodeToString((f2 + "").getBytes(), 10));
                map.put("__CLICK_AREA__", "3");
                map.put("__CLICK_TRIGGER__", "3");
                Integer num = c.f48109C.get(this.f48165a.f45765g);
                c.f48109C.put(this.f48165a.f45765g, Integer.valueOf(num.intValue() + 1));
                int i2 = (Calendar.getInstance().get(1) * 1000) + (Calendar.getInstance().get(2) * 100) + Calendar.getInstance().get(5);
                if (i2 != v.b(this.f48166b.getContext().getApplicationContext(), "ubix_sp_native_max_volume", this.f48165a.f45765g + "_date")) {
                    c.f48109C.put(this.f48165a.f45765g, 1);
                    v.b(this.f48166b.getContext().getApplicationContext(), "ubix_sp_native_max_volume", this.f48165a.f45765g + "_date", i2);
                }
                v.b(this.f48166b.getContext().getApplicationContext(), "ubix_sp_native_max_volume", this.f48165a.f45765g + "_cur", num.intValue());
                Object obj = ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48165a.hashCode()))).get("native_custom_confirm_window_listener_key");
                c.this.a(this.f48165a, this.f48166b, (HashMap<String, String>) map, this.f48167c, obj == null ? null : (com.ubix.ssp.ad.g.c) obj);
                this.f48168d.a();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.o.f
        public void a(Bundle bundle) {
            HashMap map = new HashMap();
            HashMap map2 = (HashMap) c.this.f48113G.get(Integer.valueOf(this.f48165a.hashCode()));
            if (map2 != null && map2.get("native_click_map_key") != null) {
                map = (HashMap) map2.get("native_click_map_key");
            }
            if (bundle.getInt("__SENSOR_INFO_TYPE__") == 1) {
                map.put("__X_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__X_MAX_ACC__"))));
                map.put("__Y_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__Y_MAX_ACC__"))));
                map.put("__Z_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__Z_MAX_ACC__"))));
                map.put("__TURN_X__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_X__"))));
                map.put("__TURN_Y__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_Y__"))));
                map.put("__TURN_Z__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_Z__"))));
                map.put("__UBIX_TURN_TARGET__", bundle.getInt("__UBIX_TURN_TARGET__") + "");
                map.put("__TURN_TIME__", bundle.getLong("__TURN_TIME__") + "");
            }
            c.this.a(bundle);
        }

        @Override // com.ubix.ssp.ad.e.a0.o.f
        public boolean a() {
            HashMap map = new HashMap();
            HashMap map2 = (HashMap) c.this.f48113G.get(Integer.valueOf(this.f48165a.hashCode()));
            if (map2 != null && map2.get("native_click_map_key") != null) {
                map = (HashMap) map2.get("native_click_map_key");
            }
            return !TextUtils.isEmpty((CharSequence) map.get("__MULTI_CLICK_KEY__"));
        }
    }

    public class p implements View.OnTouchListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f48170a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f48171b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f48172c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ UBiXNativeInteractionListener f48173d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ View f48174e;

        public p(com.ubix.ssp.ad.d.a aVar, View view, int i2, UBiXNativeInteractionListener uBiXNativeInteractionListener, View view2) {
            this.f48170a = aVar;
            this.f48171b = view;
            this.f48172c = i2;
            this.f48173d = uBiXNativeInteractionListener;
            this.f48174e = view2;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 1 && motionEvent.getAction() != 3) {
                if (motionEvent.getAction() == 0) {
                    try {
                        if (this.f48174e != null) {
                            Rect rect = new Rect();
                            this.f48174e.getGlobalVisibleRect(rect);
                            if (rect.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
                                return false;
                            }
                        }
                        View viewFindViewById = ((ViewGroup) this.f48171b.getParent()).findViewById(200019);
                        if (viewFindViewById != null) {
                            Rect rect2 = new Rect();
                            viewFindViewById.getGlobalVisibleRect(rect2);
                            if (rect2.contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
                                return false;
                            }
                        }
                        HashMap map = new HashMap();
                        HashMap map2 = (HashMap) c.this.f48113G.get(Integer.valueOf(this.f48170a.hashCode()));
                        if (map2 == null) {
                            c.this.f48113G.put(Integer.valueOf(this.f48170a.hashCode()), new HashMap());
                        } else if (map2.get("native_click_map_key") != null) {
                            map = (HashMap) map2.get("native_click_map_key");
                        }
                        c.this.a((HashMap<String, String>) map, this.f48171b, motionEvent);
                        c.this.a(this.f48170a.hashCode(), "native_click_map_key", map);
                    } catch (Throwable th) {
                        th.printStackTrace();
                        return false;
                    }
                }
                return true;
            }
            try {
                HashMap map3 = new HashMap();
                HashMap map4 = (HashMap) c.this.f48113G.get(Integer.valueOf(this.f48170a.hashCode()));
                if (map4 != null) {
                    if ("true".equals(map4.get("easy_slide_trigger") + "") && com.ubix.ssp.ad.d.b.f45786E == 1) {
                        this.f48171b.setOnTouchListener(null);
                        return false;
                    }
                    if (map4.get("native_click_map_key") != null && (map3 = (HashMap) map4.get("native_click_map_key")) != null) {
                        String str = (String) map3.get("__DOWN_X__");
                        String str2 = (String) map3.get("__DOWN_Y__");
                        float f2 = !TextUtils.isEmpty(str) ? Float.parseFloat(str) : 0.0f;
                        float f3 = TextUtils.isEmpty(str2) ? 0.0f : Float.parseFloat(str2);
                        if (Math.abs(f2 - motionEvent.getX()) >= 5.0f || Math.abs(f3 - motionEvent.getY()) >= 5.0f) {
                            map3.put("__CLICK_AREA__", "12");
                            map3.put("__CLICK_TRIGGER__", "12");
                            this.f48170a.f45778t = true;
                            if (this.f48172c == 256 && com.ubix.ssp.ad.d.b.f45786E == 1) {
                                this.f48171b.setOnTouchListener(null);
                            }
                            c.this.a(this.f48170a.hashCode(), "easy_slide_trigger", "true");
                        } else {
                            map3.put("__CLICK_AREA__", "1");
                            map3.put("__CLICK_TRIGGER__", "1");
                        }
                    }
                    HashMap map5 = map3;
                    u.a("shouldClick");
                    Object obj = ((HashMap) c.this.f48113G.get(Integer.valueOf(this.f48170a.hashCode()))).get("native_custom_confirm_window_listener_key");
                    c.this.a(this.f48170a, view, (HashMap<String, String>) map5, this.f48173d, obj != null ? (com.ubix.ssp.ad.g.c) obj : null);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return true;
        }
    }

    public class q implements com.ubix.ssp.ad.e.a0.y.e.a {

        /* renamed from: a, reason: collision with root package name */
        private final SoftReference<ViewGroup> f48176a;

        /* renamed from: b, reason: collision with root package name */
        private final SoftReference<UBiXNativeInteractionListener> f48177b;

        /* renamed from: c, reason: collision with root package name */
        private final com.ubix.ssp.ad.d.a f48178c;

        public q(com.ubix.ssp.ad.d.a aVar, ViewGroup viewGroup, UBiXNativeInteractionListener uBiXNativeInteractionListener) {
            this.f48176a = new SoftReference<>(viewGroup);
            this.f48177b = new SoftReference<>(uBiXNativeInteractionListener);
            this.f48178c = aVar;
        }

        @Override // com.ubix.ssp.ad.e.a0.y.e.a
        public void a(int i2) {
            try {
                SoftReference<ViewGroup> softReference = this.f48176a;
                if (softReference == null || softReference.get() == null) {
                    return;
                }
                c.this.a(this.f48176a.get(), this.f48178c, this.f48177b.get(), (UBiXNativeExpressInteractionListener) null);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.y.e.a
        public void b(int i2) {
        }
    }

    public c(Context context, String str, int i2, com.ubix.ssp.ad.g.g gVar) {
        super(context, str);
        this.f48113G = new ConcurrentHashMap<>();
        this.f48114H = false;
        this.f48111E = new SoftReference<>(context);
        this.f48112F = gVar;
        this.f45557u = 2;
        q(i2);
        int iA = v.a(context.getApplicationContext(), "ubix_sp_native_max_volume", str + "_cur", 0);
        if (f48109C.containsKey(str)) {
            return;
        }
        f48109C.put(str, Integer.valueOf(iA));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized FrameLayout a(ViewGroup viewGroup) {
        l lVar;
        int iIndexOfChild;
        synchronized (viewGroup) {
            try {
                if (viewGroup.findViewById(910200) != null) {
                    viewGroup.removeViewAt(viewGroup.indexOfChild(viewGroup.findViewById(910200)));
                }
                if (viewGroup.findViewById(910100) != null && (iIndexOfChild = viewGroup.indexOfChild(viewGroup.findViewById(910100))) >= 0) {
                    viewGroup.removeViewAt(iIndexOfChild);
                }
                lVar = new l(viewGroup.getContext(), viewGroup);
                lVar.setId(910200);
                viewGroup.addView(lVar, new ViewGroup.LayoutParams((viewGroup.getMeasuredWidth() - viewGroup.getPaddingLeft()) - viewGroup.getPaddingRight(), (viewGroup.getMeasuredHeight() - viewGroup.getPaddingTop()) - viewGroup.getPaddingTop() <= 0 ? viewGroup.getHeight() : (viewGroup.getMeasuredHeight() - viewGroup.getPaddingTop()) - viewGroup.getPaddingTop()));
            } finally {
            }
        }
        return lVar;
    }

    private int o(int i2) {
        if (i2 == 1002 || i2 == 1005) {
            return 3;
        }
        if (i2 == 2005) {
            return 2;
        }
        if (i2 == 4004 || i2 == 6012 || i2 == 6013 || i2 == 9001 || i2 == 9002) {
            return 3;
        }
        switch (i2) {
            case 2011:
            case 2012:
            case 2013:
            case 2014:
                return 3;
            default:
                return 1;
        }
    }

    private boolean r(com.ubix.ssp.ad.d.a aVar) {
        com.ubix.ssp.ad.d.l lVarP;
        return aVar != null && (lVarP = p(this.f45541e.indexOf(aVar))) != null && lVarP.l0() && System.currentTimeMillis() / 1000 > aVar.f45768j;
    }

    @Override // com.ubix.ssp.ad.a
    public void A() {
        super.A();
        if (this.f48114H) {
            return;
        }
        this.f48114H = true;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("ACTION_INSTALLED");
        com.ubix.ssp.ad.e.a0.m.a(this.f45539c).a(new g(), intentFilter);
    }

    public String B() {
        return l(this.f45545i);
    }

    public void C() {
        m(1);
    }

    public void D() {
        super.u();
    }

    public void d(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        super.b(aVar, map);
    }

    @Override // com.ubix.ssp.ad.a
    public int e(com.ubix.ssp.ad.d.a aVar) {
        int iE = super.e(aVar);
        u.e("getDownloadAppProgress=" + iE);
        return iE;
    }

    public void h(String str) {
        if (TextUtils.isEmpty(str)) {
            b(com.ubix.ssp.ad.e.a0.a0.a.j(10, "竞价广告体为空或解析异常，请检查传入的参数是否正确"));
        } else {
            e(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x014c, code lost:
    
        if (android.text.TextUtils.isEmpty(r6.f47499c) == false) goto L117;
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0179  */
    @Override // com.ubix.ssp.ad.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.ubix.ssp.open.AdError j(com.ubix.ssp.ad.d.a r6) {
        /*
            Method dump skipped, instructions count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.i.c.j(com.ubix.ssp.ad.d.a):com.ubix.ssp.open.AdError");
    }

    @Override // com.ubix.ssp.ad.a
    public void m(int i2) {
        this.f45544h = i2;
        super.m(this.f45545i);
    }

    public int n(com.ubix.ssp.ad.d.a aVar) {
        int iF = f(aVar);
        u.e("getDownloadAppStatus=" + iF);
        return iF;
    }

    public com.ubix.ssp.ad.d.l p(int i2) {
        return a(this.f45541e.get(i2).f45759a);
    }

    public void q(int i2) {
        this.f45545i = i2;
    }

    public boolean s(com.ubix.ssp.ad.d.a aVar) {
        return !r(aVar);
    }

    public void t(com.ubix.ssp.ad.d.a aVar) {
        com.ubix.ssp.ad.d.f fVar;
        if (j(aVar) != null || !b(aVar.f45759a) || this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_core_view") == null || (fVar = (com.ubix.ssp.ad.d.f) this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_core_view")) == null) {
            return;
        }
        com.ubix.ssp.ad.e.v.e.b().a(aVar.f45759a.f47442d.f47481k.f47537c, fVar.getCoverImage(), -1, null);
        fVar.a(aVar.f45759a.f47442d.f47481k.f47536b, new h(aVar));
    }

    @Override // com.ubix.ssp.ad.a
    public void v() {
        super.v();
    }

    @Override // com.ubix.ssp.ad.a
    public void w() {
        super.w();
    }

    public c(Context context, String str, com.ubix.ssp.ad.g.g gVar) {
        super(context, str);
        this.f48113G = new ConcurrentHashMap<>();
        this.f48114H = false;
        this.f48111E = new SoftReference<>(context);
        this.f48112F = gVar;
        q(2);
    }

    private String p(com.ubix.ssp.ad.d.a aVar) {
        try {
            a.b.m mVar = aVar.f45759a.f47442d.f47491u;
            if (mVar != null && !TextUtils.isEmpty(mVar.f47547c) && !TextUtils.isEmpty(mVar.f47546b) && x.c()) {
                return "3";
            }
            String str = aVar.f45759a.f47442d.f47485o;
            return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim()) || !str.trim().contains("://") || !com.ubix.ssp.ad.e.a0.c.a(com.ubix.ssp.ad.e.a0.c.f46112a, com.ubix.ssp.ad.e.a0.c.c(str))) ? !TextUtils.isEmpty(aVar.f45759a.f47442d.f47484n) ? a(aVar.f45759a).H() == 0 ? "2" : "1" : !TextUtils.isEmpty(aVar.f45759a.f47442d.f47483m) ? "3" : "0" : "3";
        } catch (Throwable th) {
            th.printStackTrace();
            return "0";
        }
    }

    private boolean q(com.ubix.ssp.ad.d.a aVar) {
        HashMap<String, Object> map = this.f48113G.get(Integer.valueOf(aVar.hashCode()));
        return (map == null || map.containsKey("native_exposed_key")) ? false : true;
    }

    @Override // com.ubix.ssp.ad.a
    public void b(int i2, com.ubix.ssp.ad.d.a aVar) {
        super.b(i2, aVar);
        if (i2 == 3) {
            a(2, aVar);
        }
    }

    @Override // com.ubix.ssp.ad.a
    public void c(Context context, Intent intent, long j2, BroadcastReceiver broadcastReceiver) {
        super.c(context, intent, j2, broadcastReceiver);
        a(3, this.f45541e.get(0));
    }

    public void e(AdError adError) {
        super.a(adError);
        com.ubix.ssp.ad.g.g gVar = this.f48112F;
        if (gVar != null) {
            gVar.onAdLoadFailed(adError);
        }
    }

    public void m(com.ubix.ssp.ad.d.a aVar) {
        ViewGroup viewGroup;
        super.h();
        try {
            if (this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_core_view") != null && (viewGroup = (ViewGroup) this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_core_view")) != null) {
                viewGroup.removeAllViews();
            }
            if (this.f48113G.get(Integer.valueOf(aVar.hashCode())) != null) {
                this.f48113G.get(Integer.valueOf(aVar.hashCode())).clear();
            }
            com.ubix.ssp.ad.e.a0.y.e.c.a().c(aVar.f45773o);
        } catch (Exception unused) {
        }
    }

    public com.ubix.ssp.ad.d.a n(int i2) {
        List<com.ubix.ssp.ad.d.a> list = this.f45541e;
        if (list == null || list.size() <= i2) {
            return null;
        }
        return this.f45541e.get(i2);
    }

    public ParamsReview o(com.ubix.ssp.ad.d.a aVar) {
        com.ubix.ssp.ad.d.l lVarA = a(aVar.f45759a);
        return super.a(aVar.f45759a, lVarA.x0(), lVarA.H0());
    }

    public void b(com.ubix.ssp.ad.d.a aVar, ViewGroup viewGroup, List<View> list, View view, UBiXNativeInteractionListener uBiXNativeInteractionListener) throws Throwable {
        a(aVar, viewGroup, list, (List<View>) null, view, uBiXNativeInteractionListener);
    }

    public void c(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        com.ubix.ssp.ad.e.y.a.a aVar2;
        if (aVar == null || (aVar2 = aVar.f45759a) == null) {
            return;
        }
        super.a(aVar2, map);
    }

    public void a(int i2, com.ubix.ssp.ad.b bVar) {
        b(bVar, a(this.f45541e.get(i2).f45759a));
    }

    @Override // com.ubix.ssp.ad.a
    public boolean b(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        try {
            a.y yVar = (a.y) this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_confirm_window_listener_key");
            if (yVar != null) {
                return yVar.a(true);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return true;
    }

    @Override // com.ubix.ssp.ad.a
    public void c(AdError adError) {
        super.c(adError);
    }

    @Override // com.ubix.ssp.ad.a
    public void a(int i2, com.ubix.ssp.ad.d.a aVar) {
        super.a(i2, aVar);
        try {
            a(this.f45539c, aVar, (HashMap<String, String>) this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_click_map_key"));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, String str, Object obj) {
        HashMap<String, Object> map = this.f48113G.get(Integer.valueOf(i2));
        if (map != null) {
            map.put(str, obj);
            return;
        }
        HashMap<String, Object> map2 = new HashMap<>();
        map2.put(str, obj);
        this.f48113G.put(Integer.valueOf(i2), map2);
    }

    @Override // com.ubix.ssp.ad.a
    public void a(int i2, Object... objArr) {
        u.e("onAdClicked in");
        boolean z2 = false;
        try {
            com.ubix.ssp.ad.d.a aVar = (com.ubix.ssp.ad.d.a) objArr[0];
            com.ubix.ssp.ad.d.l lVarA = a(aVar.f45759a);
            if (lVarA.n0() && i2 != 0) {
                super.a(i2, objArr);
            }
            View view = (View) this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_parent_view_key");
            Object obj = this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("interaction_listener_key");
            StringBuilder sb = new StringBuilder();
            sb.append("runClickCallback ");
            sb.append(i2);
            sb.append(";canRun=");
            if ((!lVarA.n0() && i2 == 0) || (lVarA.n0() && i2 != 0)) {
                z2 = true;
            }
            sb.append(z2);
            u.e(sb.toString());
            if (((!lVarA.n0() && i2 == 0) || (lVarA.n0() && i2 != 0)) && obj != null && !lVarA.m0()) {
                if (obj instanceof UBiXNativeInteractionListener) {
                    ((UBiXNativeInteractionListener) obj).onAdClicked(view);
                } else if (obj instanceof UBiXNativeExpressInteractionListener) {
                    ((UBiXNativeExpressInteractionListener) obj).onAdClicked(view);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        u.e("onAdClicked out");
    }

    @Override // com.ubix.ssp.ad.a
    public void a(Message message) {
        int i2 = message.what;
        if (i2 != 5) {
            if (i2 != 6) {
                if (i2 != 10) {
                    if (i2 != 11) {
                        return;
                    }
                }
            }
            super.b((AdError) message.obj);
            e((AdError) message.obj);
            return;
        }
        ArrayList<NativeAd> arrayList = new ArrayList<>();
        for (com.ubix.ssp.ad.d.a aVar : this.f45541e) {
            com.ubix.ssp.ad.e.y.a.a aVar2 = aVar.f45759a;
            aVar.f45773o = aVar.f45762d.hashCode();
            com.ubix.ssp.ad.d.l lVarA = a(aVar.f45759a);
            com.ubix.ssp.ad.d.h hVar = new com.ubix.ssp.ad.d.h();
            hVar.b(g(aVar));
            a.b bVar = aVar2.f47442d;
            hVar.e(bVar.f47472b);
            hVar.a(aVar);
            hVar.a(this);
            hVar.b(lVarA.I());
            hVar.g(bVar.f47476f);
            hVar.m(bVar.f47475e);
            hVar.b(bVar.f47490t);
            hVar.c(bVar.f47478h);
            hVar.a(o(aVar.f45774p));
            hVar.b(b(aVar2));
            if (lVarA.x0()) {
                hVar.f(bVar.f47485o);
                hVar.h(bVar.f47484n);
                hVar.l(bVar.f47483m);
            }
            ArrayList<UBiXImage> arrayList2 = new ArrayList<>();
            a.b.C0834b[] c0834bArr = bVar.f47480j;
            if (c0834bArr != null && c0834bArr.length != 0) {
                a.b.C0834b c0834b = c0834bArr[0];
                if (c0834b != null && !TextUtils.isEmpty(c0834b.f47499c)) {
                    hVar.j(bVar.f47480j[0].f47499c);
                }
                for (a.b.C0834b c0834b2 : bVar.f47480j) {
                    UBiXImage uBiXImage = new UBiXImage();
                    if (c0834b2 != null && !TextUtils.isEmpty(c0834b2.f47499c)) {
                        uBiXImage.setUrl(c0834b2.f47499c);
                        uBiXImage.setWidth(c0834b2.f47500d);
                        uBiXImage.setHeight(c0834b2.f47501e);
                        uBiXImage.setMaterialId(c0834b2.f47502f);
                        arrayList2.add(uBiXImage);
                    }
                }
            }
            if (!TextUtils.isEmpty(bVar.f47481k.f47536b)) {
                hVar.o(bVar.f47481k.f47536b);
                hVar.d(bVar.f47481k.f47540f);
                hVar.c(bVar.f47481k.f47541g);
                hVar.d(bVar.f47481k.f47537c);
                hVar.d(bVar.f47481k.f47540f);
                hVar.c(bVar.f47481k.f47541g);
                hVar.c(((long) bVar.f47481k.f47538d) * 1000);
                hVar.n(bVar.f47481k.f47545k);
                Bundle bundle = new Bundle();
                bundle.putInt("AUTO_PLAY", lVarA.c());
                bundle.putBoolean("AUTO_MUTE", lVarA.K0());
                bundle.putString("BUTTON_TEXT", aVar.f45759a.f47442d.f47457E);
                bundle.putInt("VIDEO_RENDER_TYPE", lVarA.k0());
                com.ubix.ssp.ad.d.f fVar = new com.ubix.ssp.ad.d.f(this.f48111E.get(), bundle);
                fVar.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                hVar.a(fVar);
                a(aVar.hashCode(), "native_core_view", fVar);
            }
            hVar.a(arrayList2);
            hVar.a(bVar.f47457E);
            hVar.a(com.ubix.ssp.ad.e.a0.c.a(bVar));
            hVar.r(bVar.f47477g);
            hVar.w(bVar.f47453A);
            hVar.s(bVar.f47455C);
            hVar.t(bVar.f47454B);
            hVar.u(bVar.f47496z);
            hVar.q(bVar.f47458F);
            hVar.a(bVar.f47459G);
            hVar.p(bVar.f47460H);
            hVar.v(bVar.f47461I);
            boolean zG0 = lVarA.G0();
            aVar.f45780v = zG0;
            hVar.a(com.ubix.ssp.ad.e.q.a("ubix/ic_logo.png", zG0));
            hVar.i(bVar.f47479i);
            hVar.c(lVarA.z0());
            hVar.k(aVar2.f47451m);
            hVar.getExtraInfo().put(ServerSideVerificationOptions.ACTION, p(aVar));
            arrayList.add(hVar);
        }
        a(arrayList);
    }

    private void a(View view, com.ubix.ssp.ad.d.a aVar, UBiXNativeInteractionListener uBiXNativeInteractionListener) {
        HashMap<String, String> map = new HashMap<>();
        HashMap<String, Object> map2 = this.f48113G.get(Integer.valueOf(aVar.hashCode()));
        if (map2 != null) {
            if (map2.get("native_click_map_key") != null && (map = (HashMap) map2.get("native_click_map_key")) != null && map.get("__CUSTOM_CHECK__") == null) {
                map.put("__CLICK_AREA__", "1");
                map.put("__CLICK_TRIGGER__", "1");
            }
            HashMap<String, String> map3 = map;
            u.a("shouldClick");
            Object obj = this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_custom_confirm_window_listener_key");
            a(aVar, view, map3, uBiXNativeInteractionListener, obj == null ? null : (com.ubix.ssp.ad.g.c) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, com.ubix.ssp.ad.d.a aVar, UBiXNativeInteractionListener uBiXNativeInteractionListener, UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener) {
        a.b bVar;
        String str;
        HashMap map;
        try {
            HashMap map2 = new HashMap();
            if (view != null) {
                HashMap<String, Object> map3 = this.f48113G.get(Integer.valueOf(aVar.hashCode()));
                if (map3 != null && map3.get("native_click_map_key") != null && (map = (HashMap) map3.get("native_click_map_key")) != null) {
                    map2 = map;
                }
                map2.put("__WIDTH__", view.getWidth() + "");
                map2.put("__HEIGHT__", view.getHeight() + "");
                map2.put("__IMP_AREA__", view.getLeft() + "_" + view.getTop() + "_" + view.getRight() + "_" + view.getBottom());
                a(aVar.hashCode(), "native_click_map_key", map2);
            }
            if (q(aVar)) {
                a(aVar.hashCode(), "native_exposed_key", Boolean.TRUE);
                super.x();
                if (!s(aVar)) {
                    AdError adErrorD = com.ubix.ssp.ad.e.a0.a0.a.d(4, "文件已经过期");
                    super.d(adErrorD);
                    u.e("onAdExposeFailed in");
                    if (uBiXNativeInteractionListener != null) {
                        uBiXNativeInteractionListener.onAdExposeFailed(adErrorD);
                    }
                    if (uBiXNativeExpressInteractionListener != null) {
                        uBiXNativeExpressInteractionListener.onAdExposeFailed(adErrorD);
                    }
                    u.e("onAdExposeFailed out");
                    return;
                }
                d(aVar);
                super.y();
                u.e("onAdExposed in");
                if (uBiXNativeInteractionListener != null) {
                    uBiXNativeInteractionListener.onAdExposed();
                }
                if (uBiXNativeExpressInteractionListener != null) {
                    uBiXNativeExpressInteractionListener.onAdExposed();
                }
                u.e("onAdExposed out");
                com.ubix.ssp.ad.e.y.a.a aVar2 = aVar.f45759a;
                if (aVar2 == null || (bVar = aVar2.f47442d) == null || (str = bVar.f47479i) == null) {
                    return;
                }
                f(str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(ViewGroup viewGroup, com.ubix.ssp.ad.d.a aVar, List<View> list, View view, UBiXNativeInteractionListener uBiXNativeInteractionListener) {
        if (list != null && list.size() > 0) {
            for (View view2 : list) {
                if (view2 != null) {
                    view2.setOnTouchListener(new b(aVar));
                    view2.setOnClickListener(new ViewOnClickListenerC0844c(aVar, uBiXNativeInteractionListener));
                }
            }
        }
        if (view != null) {
            view.setOnClickListener(new d(uBiXNativeInteractionListener));
        }
    }

    public void a(com.ubix.ssp.ad.d.a aVar, int i2) {
        try {
            u.b("traceEvent " + i2 + this);
            if (i2 == 5000 || i2 == 5025 || i2 == 5050 || i2 == 5075 || i2 == 5100 || i2 == 5200) {
                a(aVar.f45759a, i2);
                return;
            }
            u.b("unsupport eventid " + i2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(com.ubix.ssp.ad.d.a aVar, long j2) {
        com.ubix.ssp.ad.e.y.a.a aVar2;
        if (aVar == null || (aVar2 = aVar.f45759a) == null) {
            return;
        }
        super.a(aVar2, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.ubix.ssp.ad.d.a aVar, View view, HashMap<String, String> map, UBiXNativeInteractionListener uBiXNativeInteractionListener, com.ubix.ssp.ad.g.c cVar) {
        int i2 = aVar.f45773o;
        int iB = com.ubix.ssp.ad.e.s.b.c().b(i2);
        if (iB == 46) {
            try {
                com.ubix.ssp.ad.e.s.g.b bVarB = com.ubix.ssp.ad.e.s.b.c().c(i2).b();
                File file = new File(com.ubix.ssp.ad.e.s.b.c().c(i2).b().e());
                if (file.exists() && file.length() == bVarB.g()) {
                    if (!map.containsKey("__NO_CLICK_CONFIRM_KEY__")) {
                        map.put("__NO_CLICK_CONFIRM_KEY__", "TRUE");
                    }
                } else if (map.containsKey("__NO_CLICK_CONFIRM_KEY__")) {
                    map.put("__NO_CLICK_CONFIRM_KEY__", "FALSE");
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        a(aVar, new f(iB, view, aVar));
        if (a(aVar, view, map, uBiXNativeInteractionListener, (UBiXNativeExpressInteractionListener) null, cVar)) {
            Object obj = this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_core_view");
            if (obj instanceof com.ubix.ssp.ad.d.f) {
                ((com.ubix.ssp.ad.d.f) obj).b();
            }
            map.put("__MULTI_CLICK_KEY__", "TRUE");
            a(aVar.hashCode(), "native_click_map_key", map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.ubix.ssp.ad.d.a aVar, ViewGroup viewGroup, float f2, UBiXNativeInteractionListener uBiXNativeInteractionListener) throws Throwable {
        com.ubix.ssp.ad.e.a0.y.e.c.a().a(f2).a(aVar.f45773o, viewGroup, new q(aVar, viewGroup, uBiXNativeInteractionListener));
    }

    private void a(com.ubix.ssp.ad.d.a aVar, ViewGroup viewGroup, com.ubix.ssp.ad.d.l lVar, UBiXNativeInteractionListener uBiXNativeInteractionListener) {
        HashMap<String, Object> map = this.f48113G.get(Integer.valueOf(aVar.hashCode()));
        a(aVar.hashCode(), "custom_native_container", viewGroup);
        Object obj = map.get("custom_shake_sensor");
        if (obj != null) {
            s sVar = (s) obj;
            sVar.f();
            sVar.a();
        }
        a(aVar.hashCode(), "custom_shake_sensor", lVar.Z() == 1 ? new s(viewGroup.getContext(), lVar.W(), lVar.F(), lVar.U(), lVar.L0(), lVar.C0(), lVar.D0()) : new s(viewGroup.getContext(), lVar.W(), lVar.T(), lVar.L0()));
    }

    private void a(com.ubix.ssp.ad.d.a aVar, ViewGroup viewGroup, List<View> list, View view, float f2, UBiXNativeInteractionListener uBiXNativeInteractionListener) throws Throwable {
        View view2;
        List<View> list2;
        com.ubix.ssp.ad.d.a aVar2;
        c cVar;
        a(aVar.hashCode(), "native_notify_id_key", Integer.valueOf(aVar.f45773o));
        a(aVar.hashCode(), "interaction_listener_key", uBiXNativeInteractionListener);
        if (viewGroup == null || !q(aVar)) {
            view2 = view;
            list2 = list;
            aVar2 = aVar;
            cVar = this;
        } else if (viewGroup.isAttachedToWindow()) {
            a(aVar, viewGroup, f2, uBiXNativeInteractionListener);
            view2 = view;
            list2 = list;
            aVar2 = aVar;
            cVar = this;
        } else {
            viewGroup.addOnAttachStateChangeListener(new a(viewGroup, aVar, f2, uBiXNativeInteractionListener));
            cVar = this;
            view2 = view;
            list2 = list;
            aVar2 = aVar;
        }
        cVar.a(viewGroup, aVar2, list2, view2, uBiXNativeInteractionListener);
    }

    private void a(com.ubix.ssp.ad.d.a aVar, ViewGroup viewGroup, List<View> list, View view, UBiXNativeInteractionListener uBiXNativeInteractionListener) {
        a(aVar.hashCode(), "native_notify_id_key", Integer.valueOf(aVar.f45773o));
        a(aVar.hashCode(), "interaction_listener_key", uBiXNativeInteractionListener);
        if (viewGroup != null && viewGroup.isAttachedToWindow()) {
            a(viewGroup, aVar, uBiXNativeInteractionListener, (UBiXNativeExpressInteractionListener) null);
        } else if (viewGroup != null) {
            viewGroup.addOnAttachStateChangeListener(new e(viewGroup, aVar, uBiXNativeInteractionListener));
        }
        a(viewGroup, aVar, list, view, uBiXNativeInteractionListener);
    }

    public void a(com.ubix.ssp.ad.d.a aVar, ViewGroup viewGroup, List<View> list, List<View> list2, View view, UBiXNativeInteractionListener uBiXNativeInteractionListener) throws Throwable {
        try {
            com.ubix.ssp.ad.d.l lVarA = a(aVar.f45759a);
            if (lVarA.r0()) {
                a(aVar, viewGroup, list, view, lVarA.s(), uBiXNativeInteractionListener);
            } else {
                a(aVar, viewGroup, list, view, uBiXNativeInteractionListener);
            }
            if (this.f45557u == 2 && this.f45545i == 2) {
                a(aVar, lVarA, viewGroup, view, list, list2, uBiXNativeInteractionListener);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(com.ubix.ssp.ad.d.a aVar, a.y yVar) {
        a(aVar.hashCode(), "native_confirm_window_listener_key", yVar);
    }

    private void a(com.ubix.ssp.ad.d.a aVar, com.ubix.ssp.ad.d.l lVar, ViewGroup viewGroup, View view, List<View> list, List<View> list2, UBiXNativeInteractionListener uBiXNativeInteractionListener) {
        int iIndexOfChild;
        int I2 = lVar.I();
        if (I2 != 2) {
            if (I2 == 256) {
                viewGroup.post(new m(lVar, list, viewGroup, aVar, view, uBiXNativeInteractionListener));
                return;
            } else if (I2 == 514) {
                a(aVar, viewGroup, lVar, uBiXNativeInteractionListener);
                return;
            } else {
                if (I2 != 768) {
                    return;
                }
                a(aVar, list2, view, 768, uBiXNativeInteractionListener);
                return;
            }
        }
        try {
            Integer num = f48109C.get(aVar.f45765g);
            if (num == null) {
                return;
            }
            if (lVar.J() < 0 || num.intValue() < lVar.J()) {
                if (viewGroup.findViewById(910100) != null) {
                    viewGroup.removeView(viewGroup.findViewById(910100));
                }
                if (viewGroup.findViewById(910100) != null && (iIndexOfChild = viewGroup.indexOfChild(viewGroup.findViewById(910100))) >= 0) {
                    viewGroup.removeViewAt(iIndexOfChild);
                }
                com.ubix.ssp.ad.e.a0.o oVar = new com.ubix.ssp.ad.e.a0.o(viewGroup.getContext(), lVar.u0() ? lVar.B() : null, lVar.t0() ? lVar.A() : null, lVar.i(), lVar.j(), lVar.h(), lVar.p0());
                viewGroup.post(new n(viewGroup, oVar, lVar));
                oVar.setCallback(new o(aVar, viewGroup, uBiXNativeInteractionListener, oVar));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(com.ubix.ssp.ad.d.a aVar, com.ubix.ssp.ad.e.s.e eVar) {
        Object obj;
        try {
            a(aVar.hashCode(), "native_outer_download_listener_key", eVar);
            u.e("setDeveloperDownloadListener=" + eVar);
            try {
                ConcurrentHashMap<Integer, HashMap<String, Object>> concurrentHashMap = this.f48113G;
                if (concurrentHashMap == null || (obj = concurrentHashMap.get(Integer.valueOf(aVar.hashCode())).get("native_inner_download_listener_key")) == null) {
                    return;
                }
                ((a.z) obj).a(eVar);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public void a(com.ubix.ssp.ad.d.a aVar, com.ubix.ssp.ad.g.c cVar) {
        a(aVar.hashCode(), "native_custom_confirm_window_listener_key", cVar);
    }

    public void a(com.ubix.ssp.ad.d.a aVar, UBiXNativeVideoListener uBiXNativeVideoListener) {
        a(aVar.hashCode(), "video_listener_key", uBiXNativeVideoListener);
    }

    public void a(com.ubix.ssp.ad.d.a aVar, UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener) {
        a(aVar, a(aVar.f45759a), new i(uBiXNativeExpressInteractionListener));
    }

    @Override // com.ubix.ssp.ad.a
    public void a(com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        try {
            a.y yVar = (a.y) this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_confirm_window_listener_key");
            if (yVar != null) {
                yVar.a(false);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        super.a(aVar, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.ubix.ssp.ad.d.a aVar, List<View> list, View view, int i2, UBiXNativeInteractionListener uBiXNativeInteractionListener) {
        for (View view2 : list) {
            if (view2 != null) {
                view2.setOnTouchListener(new p(aVar, view2, i2, uBiXNativeInteractionListener, view));
            }
        }
    }

    public void a(com.ubix.ssp.ad.d.a aVar, boolean z2) {
        List<View.OnAttachStateChangeListener> list;
        HashMap<String, Object> map = this.f48113G.get(Integer.valueOf(aVar.hashCode()));
        Object obj = map.get("custom_shake_sensor");
        Object obj2 = map.get("custom_native_container");
        if (obj != null) {
            if (!z2) {
                s sVar = (s) obj;
                sVar.f();
                sVar.a();
                return;
            }
            try {
                ((s) obj).f();
                ((s) obj).a();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (obj2 != null) {
                ConcurrentHashMap<Integer, List<View.OnAttachStateChangeListener>> concurrentHashMap = f48110D;
                if (concurrentHashMap != null && !concurrentHashMap.isEmpty() && (list = f48110D.get(Integer.valueOf(obj2.hashCode()))) != null && !list.isEmpty()) {
                    for (View.OnAttachStateChangeListener onAttachStateChangeListener : list) {
                        if (onAttachStateChangeListener != null) {
                            ((ViewGroup) obj2).removeOnAttachStateChangeListener(onAttachStateChangeListener);
                        }
                    }
                }
                ViewGroup viewGroup = (ViewGroup) obj2;
                if (viewGroup.isAttachedToWindow()) {
                    ((s) obj).a(new j(obj2, aVar));
                }
                List<View.OnAttachStateChangeListener> arrayList = f48110D.get(Integer.valueOf(obj2.hashCode()));
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    f48110D.put(Integer.valueOf(obj2.hashCode()), arrayList);
                }
                k kVar = new k(obj, obj2, aVar);
                arrayList.add(kVar);
                viewGroup.addOnAttachStateChangeListener(kVar);
            }
        }
    }

    public void a(String str, View view, com.ubix.ssp.ad.d.a aVar, HashMap<String, String> map) {
        View view2;
        View view3;
        UBiXNativeInteractionListener uBiXNativeInteractionListener;
        if (aVar == null) {
            return;
        }
        if (view == null) {
            try {
                view2 = new View(com.ubix.ssp.ad.e.a0.c.e());
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        } else {
            view2 = view;
        }
        com.ubix.ssp.ad.d.l lVarA = a(aVar.f45759a);
        if (lVarA != null && lVarA.z0()) {
            HashMap<String, Object> map2 = this.f48113G.get(Integer.valueOf(aVar.hashCode()));
            if (map2 != null) {
                HashMap map3 = map2.get("native_click_map_key") != null ? (HashMap) map2.get("native_click_map_key") : null;
                if (map3 == null) {
                    map3 = new HashMap();
                }
                map3.put("__CUSTOM_CHECK__", "1");
                view3 = view2;
                if (TextUtils.isEmpty(str)) {
                    map3.put("__CLICK_AREA__", "1");
                    map3.put("__CLICK_TRIGGER__", "1");
                } else {
                    map3.put("__CLICK_AREA__", str);
                    map3.put("__CLICK_TRIGGER__", str);
                }
                if (map != null) {
                    if (map.containsKey(NativeAd.ExtraConstant.CUSTOM_CLICK_DOWN_X)) {
                        map3.put("__DOWN_X__", map.get(NativeAd.ExtraConstant.CUSTOM_CLICK_DOWN_X));
                    } else {
                        map3.put("__DOWN_X__", SigMacroCommon.DEFAULT_XY);
                    }
                    if (map.containsKey(NativeAd.ExtraConstant.CUSTOM_CLICK_DOWN_Y)) {
                        map3.put("__DOWN_Y__", map.get(NativeAd.ExtraConstant.CUSTOM_CLICK_DOWN_Y));
                    } else {
                        map3.put("__DOWN_Y__", SigMacroCommon.DEFAULT_XY);
                    }
                    if (map.containsKey(NativeAd.ExtraConstant.CUSTOM_CLICK_RAW_DOWN_X)) {
                        map3.put("__RAW_DOWN_X__", map.get(NativeAd.ExtraConstant.CUSTOM_CLICK_RAW_DOWN_X));
                    } else {
                        map3.put("__RAW_DOWN_X__", SigMacroCommon.DEFAULT_XY);
                    }
                    if (map.containsKey(NativeAd.ExtraConstant.CUSTOM_CLICK_RAW_DOWN_Y)) {
                        map3.put("__RAW_DOWN_Y__", map.get(NativeAd.ExtraConstant.CUSTOM_CLICK_RAW_DOWN_Y));
                    } else {
                        map3.put("__RAW_DOWN_Y__", SigMacroCommon.DEFAULT_XY);
                    }
                    if (map.containsKey(NativeAd.ExtraConstant.CUSTOM_CLICK_UP_X)) {
                        map3.put("__UP_X__", map.get(NativeAd.ExtraConstant.CUSTOM_CLICK_UP_X));
                    } else {
                        map3.put("__UP_X__", SigMacroCommon.DEFAULT_XY);
                    }
                    if (map.containsKey(NativeAd.ExtraConstant.CUSTOM_CLICK_UP_Y)) {
                        map3.put("__UP_Y__", map.get(NativeAd.ExtraConstant.CUSTOM_CLICK_UP_Y));
                    } else {
                        map3.put("__UP_Y__", SigMacroCommon.DEFAULT_XY);
                    }
                    if (map.containsKey(NativeAd.ExtraConstant.CUSTOM_CLICK_RAW_UP_X)) {
                        map3.put("__RAW_UP_X__", map.get(NativeAd.ExtraConstant.CUSTOM_CLICK_RAW_UP_X));
                    } else {
                        map3.put("__RAW_UP_X__", SigMacroCommon.DEFAULT_XY);
                    }
                    if (map.containsKey(NativeAd.ExtraConstant.CUSTOM_CLICK_RAW_UP_Y)) {
                        map3.put("__RAW_UP_Y__", map.get(NativeAd.ExtraConstant.CUSTOM_CLICK_RAW_UP_Y));
                    } else {
                        map3.put("__RAW_UP_Y__", SigMacroCommon.DEFAULT_XY);
                    }
                }
                a(aVar.hashCode(), "native_click_map_key", map3);
            } else {
                view3 = view2;
            }
            try {
                uBiXNativeInteractionListener = (UBiXNativeInteractionListener) this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("interaction_listener_key");
            } catch (Exception e2) {
                e2.printStackTrace();
                uBiXNativeInteractionListener = null;
            }
            a(view3, aVar, uBiXNativeInteractionListener);
        }
    }

    @Override // com.ubix.ssp.ad.a
    public void a(String str, Object obj) {
        super.a(str, obj);
    }

    private void a(ArrayList<NativeAd> arrayList) {
        if (this.f45545i != 3) {
            super.u();
        }
        com.ubix.ssp.ad.g.g gVar = this.f48112F;
        if (gVar != null) {
            gVar.a(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(HashMap<String, String> map, View view, MotionEvent motionEvent) {
        String str;
        String str2;
        try {
            u.b("--------touchXY", "action: " + motionEvent.getAction() + " getX:" + motionEvent.getX());
            if (motionEvent.getAction() == 0) {
                map.put("__DOWN_X__", motionEvent.getX() + "");
                map.put("__DOWN_Y__", motionEvent.getY() + "");
                map.put("__RAW_DOWN_X__", motionEvent.getRawX() + "");
                str = motionEvent.getRawY() + "";
                str2 = "__RAW_DOWN_Y__";
            } else {
                if (motionEvent.getAction() != 1) {
                    return;
                }
                map.put("__UP_X__", motionEvent.getX() + "");
                map.put("__UP_Y__", motionEvent.getY() + "");
                map.put("__WIDTH__", view.getWidth() + "");
                map.put("__HEIGHT__", view.getHeight() + "");
                map.put("__RAW_UP_X__", motionEvent.getRawX() + "");
                map.put("__RAW_UP_Y__", motionEvent.getRawY() + "");
                str = motionEvent.getX() + "_" + motionEvent.getY();
                str2 = "__CLICK_XY__";
            }
            map.put(str2, str);
        } catch (Exception unused) {
        }
    }

    public boolean a(com.ubix.ssp.ad.d.a aVar, View view, HashMap<String, String> map, UBiXNativeInteractionListener uBiXNativeInteractionListener, UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener, com.ubix.ssp.ad.g.c cVar) {
        if (i()) {
            return false;
        }
        d(aVar, map);
        a(view, aVar, uBiXNativeInteractionListener, uBiXNativeExpressInteractionListener);
        if (view != null) {
            map.put("__BUTTON_AREA__", view.getLeft() + "_" + view.getTop() + "_" + view.getRight() + "_" + view.getBottom());
            StringBuilder sb = new StringBuilder();
            sb.append(view.getWidth());
            sb.append("");
            map.put("__WIDTH__", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(view.getHeight());
            sb2.append("");
            map.put("__HEIGHT__", sb2.toString());
        }
        int iA = a(aVar, this.f45545i, map, aVar.f45773o, a(aVar.f45759a).o() == 1, cVar);
        if (iA == 6) {
            try {
                a.y yVar = (a.y) this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_confirm_window_listener_key");
                if (yVar != null) {
                    yVar.a();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            a(4, aVar);
        } else if (iA == 4) {
            try {
                a.y yVar2 = (a.y) this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_confirm_window_listener_key");
                if (yVar2 != null) {
                    yVar2.a(true);
                }
                A();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            a(4, aVar);
        } else if (iA == 22) {
            if (view != null) {
                b(view.getContext(), aVar, map, a(aVar.f45759a).q());
            }
        } else if (iA == 23) {
            if (view != null) {
                a(view.getContext(), aVar, map, a(aVar.f45759a).q());
            }
        } else if (iA == 2 || iA == 5 || iA == 31) {
            if (iA == 31) {
                g((String) null);
            }
            if (view != null) {
                a(view.getContext(), aVar, map);
            }
        } else if (iA == 3) {
            b(this.f45539c);
        } else if (iA == 33) {
            a(33, aVar);
        } else {
            a(1, new Object[0]);
        }
        a(0, aVar);
        return true;
    }

    @Override // com.ubix.ssp.ad.a
    public boolean a(com.ubix.ssp.ad.d.a aVar, boolean z2, HashMap<String, String> map) {
        try {
            int iB = com.ubix.ssp.ad.e.s.b.c().b(aVar.f45773o);
            b(aVar);
            if (!z2 && iB == 44) {
                com.ubix.ssp.ad.e.s.b.c().a(this.f45539c, aVar.f45773o);
                SoftReference<com.ubix.ssp.ad.e.z.h> softReference = this.f45555s;
                if (softReference != null && softReference.get() != null) {
                    ((com.ubix.ssp.ad.e.z.e) this.f45555s.get()).setText("下载继续");
                }
                return false;
            }
            if (iB == 45) {
                Object obj = this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_inner_download_listener_key");
                if (!com.ubix.ssp.ad.e.s.c.a().b((com.ubix.ssp.ad.e.s.e) obj)) {
                    com.ubix.ssp.ad.e.s.c.a().a((com.ubix.ssp.ad.e.s.e) obj);
                }
                com.ubix.ssp.ad.e.s.b.c().b(this.f45539c, aVar.f45773o);
                return false;
            }
            Object objA = this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_inner_download_listener_key");
            UBiXNativeInteractionListener uBiXNativeInteractionListener = (UBiXNativeInteractionListener) this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("interaction_listener_key");
            u.e("setDeveloperDownloadListener triggerGlobalDownloadWindow " + objA);
            if (objA == null) {
                objA = a(map, this.f45541e.indexOf(aVar), (com.ubix.ssp.ad.e.s.e) this.f48113G.get(Integer.valueOf(aVar.hashCode())).get("native_outer_download_listener_key"), uBiXNativeInteractionListener);
                a(aVar.hashCode(), "native_inner_download_listener_key", objA);
            }
            if (com.ubix.ssp.ad.e.s.c.a().b((com.ubix.ssp.ad.e.s.e) objA)) {
                return true;
            }
            com.ubix.ssp.ad.e.s.c.a().a((com.ubix.ssp.ad.e.s.e) objA);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return true;
        }
    }
}
