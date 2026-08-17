package com.ubix.ssp.ad.i;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.kwad.library.solder.lib.ext.PluginError;
import com.meishu.sdk.core.utils.MsAdPatternType;
import com.ubix.ssp.ad.d.i;
import com.ubix.ssp.ad.d.l;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.y.a.a;
import com.ubix.ssp.ad.g.f;
import com.ubix.ssp.ad.g.g;
import com.ubix.ssp.open.AdError;
import com.ubix.ssp.open.AdSize;
import com.ubix.ssp.open.ParamsReview;
import com.ubix.ssp.open.nativee.NativeAd;
import com.ubix.ssp.open.nativee.express.UBiXNativeExpressInteractionListener;
import com.ubix.ssp.open.nativee.express.UBiXNativeExpressVideoListener;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public class d implements g {

    /* renamed from: a, reason: collision with root package name */
    private f f48180a;

    /* renamed from: b, reason: collision with root package name */
    private c f48181b;

    /* renamed from: c, reason: collision with root package name */
    private AdSize f48182c;

    /* renamed from: d, reason: collision with root package name */
    private SoftReference<Context> f48183d;

    /* renamed from: e, reason: collision with root package name */
    private ConcurrentHashMap<Integer, HashMap<String, Object>> f48184e;

    public d(Context context, String str, f fVar) {
        this(context, str, new AdSize(-1, -2), fVar);
    }

    private int a(int i2) {
        HashMap<String, Object> map = this.f48184e.get(Integer.valueOf(i2));
        if (map == null || map.get("native_ad_index_key") == null) {
            return 0;
        }
        try {
            return Integer.parseInt(map.get("native_ad_index_key") + "");
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public RelativeLayout b(NativeAd nativeAd) {
        try {
            HashMap<String, Object> map = this.f48184e.get(Integer.valueOf(nativeAd.hashCode()));
            if (map != null) {
                return (RelativeLayout) map.get("native_parent_view_key");
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public ParamsReview c(NativeAd nativeAd) {
        try {
            return this.f48181b.o(this.f48181b.n(a(nativeAd.hashCode())));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public boolean d(NativeAd nativeAd) {
        try {
            c cVar = this.f48181b;
            if (cVar != null) {
                return cVar.s(cVar.n(a(nativeAd.hashCode())));
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // com.ubix.ssp.ad.g.g
    public void onAdLoadFailed(AdError adError) {
        f fVar = this.f48180a;
        if (fVar != null) {
            fVar.onAdLoadFailed(adError);
        }
    }

    public d(Context context, String str, AdSize adSize, f fVar) {
        this.f48184e = new ConcurrentHashMap<>();
        this.f48183d = new SoftReference<>(context);
        this.f48180a = fVar;
        this.f48182c = adSize == null ? new AdSize(-1, -2) : adSize;
        this.f48181b = new c(context, str, this);
    }

    private AdError a(com.ubix.ssp.ad.d.a aVar) {
        int i2;
        String str;
        a.b.C0834b c0834b;
        if (aVar == null) {
            return com.ubix.ssp.ad.e.a0.a0.a.k(16, "广告模板Id异常,或资源与模板不匹配");
        }
        switch (aVar.f45774p) {
            case 2001:
            case 2002:
            case 2003:
            case PluginError.ERROR_UPD_EXTRACT /* 2004 */:
            case PluginError.ERROR_UPD_CAPACITY /* 2005 */:
            case PluginError.ERROR_UPD_REQUEST /* 2006 */:
            case PluginError.ERROR_UPD_NOT_WIFI_DOWNLOAD /* 2007 */:
                a.b.C0834b[] c0834bArr = aVar.f45759a.f47442d.f47480j;
                if (c0834bArr != null && c0834bArr.length != 0 && (c0834b = c0834bArr[0]) != null && !TextUtils.isEmpty(c0834b.f47499c)) {
                    return null;
                }
                i2 = 10;
                str = "图片资源链接异常";
                break;
            case PluginError.ERROR_UPD_NO_DOWNLOADER /* 2008 */:
            case PluginError.ERROR_UPD_FILE_NOT_FOUND /* 2009 */:
            case PluginError.ERROR_UPD_PLUGIN_CONNECTION /* 2010 */:
            default:
                return com.ubix.ssp.ad.e.a0.a0.a.k(16, "广告模板Id异常,或资源与模板不匹配");
            case 2011:
            case 2012:
            case 2013:
            case 2014:
                a.b.l lVar = aVar.f45759a.f47442d.f47481k;
                if (lVar == null || TextUtils.isEmpty(lVar.f47537c)) {
                    i2 = 13;
                    str = "封面图资源链接异常";
                    break;
                } else {
                    a.b.l lVar2 = aVar.f45759a.f47442d.f47481k;
                    if (lVar2 != null && !TextUtils.isEmpty(lVar2.f47536b)) {
                        return null;
                    }
                    i2 = 12;
                    str = "视频资源链接异常";
                    break;
                }
                break;
        }
        return com.ubix.ssp.ad.e.a0.a0.a.k(i2, str);
    }

    public void b() {
        b(1);
    }

    public String a() {
        c cVar = this.f48181b;
        if (cVar != null) {
            return cVar.B();
        }
        return null;
    }

    public void b(int i2) {
        this.f48181b.m(i2);
    }

    private void a(int i2, String str, Object obj) {
        HashMap<String, Object> map = this.f48184e.get(Integer.valueOf(i2));
        if (map != null) {
            map.put(str, obj);
            return;
        }
        HashMap<String, Object> map2 = new HashMap<>();
        map2.put(str, obj);
        this.f48184e.put(Integer.valueOf(i2), map2);
    }

    public void a(NativeAd nativeAd) {
        if (nativeAd == null) {
            return;
        }
        try {
            HashMap<String, Object> map = this.f48184e.get(Integer.valueOf(nativeAd.hashCode()));
            if (map != null) {
                a aVar = (a) map.get("native_core_view");
                ViewGroup viewGroup = (ViewGroup) map.get("native_parent_view_key");
                if (viewGroup != null) {
                    viewGroup.removeAllViews();
                }
                if (aVar != null) {
                    aVar.j();
                }
                map.clear();
            }
            nativeAd.destroy();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(NativeAd nativeAd, long j2) {
        this.f48181b.a(this.f48181b.n(a(nativeAd.hashCode())), j2);
    }

    public void a(NativeAd nativeAd, UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener) {
        a aVar;
        RelativeLayout relativeLayout;
        a.b bVar;
        a.b.C0833a c0833a;
        a.b.e eVar;
        c cVar = this.f48181b;
        if (cVar == null) {
            AdError adErrorG = com.ubix.ssp.ad.e.a0.a0.a.g(12, "参数异常");
            u.e("onAdRenderFailed in");
            if (uBiXNativeExpressInteractionListener != null) {
                uBiXNativeExpressInteractionListener.onAdRenderFailed(adErrorG);
            }
            u.e("onAdRenderFailed out");
            return;
        }
        cVar.v();
        ArrayList<String> arrayList = new ArrayList<>();
        ArrayList<String> arrayList2 = new ArrayList<>();
        Bundle bundle = new Bundle();
        int iA = a(nativeAd.hashCode());
        try {
            l lVarP = this.f48181b.p(iA);
            if (lVarP == null || iA < 0) {
                AdError adErrorG2 = com.ubix.ssp.ad.e.a0.a0.a.g(12, "参数异常");
                u.e("onAdRenderFailed in");
                if (uBiXNativeExpressInteractionListener != null) {
                    uBiXNativeExpressInteractionListener.onAdRenderFailed(adErrorG2);
                }
                u.e("onAdRenderFailed out");
                return;
            }
            if (!d(nativeAd)) {
                AdError adErrorG3 = com.ubix.ssp.ad.e.a0.a0.a.g(4, "文件已经过期");
                u.e("onAdRenderFailed in");
                if (uBiXNativeExpressInteractionListener != null) {
                    uBiXNativeExpressInteractionListener.onAdRenderFailed(adErrorG3);
                }
                u.e("onAdRenderFailed out");
                return;
            }
            com.ubix.ssp.ad.d.a aVarN = this.f48181b.n(iA);
            bundle.putInt("AD_WIDTH", this.f48182c.getWidth());
            bundle.putInt("AD_HEIGHT", this.f48182c.getHeight());
            bundle.putString("TITLE", nativeAd.getDesc());
            bundle.putInt("TEMPLATE_ID", aVarN.f45774p);
            if (lVarP.b()) {
                bundle.putString("AD_SOURCE", nativeAd.getAdSource());
            }
            bundle.putString("BUTTON_TEXT", nativeAd.getActionButtonText());
            bundle.putBoolean("AUTO_MUTE", lVarP.K0());
            bundle.putInt("AUTO_PLAY", lVarP.c());
            bundle.putBoolean("DO_NOT_RESTRICT_SIZE", true);
            bundle.putBoolean("IS_DOWNLOAD", nativeAd.isDownloadAd());
            bundle.putInt("VIDEO_RENDER_TYPE", lVarP.k0());
            bundle.putBoolean("isSlided", aVarN.f45778t);
            bundle.putBoolean("IS_UNNAMED", lVarP.G0());
            com.ubix.ssp.ad.e.y.a.a aVar2 = aVarN.f45759a;
            if (aVar2 != null && (bVar = aVar2.f47442d) != null && (c0833a = bVar.f47467O) != null && (eVar = c0833a.f47497b) != null) {
                bundle.putFloat("AD_MARGIN_LEFT", eVar.f47512b);
                bundle.putFloat("AD_MARGIN_TOP", aVarN.f45759a.f47442d.f47467O.f47497b.f47513c);
                bundle.putFloat("AD_MARGIN_RIGHT", aVarN.f45759a.f47442d.f47467O.f47497b.f47514d);
                bundle.putFloat("AD_MARGIN_BOTTOM", aVarN.f45759a.f47442d.f47467O.f47497b.f47515e);
            }
            HashMap<String, Object> map = this.f48184e.get(Integer.valueOf(nativeAd.hashCode()));
            Object obj = map.get("native_core_view");
            if (obj == null) {
                aVar = (a) com.ubix.ssp.ad.b.a(this.f48183d.get(), bundle, 2, true);
                if (aVar == null) {
                    if (uBiXNativeExpressInteractionListener != null) {
                        uBiXNativeExpressInteractionListener.onAdRenderFailed(com.ubix.ssp.ad.e.a0.a0.a.g(6, "创建ViewClass失败，请勿重试"));
                        return;
                    }
                    return;
                }
            } else {
                aVar = (a) obj;
            }
            a aVar3 = aVar;
            b bVar2 = new b(this.f48181b, nativeAd, aVar3, lVarP, this.f48184e);
            bVar2.b(uBiXNativeExpressInteractionListener);
            bVar2.a(aVarN, uBiXNativeExpressInteractionListener, arrayList, arrayList2);
            if (aVar3.getParent() == null && this.f48184e != null && map.get("native_parent_view_key") != null && (relativeLayout = (RelativeLayout) map.get("native_parent_view_key")) != null) {
                relativeLayout.addView(aVar3);
            }
            a(nativeAd.hashCode(), "native_core_view", aVar3);
            a(nativeAd.hashCode(), "native_notify_id_key", Integer.valueOf(aVarN.f45773o));
            a(nativeAd.hashCode(), "interaction_listener_key", uBiXNativeExpressInteractionListener);
            a(nativeAd.hashCode(), "native_images_array_key", arrayList);
            a(nativeAd.hashCode(), "native_videos_array_key", arrayList2);
            a(nativeAd.hashCode(), "native_single_render", bVar2);
        } catch (Throwable unused) {
            AdError adErrorG4 = com.ubix.ssp.ad.e.a0.a0.a.g(12, "参数异常");
            u.e("onAdRenderFailed in");
            if (uBiXNativeExpressInteractionListener != null) {
                uBiXNativeExpressInteractionListener.onAdRenderFailed(adErrorG4);
            }
            u.e("onAdRenderFailed out");
        }
    }

    public void a(NativeAd nativeAd, UBiXNativeExpressVideoListener uBiXNativeExpressVideoListener) {
        a(nativeAd.hashCode(), "video_listener_key", uBiXNativeExpressVideoListener);
    }

    public void a(NativeAd nativeAd, HashMap<String, String> map) {
        this.f48181b.c(this.f48181b.n(a(nativeAd.hashCode())), map);
    }

    public void a(String str) {
        this.f48181b.h(str);
    }

    @Override // com.ubix.ssp.ad.g.g
    public void a(ArrayList<NativeAd> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            NativeAd nativeAd = arrayList.get(i2);
            AdError adErrorA = a(this.f48181b.n(i2));
            if (adErrorA != null) {
                f fVar = this.f48180a;
                if (fVar != null) {
                    fVar.onAdLoadFailed(adErrorA);
                    return;
                }
                return;
            }
            i iVar = new i();
            iVar.a(nativeAd);
            iVar.a(this);
            iVar.a(nativeAd.isVideoAd());
            iVar.b(nativeAd.getVideoDuration());
            iVar.a(nativeAd.getCreativeType());
            iVar.a(nativeAd.getPrice());
            arrayList2.add(iVar);
            RelativeLayout relativeLayout = new RelativeLayout(this.f48183d.get());
            relativeLayout.setId(MsAdPatternType.MIX_RENDER);
            String strG = this.f48181b.p(i2).G();
            if (!TextUtils.isEmpty(strG) && strG.startsWith("#")) {
                relativeLayout.setBackgroundColor(Color.parseColor(strG));
            }
            a(nativeAd.hashCode(), "native_ad_bean_key", nativeAd);
            a(nativeAd.hashCode(), "native_parent_view_key", relativeLayout);
            a(nativeAd.hashCode(), "native_ad_index_key", Integer.valueOf(i2));
        }
        f fVar2 = this.f48180a;
        if (fVar2 != null) {
            fVar2.onAdLoadSucceed(arrayList2);
        }
    }

    public void a(HashMap<String, String> map) {
        c cVar = this.f48181b;
        if (cVar != null) {
            cVar.a(map);
        }
    }
}
