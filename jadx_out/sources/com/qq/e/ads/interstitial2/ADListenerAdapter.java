package com.qq.e.ads.interstitial2;

import android.text.TextUtils;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.IReward;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.a;
import java.util.HashMap;

/* loaded from: classes4.dex */
class ADListenerAdapter implements ADListener {

    /* renamed from: a, reason: collision with root package name */
    private final UnifiedInterstitialADListener f35203a;

    /* renamed from: b, reason: collision with root package name */
    private UnifiedInterstitialMediaListener f35204b;

    /* renamed from: c, reason: collision with root package name */
    private com.qq.e.comm.listeners.ADRewardListener f35205c;

    /* renamed from: d, reason: collision with root package name */
    private NegativeFeedbackListener f35206d;

    public ADListenerAdapter(UnifiedInterstitialADListener unifiedInterstitialADListener) {
        this.f35203a = unifiedInterstitialADListener;
    }

    @Override // com.qq.e.comm.adevent.ADListener
    public void onADEvent(ADEvent aDEvent) {
        if (aDEvent == null) {
            return;
        }
        int type = aDEvent.getType();
        if (type == 109) {
            UnifiedInterstitialADListener unifiedInterstitialADListener = this.f35203a;
            if (unifiedInterstitialADListener == null || !a.b(unifiedInterstitialADListener)) {
                return;
            }
            this.f35203a.onRenderSuccess();
            return;
        }
        if (type == 110) {
            UnifiedInterstitialADListener unifiedInterstitialADListener2 = this.f35203a;
            if (unifiedInterstitialADListener2 == null || !a.a(unifiedInterstitialADListener2)) {
                return;
            }
            this.f35203a.onRenderFail();
            return;
        }
        if (type == 201) {
            UnifiedInterstitialADListener unifiedInterstitialADListener3 = this.f35203a;
            if (unifiedInterstitialADListener3 != null) {
                unifiedInterstitialADListener3.onVideoCached();
                return;
            }
            return;
        }
        if (type == 202) {
            UnifiedInterstitialMediaListener unifiedInterstitialMediaListener = this.f35204b;
            if (unifiedInterstitialMediaListener != null) {
                unifiedInterstitialMediaListener.onVideoStart();
                return;
            }
            return;
        }
        if (type == 204) {
            UnifiedInterstitialMediaListener unifiedInterstitialMediaListener2 = this.f35204b;
            if (unifiedInterstitialMediaListener2 != null) {
                unifiedInterstitialMediaListener2.onVideoPause();
                return;
            }
            return;
        }
        if (type == 206) {
            UnifiedInterstitialMediaListener unifiedInterstitialMediaListener3 = this.f35204b;
            if (unifiedInterstitialMediaListener3 != null) {
                unifiedInterstitialMediaListener3.onVideoComplete();
                return;
            }
            return;
        }
        if (type == 207) {
            Integer num = (Integer) aDEvent.getParam(Integer.class);
            UnifiedInterstitialMediaListener unifiedInterstitialMediaListener4 = this.f35204b;
            if (unifiedInterstitialMediaListener4 == null || num == null) {
                return;
            }
            unifiedInterstitialMediaListener4.onVideoError(AdErrorConvertor.formatErrorCode(num.intValue()));
            return;
        }
        switch (type) {
            case 100:
                UnifiedInterstitialADListener unifiedInterstitialADListener4 = this.f35203a;
                if (unifiedInterstitialADListener4 != null) {
                    unifiedInterstitialADListener4.onADReceive();
                    break;
                }
                break;
            case 101:
                UnifiedInterstitialADListener unifiedInterstitialADListener5 = this.f35203a;
                if (unifiedInterstitialADListener5 != null) {
                    unifiedInterstitialADListener5.onNoAD(AdErrorConvertor.getAdError(aDEvent));
                    break;
                }
                break;
            case 102:
                UnifiedInterstitialADListener unifiedInterstitialADListener6 = this.f35203a;
                if (unifiedInterstitialADListener6 != null) {
                    unifiedInterstitialADListener6.onADOpened();
                    break;
                }
                break;
            case 103:
                UnifiedInterstitialADListener unifiedInterstitialADListener7 = this.f35203a;
                if (unifiedInterstitialADListener7 != null) {
                    unifiedInterstitialADListener7.onADExposure();
                    break;
                }
                break;
            case 104:
                if (this.f35205c != null) {
                    String str = (String) aDEvent.getParam(String.class);
                    HashMap map = new HashMap();
                    if (str != null) {
                        map.put("transId", str);
                    }
                    String str2 = (String) aDEvent.getParam(1, String.class);
                    if (!TextUtils.isEmpty(str2)) {
                        map.put(IReward.DEV_EXT, str2);
                    }
                    this.f35205c.onReward(map);
                    break;
                }
                break;
            case 105:
                UnifiedInterstitialADListener unifiedInterstitialADListener8 = this.f35203a;
                if (unifiedInterstitialADListener8 != null) {
                    unifiedInterstitialADListener8.onADClicked();
                    break;
                }
                break;
            case 106:
                UnifiedInterstitialADListener unifiedInterstitialADListener9 = this.f35203a;
                if (unifiedInterstitialADListener9 != null) {
                    unifiedInterstitialADListener9.onADClosed();
                    break;
                }
                break;
            default:
                switch (type) {
                    case 209:
                        UnifiedInterstitialMediaListener unifiedInterstitialMediaListener5 = this.f35204b;
                        if (unifiedInterstitialMediaListener5 != null) {
                            unifiedInterstitialMediaListener5.onVideoInit();
                            break;
                        }
                        break;
                    case 210:
                        Integer num2 = (Integer) aDEvent.getParam(Integer.class);
                        UnifiedInterstitialMediaListener unifiedInterstitialMediaListener6 = this.f35204b;
                        if (unifiedInterstitialMediaListener6 != null && num2 != null) {
                            unifiedInterstitialMediaListener6.onVideoReady(num2.intValue());
                            break;
                        }
                        break;
                    case 211:
                        UnifiedInterstitialMediaListener unifiedInterstitialMediaListener7 = this.f35204b;
                        if (unifiedInterstitialMediaListener7 != null) {
                            unifiedInterstitialMediaListener7.onVideoLoading();
                            break;
                        }
                        break;
                    default:
                        switch (type) {
                            case 301:
                                UnifiedInterstitialMediaListener unifiedInterstitialMediaListener8 = this.f35204b;
                                if (unifiedInterstitialMediaListener8 != null) {
                                    unifiedInterstitialMediaListener8.onVideoPageOpen();
                                    break;
                                }
                                break;
                            case 302:
                                UnifiedInterstitialMediaListener unifiedInterstitialMediaListener9 = this.f35204b;
                                if (unifiedInterstitialMediaListener9 != null) {
                                    unifiedInterstitialMediaListener9.onVideoPageClose();
                                    break;
                                }
                                break;
                            case 303:
                                UnifiedInterstitialADListener unifiedInterstitialADListener10 = this.f35203a;
                                if (unifiedInterstitialADListener10 != null) {
                                    unifiedInterstitialADListener10.onADLeftApplication();
                                    break;
                                }
                                break;
                            case 304:
                                NegativeFeedbackListener negativeFeedbackListener = this.f35206d;
                                if (negativeFeedbackListener != null) {
                                    negativeFeedbackListener.onComplainSuccess();
                                    break;
                                }
                                break;
                        }
                }
        }
    }

    public void setAdRewardListener(com.qq.e.comm.listeners.ADRewardListener aDRewardListener) {
        this.f35205c = aDRewardListener;
    }

    public void setMediaListener(UnifiedInterstitialMediaListener unifiedInterstitialMediaListener) {
        this.f35204b = unifiedInterstitialMediaListener;
    }

    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        this.f35206d = negativeFeedbackListener;
    }
}
