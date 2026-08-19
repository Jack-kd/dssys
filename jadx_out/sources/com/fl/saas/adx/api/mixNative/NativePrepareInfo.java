package com.fl.saas.adx.api.mixNative;

import android.app.Activity;
import android.view.View;
import androidx.arch.core.util.Function;
import com.fl.saas.C1207p0;
import com.fl.saas.adx.util.LogcatUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import n0.C1733a;

/* loaded from: classes3.dex */
public class NativePrepareInfo {
    private WeakReference<Activity> activityRef;
    private View closeView;
    private boolean isSelfRenderShake;
    private final List<View> ctaViewList = new ArrayList();
    private final List<View> clickViewList = new ArrayList();
    private final List<View> imageViewList = new ArrayList();

    private synchronized void addViewList(List<View> list, View... viewArr) {
        if (viewArr == null) {
            return;
        }
        for (View view : viewArr) {
            if (view != null && !list.contains(view) && view != this.closeView) {
                list.add(view);
            }
        }
    }

    public Activity getActivity() {
        return (Activity) C1207p0.b(this.activityRef).a((Function) new C1733a()).c(null);
    }

    public List<View> getAllClickViews() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.clickViewList);
        arrayList.addAll(this.ctaViewList);
        return arrayList;
    }

    public View getCloseView() {
        return this.closeView;
    }

    public List<View> getCtaViewList() {
        return this.ctaViewList;
    }

    public boolean isSelfRenderShake() {
        return this.isSelfRenderShake;
    }

    public void setActivity(Activity activity) {
        this.activityRef = new WeakReference<>(activity);
    }

    public void setClickView(View... viewArr) {
        addViewList(this.clickViewList, viewArr);
    }

    public void setCloseView(View view) {
        this.closeView = view;
    }

    public void setCtaView(View... viewArr) {
        addViewList(this.ctaViewList, viewArr);
    }

    public void setImageView(View... viewArr) {
        if (viewArr != null) {
            try {
                if (viewArr.length == 0) {
                    return;
                }
                for (View view : viewArr) {
                    if (view != null && !this.imageViewList.contains(view)) {
                        this.imageViewList.add(view);
                    }
                }
            } catch (Throwable th) {
                LogcatUtil.debug(th);
            }
        }
    }

    public void setSelfRenderShake(boolean z2) {
        this.isSelfRenderShake = z2;
    }
}
