package com.qq.e.ads.rewardvideo;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.pi.NFBI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.pi.RVADI;
import com.qq.e.comm.util.AdErrorConvertor;
import java.util.HashMap;

/* loaded from: classes4.dex */
public class RewardVideoAD extends LiteAbstractAD<RVADI> implements NFBI {
    public static final int REWARD_TYPE_PAGE = 1;
    public static final int REWARD_TYPE_VIDEO = 0;

    /* renamed from: i, reason: collision with root package name */
    private final RewardVideoADListener f35264i;

    /* renamed from: j, reason: collision with root package name */
    private volatile boolean f35265j;

    /* renamed from: k, reason: collision with root package name */
    private LoadAdParams f35266k;

    /* renamed from: l, reason: collision with root package name */
    private ServerSideVerificationOptions f35267l;

    /* renamed from: m, reason: collision with root package name */
    private final boolean f35268m;

    /* renamed from: n, reason: collision with root package name */
    private final ADListenerAdapter f35269n;

    public static class ADListenerAdapter implements ADListener {

        /* renamed from: a, reason: collision with root package name */
        private NegativeFeedbackListener f35270a;
        public RewardVideoADListener adListener;

        public ADListenerAdapter(RewardVideoADListener rewardVideoADListener) {
            this.adListener = rewardVideoADListener;
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            int type = aDEvent.getType();
            if (type == 100) {
                this.adListener.onADLoad();
                return;
            }
            if (type == 201) {
                this.adListener.onVideoCached();
                return;
            }
            if (type == 206) {
                this.adListener.onVideoComplete();
                return;
            }
            if (type == 304) {
                NegativeFeedbackListener negativeFeedbackListener = this.f35270a;
                if (negativeFeedbackListener != null) {
                    negativeFeedbackListener.onComplainSuccess();
                    return;
                }
                return;
            }
            switch (type) {
                case 102:
                    this.adListener.onADShow();
                    break;
                case 103:
                    this.adListener.onADExpose();
                    break;
                case 104:
                    HashMap map = new HashMap();
                    String str = (String) aDEvent.getParam(String.class);
                    if (str != null) {
                        map.put("transId", str);
                    }
                    Integer num = (Integer) aDEvent.getParam(1, Integer.class);
                    if (num != null) {
                        map.put(ServerSideVerificationOptions.ACTION, num);
                    }
                    String str2 = (String) aDEvent.getParam(2, String.class);
                    if (!TextUtils.isEmpty(str2)) {
                        map.put(IReward.DEV_EXT, str2);
                    }
                    this.adListener.onReward(map);
                    break;
                case 105:
                    this.adListener.onADClick();
                    break;
                case 106:
                    this.adListener.onADClose();
                    break;
                case 107:
                    this.adListener.onError(AdErrorConvertor.getAdError(aDEvent));
                    break;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(NegativeFeedbackListener negativeFeedbackListener) {
            this.f35270a = negativeFeedbackListener;
        }
    }

    public RewardVideoAD(Context context, String str, RewardVideoADListener rewardVideoADListener) {
        this(context, str, rewardVideoADListener, true);
    }

    @Override // com.qq.e.ads.AbstractAD
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public RVADI a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getRewardVideoADDelegate(context, str, str2, str3, this.f35269n);
    }

    public String getAdNetWorkName() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            return ((RVADI) t2).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public int getRewardAdType() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            return ((RVADI) t2).getRewardAdType();
        }
        a("getRewardAdType");
        return 0;
    }

    public int getVideoDuration() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            return ((RVADI) t2).getVideoDuration();
        }
        a("getVideoDuration");
        return 0;
    }

    public boolean hasShown() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            return ((RVADI) t2).hasShown();
        }
        a("hasShown");
        return false;
    }

    public void loadAD() {
        if (a()) {
            if (!b()) {
                this.f35265j = true;
                return;
            }
            T t2 = this.f35123a;
            if (t2 != 0) {
                ((RVADI) t2).loadAD();
            } else {
                a("loadAD");
            }
        }
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        this.f35266k = loadAdParams;
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((RVADI) t2).setLoadAdParams(loadAdParams);
        }
    }

    @Override // com.qq.e.comm.pi.NFBI
    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f35269n.a(negativeFeedbackListener);
    }

    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f35267l = serverSideVerificationOptions;
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((RVADI) t2).setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public void showAD() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((RVADI) t2).showAD();
        } else {
            a("showAD");
        }
    }

    public RewardVideoAD(Context context, String str, RewardVideoADListener rewardVideoADListener, boolean z2) {
        this(rewardVideoADListener, z2);
        a(context, str);
    }

    @Override // com.qq.e.ads.AbstractAD
    public void a(RVADI rvadi) {
        rvadi.setVolumeOn(this.f35268m);
        rvadi.setLoadAdParams(this.f35266k);
        rvadi.setServerSideVerificationOptions(this.f35267l);
        if (this.f35265j) {
            loadAD();
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    public void b(int i2) {
        RewardVideoADListener rewardVideoADListener = this.f35264i;
        if (rewardVideoADListener != null) {
            rewardVideoADListener.onError(AdErrorConvertor.formatErrorCode(i2));
        }
    }

    public void showAD(Activity activity) {
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((RVADI) t2).showAD(activity);
        } else {
            a("showAD");
        }
    }

    public RewardVideoAD(Context context, String str, RewardVideoADListener rewardVideoADListener, boolean z2, String str2) {
        this(rewardVideoADListener, z2);
        a(context, str, str2);
    }

    private RewardVideoAD(RewardVideoADListener rewardVideoADListener, boolean z2) {
        this.f35266k = null;
        this.f35268m = z2;
        this.f35264i = rewardVideoADListener;
        this.f35269n = new ADListenerAdapter(rewardVideoADListener);
    }
}
