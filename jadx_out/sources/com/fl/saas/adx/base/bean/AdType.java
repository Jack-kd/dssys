package com.fl.saas.adx.base.bean;

import android.content.Context;
import com.fl.saas.AbstractC1170d;
import com.fl.saas.AbstractC1173e;
import com.fl.saas.AbstractC1179g;
import com.fl.saas.AbstractC1182h;
import com.fl.saas.C1185i;
import com.fl.saas.adx.base.annotation.API;
import com.fl.saas.adx.base.base.AdapterAPI;
import com.fl.saas.adx.base.base.BaseBuilder;
import com.fl.saas.adx.base.base.builder.InnerBannerBuilder;
import com.fl.saas.adx.base.base.builder.InnerInterstitialBuilder;
import com.fl.saas.adx.base.base.builder.InnerSpreadBuilder;
import com.fl.saas.adx.base.base.builder.InnerVideoBuilder;
import com.fl.saas.adx.base.manager.AdViewBannerManager;
import com.fl.saas.adx.base.manager.AdViewInterstitialManager;
import com.fl.saas.adx.base.manager.AdViewSpreadManager;
import com.fl.saas.adx.base.manager.AdViewVideoManager;
import com.fl.saas.adx.base.manager.api.ManagerInfoAPI;
import com.fl.saas.adx.util.LogcatUtil;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public enum AdType {
    Spread(1, AbstractC1179g.class, AdViewSpreadManager.class),
    Banner(2, AbstractC1170d.class, AdViewBannerManager.class),
    Interstitial(3, AbstractC1173e.class, AdViewInterstitialManager.class),
    RewardVideo(5, AbstractC1182h.class, AdViewVideoManager.class);

    private static final Map<AdType, Constructor<? extends ManagerInfoAPI>> managerConstructors = new HashMap();
    private final Class<? extends AdapterAPI> adapterClass;
    private C1185i apiManager;
    private final Class<? extends ManagerInfoAPI> managerClass;
    private final int pos;

    AdType(int i2, Class cls, Class cls2) {
        this.adapterClass = cls;
        this.managerClass = cls2;
        this.pos = i2;
    }

    public static AdType fromPosition(int i2) {
        if (1 > i2 || i2 > values().length) {
            return null;
        }
        return values()[i2 - 1];
    }

    public static AdType getType(Class<?> cls) {
        for (AdType adType : values()) {
            if (adType.isAssignable(cls)) {
                return adType;
            }
        }
        return null;
    }

    public BaseBuilder<?> createDefaultBuilder(Context context) {
        Class cls;
        Class[] clsArr = {InnerSpreadBuilder.Default.class, InnerVideoBuilder.Default.class, InnerInterstitialBuilder.Default.class, InnerBannerBuilder.Default.class};
        int i2 = 0;
        while (true) {
            if (i2 >= 4) {
                cls = null;
                break;
            }
            cls = clsArr[i2];
            API api = (API) cls.getAnnotation(API.class);
            if (api != null && this == api.value()) {
                break;
            }
            i2++;
        }
        if (cls != null) {
            try {
                return (BaseBuilder) cls.getConstructor(Context.class).newInstance(context);
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
        return null;
    }

    public <T extends ManagerInfoAPI> T createManager() {
        try {
            Map<AdType, Constructor<? extends ManagerInfoAPI>> map = managerConstructors;
            Constructor<? extends ManagerInfoAPI> constructor = map.get(this);
            if (constructor == null) {
                constructor = this.managerClass.getConstructor(null);
                map.put(this, constructor);
            }
            return (T) constructor.newInstance(null);
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return null;
        }
    }

    public C1185i getAdapterGenerator() {
        if (this.apiManager == null) {
            this.apiManager = new C1185i(this.adapterClass);
        }
        return this.apiManager;
    }

    public int getPos() {
        return this.pos;
    }

    public boolean isAssignable(Class<?> cls) {
        return this.managerClass.isAssignableFrom(cls) || this.adapterClass.isAssignableFrom(cls);
    }
}
