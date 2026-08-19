package com.meishu.sdk.platform.custom.recycler;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.meishu.sdk.core.ad.a;
import com.meishu.sdk.core.ad.recycler.DownloadStatusListener;
import com.meishu.sdk.core.ad.recycler.ExpressMediaListener;
import com.meishu.sdk.core.ad.recycler.RecyclerAdData;
import com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener;
import com.meishu.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.meishu.sdk.core.ad.recycler.d;
import com.meishu.sdk.core.domain.MeishuAdInfo;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.view.TouchAdContainer;
import com.meishu.sdk.core.view.TouchPositionListener;
import com.meishu.sdk.platform.ms.recycler.MsCustomVideo;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public abstract class MsCustomRecyclerFeedAd extends a implements RecyclerAdData {
    private MsCustomRecyclerAdapter adWrapper;
    private boolean hasExposed;
    private final Class<? extends ViewGroup> initAdContainer;
    private RecylcerAdInteractionListener recylcerAdInteractionListener;

    public MsCustomRecyclerFeedAd(MsCustomRecyclerAdapter msCustomRecyclerAdapter) {
        this(msCustomRecyclerAdapter, null);
    }

    private ViewGroup getInitAdContainer(Class<?> cls, Context context) throws NoSuchMethodException, SecurityException {
        if (cls == null) {
            return null;
        }
        try {
            Constructor<?> constructor = cls.getConstructor(Context.class);
            constructor.setAccessible(true);
            return (ViewGroup) constructor.newInstance(context);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public abstract void bindAdToView(Context context, ViewGroup viewGroup, List<View> list);

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void bindAdToView(Context context, ViewGroup viewGroup, List<View> list, RecylcerAdInteractionListener recylcerAdInteractionListener) throws NoSuchMethodException, SecurityException {
        MsCustomRecyclerAdapter msCustomRecyclerAdapter = this.adWrapper;
        if (msCustomRecyclerAdapter != null && msCustomRecyclerAdapter.getSdkAdInfo() != null) {
            p1.b(this.adWrapper.getSdkAdInfo().getEventUrl());
        }
        this.recylcerAdInteractionListener = recylcerAdInteractionListener;
        ViewGroup[] viewGroupArrA = d.a(viewGroup, getClass(), TouchAdContainer.class);
        ViewGroup viewGroup2 = viewGroupArrA[1];
        ViewGroup viewGroup3 = null;
        if (viewGroup2 == null) {
            viewGroup2 = viewGroupArrA[0];
            ViewGroup viewGroup4 = (ViewGroup) viewGroup2.getParent();
            if (viewGroup4 != null) {
                int iIndexOfChild = viewGroup4.indexOfChild(viewGroup2);
                ViewGroup.LayoutParams layoutParams = viewGroup2.getLayoutParams();
                viewGroup4.removeView(viewGroup2);
                TouchAdContainer touchAdContainer = new TouchAdContainer(viewGroup2.getContext());
                touchAdContainer.setTouchPositionListener(new TouchPositionListener(this));
                ViewGroup initAdContainer = getInitAdContainer(this.initAdContainer, viewGroup2.getContext());
                if (initAdContainer == null) {
                    touchAdContainer.addView(viewGroup2, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    touchAdContainer.addView(initAdContainer, new ViewGroup.LayoutParams(-1, -1));
                    initAdContainer.addView(viewGroup2, new ViewGroup.LayoutParams(-1, -1));
                }
                touchAdContainer.setId(viewGroup2.getId());
                viewGroup4.addView(touchAdContainer, iIndexOfChild, layoutParams);
                viewGroup2 = touchAdContainer;
                viewGroup3 = initAdContainer;
            }
        } else {
            if (viewGroup2 instanceof TouchAdContainer) {
                ((TouchAdContainer) viewGroup2).setTouchPositionListener(new TouchPositionListener(this));
            }
            try {
                Class<? extends ViewGroup> cls = this.initAdContainer;
                if (cls != null && cls.isAssignableFrom(viewGroup2.getChildAt(0).getClass())) {
                    viewGroup3 = (ViewGroup) viewGroup2.getChildAt(0);
                }
            } catch (Exception unused) {
            }
        }
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(viewGroup2);
        if (viewGroup3 != null) {
            arrayList.add(viewGroup3);
        }
        if (viewGroup3 != null) {
            viewGroup2 = viewGroup3;
        }
        bindAdToView(context, viewGroup2, arrayList);
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void bindMediaView(ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, int i2, int i3, RecyclerAdMediaListener recyclerAdMediaListener) {
    }

    public MsCustomRecyclerAdapter getAdWraper() {
        return this.adWrapper;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppIntro() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppIntroUrl() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public List<MeishuAdInfo.PermissionBean> getAppPermissionList() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppPremissionUrl() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppSize() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getAppVersion() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public MsCustomVideo getCustomVideo() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getDeveloper() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public View getMediaView() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPlatFormEcpm() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPlatform() {
        return null;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getPrivacyAgreement() {
        return null;
    }

    public RecylcerAdInteractionListener getRecylcerAdInteractionListener() {
        return this.recylcerAdInteractionListener;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public String getVideoCover() {
        return "";
    }

    public boolean isHasExposed() {
        return this.hasExposed;
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void setDownloadStatusListener(DownloadStatusListener downloadStatusListener) {
    }

    @Override // com.meishu.sdk.core.ad.recycler.RecyclerAdData
    public void setExpressMediaListener(ExpressMediaListener expressMediaListener) {
    }

    public void setHasExposed(boolean z2) {
        this.hasExposed = z2;
    }

    public MsCustomRecyclerFeedAd(MsCustomRecyclerAdapter msCustomRecyclerAdapter, Class<? extends ViewGroup> cls) {
        this(msCustomRecyclerAdapter, cls, "CUSTOM");
    }

    public MsCustomRecyclerFeedAd(MsCustomRecyclerAdapter msCustomRecyclerAdapter, Class<? extends ViewGroup> cls, String str) {
        super(msCustomRecyclerAdapter, str);
        this.adWrapper = msCustomRecyclerAdapter;
        this.initAdContainer = cls;
    }
}
