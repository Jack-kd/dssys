package com.qq.e.ads.nativ;

import android.content.Context;
import android.text.TextUtils;
import com.qq.e.ads.NativeAbstractAD;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.ADRewardListener;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.pi.NEADI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes4.dex */
public class NativeExpressAD extends NativeAbstractAD<NEADI> implements IReward {

    /* renamed from: h, reason: collision with root package name */
    private volatile int f35218h;

    /* renamed from: i, reason: collision with root package name */
    private volatile int f35219i;

    /* renamed from: j, reason: collision with root package name */
    private List<Integer> f35220j = Collections.synchronizedList(new ArrayList());

    /* renamed from: k, reason: collision with root package name */
    private VideoOption f35221k;

    /* renamed from: l, reason: collision with root package name */
    private ADSize f35222l;

    /* renamed from: m, reason: collision with root package name */
    private NativeExpressADListener f35223m;

    /* renamed from: n, reason: collision with root package name */
    private final ADListenerAdapter f35224n;

    /* renamed from: o, reason: collision with root package name */
    private LoadAdParams f35225o;

    /* renamed from: p, reason: collision with root package name */
    private volatile ServerSideVerificationOptions f35226p;

    public static class ADListenerAdapter implements ADListener {

        /* renamed from: a, reason: collision with root package name */
        private NativeExpressADListener f35227a;

        /* renamed from: b, reason: collision with root package name */
        private NativeExpressMediaListener f35228b;

        /* renamed from: c, reason: collision with root package name */
        private NegativeFeedbackListener f35229c;

        /* renamed from: d, reason: collision with root package name */
        private ADRewardListener f35230d;

        public ADListenerAdapter(NativeExpressADListener nativeExpressADListener) {
            this.f35227a = nativeExpressADListener;
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            if (NativeExpressAD.b(this.f35227a, aDEvent) || NativeExpressAD.b(this.f35228b, aDEvent) || NativeExpressAD.b(this.f35229c, aDEvent)) {
                return;
            }
            NativeExpressAD.b(this.f35230d, aDEvent);
        }

        public void setAdRewardListener(ADRewardListener aDRewardListener) {
            this.f35230d = aDRewardListener;
        }

        public void setMediaListener(NativeExpressMediaListener nativeExpressMediaListener) {
            this.f35228b = nativeExpressMediaListener;
        }

        public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
            this.f35229c = negativeFeedbackListener;
        }

        public ADListenerAdapter(NativeExpressMediaListener nativeExpressMediaListener) {
            this.f35228b = nativeExpressMediaListener;
        }
    }

    public interface NativeExpressADListener extends NativeAbstractAD.BasicADListener {
        void onADClicked(NativeExpressADView nativeExpressADView);

        void onADClosed(NativeExpressADView nativeExpressADView);

        void onADExposure(NativeExpressADView nativeExpressADView);

        void onADLeftApplication(NativeExpressADView nativeExpressADView);

        void onADLoaded(List<NativeExpressADView> list);

        void onRenderFail(NativeExpressADView nativeExpressADView);

        void onRenderSuccess(NativeExpressADView nativeExpressADView);
    }

    public NativeExpressAD(Context context, ADSize aDSize, String str, NativeExpressADListener nativeExpressADListener) {
        this.f35223m = nativeExpressADListener;
        this.f35224n = new ADListenerAdapter(nativeExpressADListener);
        if (a(aDSize)) {
            return;
        }
        a(context, str);
    }

    @Override // com.qq.e.ads.AbstractAD
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public NEADI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getNativeExpressADDelegate(context, this.f35222l, str, str2, str3, this.f35224n);
    }

    public String getAdNetWorkName() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            return ((NEADI) t2).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public void loadAD(int i2) {
        loadAD(i2, null);
    }

    public void setAdParams(LoadAdParams loadAdParams) {
        this.f35225o = loadAdParams;
    }

    public void setMaxVideoDuration(int i2) {
        this.f35219i = i2;
        if (this.f35219i > 0 && this.f35218h > this.f35219i) {
            GDTLogger.e("maxVideoDuration 设置值非法，不得小于minVideoDuration");
        }
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((NEADI) t2).setMaxVideoDuration(this.f35219i);
        }
    }

    public void setMinVideoDuration(int i2) {
        this.f35218h = i2;
        if (this.f35219i > 0 && this.f35218h > this.f35219i) {
            GDTLogger.e("minVideoDuration 设置值非法，不得大于maxVideoDuration");
        }
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((NEADI) t2).setMinVideoDuration(this.f35218h);
        }
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setRewardListener(ADRewardListener aDRewardListener) {
        this.f35224n.setAdRewardListener(aDRewardListener);
    }

    @Override // com.qq.e.comm.pi.IReward
    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f35226p = serverSideVerificationOptions;
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((NEADI) t2).setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public void setVideoOption(VideoOption videoOption) {
        this.f35221k = videoOption;
        T t2 = this.f35123a;
        if (t2 == 0 || videoOption == null) {
            return;
        }
        ((NEADI) t2).setVideoOption(videoOption);
    }

    public NativeExpressAD(Context context, ADSize aDSize, String str, NativeExpressADListener nativeExpressADListener, String str2) {
        this.f35223m = nativeExpressADListener;
        this.f35224n = new ADListenerAdapter(nativeExpressADListener);
        if (a(aDSize)) {
            return;
        }
        a(context, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(NativeExpressADListener nativeExpressADListener, ADEvent aDEvent) {
        if (nativeExpressADListener == null) {
            return false;
        }
        int type = aDEvent.getType();
        if (type == 100) {
            List<NativeExpressADView> list = (List) aDEvent.getParam(List.class);
            if (list == null) {
                return true;
            }
            nativeExpressADListener.onADLoaded(list);
            return true;
        }
        if (type == 101) {
            nativeExpressADListener.onNoAD(AdErrorConvertor.getAdError(aDEvent));
            return true;
        }
        if (type == 103) {
            NativeExpressADView nativeExpressADView = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
            if (nativeExpressADView == null) {
                return true;
            }
            nativeExpressADListener.onADExposure(nativeExpressADView);
            return true;
        }
        if (type == 303) {
            NativeExpressADView nativeExpressADView2 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
            if (nativeExpressADView2 == null) {
                return true;
            }
            nativeExpressADListener.onADLeftApplication(nativeExpressADView2);
            return true;
        }
        if (type == 105) {
            NativeExpressADView nativeExpressADView3 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
            if (nativeExpressADView3 == null) {
                return true;
            }
            nativeExpressADListener.onADClicked(nativeExpressADView3);
            return true;
        }
        if (type == 106) {
            NativeExpressADView nativeExpressADView4 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
            if (nativeExpressADView4 == null) {
                return true;
            }
            nativeExpressADListener.onADClosed(nativeExpressADView4);
            nativeExpressADView4.negativeFeedback();
            return true;
        }
        if (type == 109) {
            NativeExpressADView nativeExpressADView5 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
            if (nativeExpressADView5 == null) {
                return true;
            }
            nativeExpressADListener.onRenderSuccess(nativeExpressADView5);
            return true;
        }
        if (type != 110) {
            return false;
        }
        NativeExpressADView nativeExpressADView6 = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class);
        if (nativeExpressADView6 == null) {
            return true;
        }
        nativeExpressADListener.onRenderFail(nativeExpressADView6);
        return true;
    }

    public void loadAD(int i2, LoadAdParams loadAdParams) {
        if (a()) {
            if (loadAdParams != null) {
                setAdParams(loadAdParams);
            }
            if (!b()) {
                synchronized (this.f35220j) {
                    this.f35220j.add(Integer.valueOf(i2));
                }
                return;
            }
            T t2 = this.f35123a;
            if (t2 == 0) {
                a("loadAD");
                return;
            }
            LoadAdParams loadAdParams2 = this.f35225o;
            NEADI neadi = (NEADI) t2;
            if (loadAdParams2 != null) {
                neadi.loadAd(i2, loadAdParams2);
            } else {
                neadi.loadAd(i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(NativeExpressMediaListener nativeExpressMediaListener, ADEvent aDEvent) {
        NativeExpressADView nativeExpressADView;
        if (nativeExpressMediaListener == null || (nativeExpressADView = (NativeExpressADView) aDEvent.getParam(NativeExpressADView.class)) == null) {
            return false;
        }
        int type = aDEvent.getType();
        if (type == 201) {
            nativeExpressMediaListener.onVideoCached(nativeExpressADView);
        } else if (type == 202) {
            nativeExpressMediaListener.onVideoStart(nativeExpressADView);
        } else if (type == 204) {
            nativeExpressMediaListener.onVideoPause(nativeExpressADView);
        } else if (type == 206) {
            nativeExpressMediaListener.onVideoComplete(nativeExpressADView);
        } else if (type == 207) {
            Integer num = (Integer) aDEvent.getParam(1, Integer.class);
            if (num != null) {
                nativeExpressMediaListener.onVideoError(nativeExpressADView, AdErrorConvertor.formatErrorCode(num.intValue()));
            }
        } else if (type == 301) {
            nativeExpressMediaListener.onVideoPageOpen(nativeExpressADView);
        } else if (type != 302) {
            switch (type) {
                case 209:
                    nativeExpressMediaListener.onVideoInit(nativeExpressADView);
                    break;
                case 210:
                    if (((Integer) aDEvent.getParam(1, Integer.class)) != null) {
                        nativeExpressMediaListener.onVideoReady(nativeExpressADView, r7.intValue());
                        break;
                    }
                    break;
                case 211:
                    nativeExpressMediaListener.onVideoLoading(nativeExpressADView);
                    break;
                default:
                    return false;
            }
        } else {
            nativeExpressMediaListener.onVideoPageClose(nativeExpressADView);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(NegativeFeedbackListener negativeFeedbackListener, ADEvent aDEvent) {
        if (negativeFeedbackListener == null || aDEvent.getType() != 304) {
            return false;
        }
        negativeFeedbackListener.onComplainSuccess();
        return true;
    }

    private boolean a(ADSize aDSize) {
        if (aDSize != null) {
            this.f35222l = aDSize;
            return false;
        }
        GDTLogger.e("初始化错误：参数adSize不能为空");
        a(2001);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(ADRewardListener aDRewardListener, ADEvent aDEvent) {
        if (aDRewardListener == null || aDEvent.getType() != 104) {
            return false;
        }
        Map<String, Object> map = new HashMap<>();
        Object obj = (String) aDEvent.getParam(String.class);
        if (obj != null) {
            map.put("transId", obj);
        }
        String str = (String) aDEvent.getParam(1, String.class);
        if (!TextUtils.isEmpty(str)) {
            map.put(IReward.DEV_EXT, str);
        }
        Object obj2 = (NativeExpressADView) aDEvent.getParam(2, NativeExpressADView.class);
        if (obj2 != null) {
            map.put(IReward.AD_VIEW, obj2);
        }
        aDRewardListener.onReward(map);
        return true;
    }

    @Override // com.qq.e.ads.AbstractAD
    public void b(int i2) {
        NativeExpressADListener nativeExpressADListener = this.f35223m;
        if (nativeExpressADListener != null) {
            nativeExpressADListener.onNoAD(AdErrorConvertor.formatErrorCode(i2));
        }
    }

    @Override // com.qq.e.ads.NativeAbstractAD, com.qq.e.ads.AbstractAD
    public void a(NEADI neadi) {
        super.a((NativeExpressAD) neadi);
        neadi.setMinVideoDuration(this.f35218h);
        neadi.setMaxVideoDuration(this.f35219i);
        ((NEADI) this.f35123a).setServerSideVerificationOptions(this.f35226p);
        VideoOption videoOption = this.f35221k;
        if (videoOption != null) {
            setVideoOption(videoOption);
        }
        synchronized (this.f35220j) {
            try {
                Iterator<Integer> it = this.f35220j.iterator();
                while (it.hasNext()) {
                    T t2 = this.f35123a;
                    if (t2 != 0) {
                        if (this.f35225o != null) {
                            ((NEADI) t2).loadAd(it.next().intValue(), this.f35225o);
                        } else {
                            ((NEADI) t2).loadAd(it.next().intValue());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
