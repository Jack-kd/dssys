package com.qq.e.ads.immersive;

import android.content.Context;
import android.text.TextUtils;
import com.qq.e.ads.AbstractAD;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.pi.IAFD;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.util.AdError;
import com.qq.e.comm.util.AdErrorConvertor;
import com.qq.e.comm.util.GDTLogger;
import java.util.Map;

/* loaded from: classes4.dex */
public class ImmersiveADFlow extends AbstractAD<IAFD> implements IAFD {

    /* renamed from: h, reason: collision with root package name */
    private final ImmersiveADFlowListener f35197h;

    /* renamed from: i, reason: collision with root package name */
    private final ADListenerAdapter f35198i;

    /* renamed from: j, reason: collision with root package name */
    private final Map<String, String> f35199j;

    /* renamed from: k, reason: collision with root package name */
    private VideoOption f35200k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f35201l = false;

    /* renamed from: m, reason: collision with root package name */
    private boolean f35202m = false;

    public static class ADListenerAdapter implements ADListener {
        public ImmersiveADFlowListener adListener;

        public ADListenerAdapter(ImmersiveADFlowListener immersiveADFlowListener) {
            this.adListener = immersiveADFlowListener;
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            if (this.adListener == null) {
                return;
            }
            switch (aDEvent.getType()) {
                case 100:
                    this.adListener.onADLoaded();
                    break;
                case 101:
                    AdError adError = AdErrorConvertor.getAdError(aDEvent);
                    this.adListener.onNoAD(adError);
                    if (adError.getErrorCode() == 6000) {
                        GDTLogger.e(getClass().getSimpleName() + ":未找到RecyclerView依赖或当前不支持平板设备");
                        break;
                    }
                    break;
                case 102:
                    this.adListener.onADPageShow();
                    break;
                case 103:
                    String str = (String) aDEvent.getParam(String.class);
                    this.adListener.onADExpose(str != null ? str : "");
                    break;
                case 105:
                    String str2 = (String) aDEvent.getParam(String.class);
                    this.adListener.onADClick(str2 != null ? str2 : "");
                    break;
                case 106:
                    this.adListener.onADPageDestroy();
                    break;
            }
        }
    }

    public ImmersiveADFlow(Context context, String str, ImmersiveADFlowListener immersiveADFlowListener, Map<String, String> map) {
        this.f35197h = immersiveADFlowListener;
        this.f35198i = new ADListenerAdapter(immersiveADFlowListener);
        this.f35199j = map;
        String str2 = map != null ? map.get("TOKEN") : "";
        if (TextUtils.isEmpty(str2)) {
            a(context, str);
        } else {
            a(context, str, str2);
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public IAFD a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getImmersiveADFlowDelegate(context, str, str2, str3, this.f35198i, this.f35199j);
    }

    @Override // com.qq.e.comm.pi.IAFD
    public String getOperationInfo() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            return ((IAFD) t2).getOperationInfo();
        }
        a("getOperationInfo");
        return "";
    }

    @Override // com.qq.e.comm.pi.IAFD
    public void preloadImmersiveADFlow() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((IAFD) t2).preloadImmersiveADFlow();
        } else {
            this.f35201l = true;
        }
    }

    @Override // com.qq.e.comm.pi.IAFD
    public void setVideoOption(VideoOption videoOption) {
        this.f35200k = videoOption;
        T t2 = this.f35123a;
        if (t2 == 0 || videoOption == null) {
            return;
        }
        ((IAFD) t2).setVideoOption(videoOption);
    }

    @Override // com.qq.e.comm.pi.IAFD
    public void showImmersiveADFlow() {
        T t2 = this.f35123a;
        if (t2 != 0) {
            ((IAFD) t2).showImmersiveADFlow();
        } else {
            this.f35202m = true;
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    public void a(IAFD iafd) {
        T t2;
        T t3;
        T t4;
        VideoOption videoOption = this.f35200k;
        if (videoOption != null && (t4 = this.f35123a) != 0) {
            ((IAFD) t4).setVideoOption(videoOption);
        }
        if (this.f35202m && (t3 = this.f35123a) != 0) {
            ((IAFD) t3).showImmersiveADFlow();
            this.f35202m = false;
        } else {
            if (!this.f35201l || (t2 = this.f35123a) == 0) {
                return;
            }
            ((IAFD) t2).preloadImmersiveADFlow();
            this.f35201l = false;
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    public void b(int i2) {
        ImmersiveADFlowListener immersiveADFlowListener = this.f35197h;
        if (immersiveADFlowListener != null) {
            immersiveADFlowListener.onNoAD(AdErrorConvertor.formatErrorCode(i2));
        }
    }
}
