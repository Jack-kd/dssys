package com.qq.e.ads.nativ;

import android.content.Context;
import android.text.TextUtils;
import com.qq.e.ads.NativeAbstractAD;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.pi.NUADI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class NativeUnifiedAD extends NativeAbstractAD<NUADI> {

    /* renamed from: h, reason: collision with root package name */
    private AdListenerAdapter f35234h;

    /* renamed from: i, reason: collision with root package name */
    private NativeADUnifiedListener f35235i;

    /* renamed from: j, reason: collision with root package name */
    private List<Integer> f35236j = new ArrayList();

    /* renamed from: k, reason: collision with root package name */
    private List<String> f35237k;

    /* renamed from: l, reason: collision with root package name */
    private volatile int f35238l;

    /* renamed from: m, reason: collision with root package name */
    private volatile int f35239m;

    /* renamed from: n, reason: collision with root package name */
    private String f35240n;

    /* renamed from: o, reason: collision with root package name */
    private LoadAdParams f35241o;

    public static class AdListenerAdapter implements ADListener {

        /* renamed from: a, reason: collision with root package name */
        private NativeADUnifiedListener f35242a;

        public AdListenerAdapter(NativeADUnifiedListener nativeADUnifiedListener) {
            this.f35242a = nativeADUnifiedListener;
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            if (this.f35242a != null) {
                int type = aDEvent.getType();
                if (type != 100) {
                    if (type != 101) {
                        return;
                    }
                    this.f35242a.onNoAD(AdErrorConvertor.getAdError(aDEvent));
                    return;
                }
                List list = (List) aDEvent.getParam(List.class);
                if (list == null || list.size() <= 0) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new NativeUnifiedADDataAdapter((NativeUnifiedADData) it.next()));
                }
                this.f35242a.onADLoaded(arrayList);
            }
        }
    }

    public NativeUnifiedAD(Context context, String str, NativeADUnifiedListener nativeADUnifiedListener) {
        this.f35235i = nativeADUnifiedListener;
        this.f35234h = new AdListenerAdapter(nativeADUnifiedListener);
        a(context, str);
    }

    @Override // com.qq.e.ads.AbstractAD
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public NUADI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getNativeAdManagerDelegate(context, str, str2, str3, this.f35234h);
    }

    public String getAdNetWorkName() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            return ((NUADI) t2).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public void loadData(int i2) {
        a(i2, true);
    }

    public void setCategories(List<String> list) {
        this.f35237k = list;
        T t2 = this.f35123a;
        if (t2 == 0 || list == null) {
            return;
        }
        ((NUADI) t2).setCategories(list);
    }

    public void setMaxVideoDuration(int i2) {
        this.f35239m = i2;
        if (this.f35239m > 0 && this.f35238l > this.f35239m) {
            GDTLogger.e("maxVideoDuration 设置值非法，不得小于minVideoDuration");
        }
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((NUADI) t2).setMaxVideoDuration(this.f35239m);
        }
    }

    public void setMinVideoDuration(int i2) {
        this.f35238l = i2;
        if (this.f35239m > 0 && this.f35238l > this.f35239m) {
            GDTLogger.e("minVideoDuration 设置值非法，不得大于maxVideoDuration");
        }
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((NUADI) t2).setMinVideoDuration(this.f35238l);
        }
    }

    public void setVastClassName(String str) {
        if (TextUtils.isEmpty(str)) {
            GDTLogger.e("Vast class name 不能为空");
            return;
        }
        this.f35240n = str;
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((NUADI) t2).setVastClassName(str);
        }
    }

    public NativeUnifiedAD(Context context, String str, NativeADUnifiedListener nativeADUnifiedListener, String str2) {
        this.f35235i = nativeADUnifiedListener;
        this.f35234h = new AdListenerAdapter(nativeADUnifiedListener);
        a(context, str, str2);
    }

    private void a(int i2, boolean z2) {
        if (a()) {
            if (!b()) {
                if (z2) {
                    this.f35236j.add(Integer.valueOf(i2));
                    return;
                }
                return;
            }
            T t2 = this.f35123a;
            if (t2 != 0) {
                LoadAdParams loadAdParams = this.f35241o;
                NUADI nuadi = (NUADI) t2;
                if (loadAdParams != null) {
                    nuadi.loadData(i2, loadAdParams);
                } else {
                    nuadi.loadData(i2);
                }
            }
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    public void b(int i2) {
        NativeADUnifiedListener nativeADUnifiedListener = this.f35235i;
        if (nativeADUnifiedListener != null) {
            nativeADUnifiedListener.onNoAD(AdErrorConvertor.formatErrorCode(i2));
        }
    }

    public void loadData(int i2, LoadAdParams loadAdParams) {
        this.f35241o = loadAdParams;
        loadData(i2);
    }

    @Override // com.qq.e.ads.NativeAbstractAD, com.qq.e.ads.AbstractAD
    public void a(NUADI nuadi) {
        super.a((NativeUnifiedAD) nuadi);
        nuadi.setMinVideoDuration(this.f35238l);
        nuadi.setMaxVideoDuration(this.f35239m);
        nuadi.setVastClassName(this.f35240n);
        List<String> list = this.f35237k;
        if (list != null) {
            setCategories(list);
        }
        Iterator<Integer> it = this.f35236j.iterator();
        while (it.hasNext()) {
            a(it.next().intValue(), false);
        }
    }
}
