package com.baidu.mobads.sdk.internal.concrete;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.internal.a.a;
import com.baidu.mobads.sdk.internal.a.c;
import com.baidu.mobads.sdk.internal.widget.ViewPager2;
import java.util.Map;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public class ViewPager2Delegate extends ViewPager2 implements a {

    /* renamed from: m, reason: collision with root package name */
    private static final String f11377m = "getScrollState";

    /* renamed from: n, reason: collision with root package name */
    private static final String f11378n = "getCurrentItem";

    /* renamed from: o, reason: collision with root package name */
    private static final String f11379o = "setCurrentItem";

    /* renamed from: p, reason: collision with root package name */
    private static final String f11380p = "setOrientation";

    /* renamed from: q, reason: collision with root package name */
    private static final String f11381q = "setAdapter";

    /* renamed from: r, reason: collision with root package name */
    private static final String f11382r = "setOffscreenPageLimit";

    /* renamed from: s, reason: collision with root package name */
    private static final String f11383s = "setUserInputEnabled";

    /* renamed from: t, reason: collision with root package name */
    private final c f11384t;

    public ViewPager2Delegate(IAdInterListener iAdInterListener, Context context) {
        super(context);
        this.f11384t = c.a(iAdInterListener, this);
        setOnOverScrollListener(new ViewPager2.OnOverScrollListener() { // from class: com.baidu.mobads.sdk.internal.concrete.ViewPager2Delegate.1
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnOverScrollListener
            public void onOverScrollEnd() {
                ViewPager2Delegate.this.f11384t.a("onOverScrollEnd");
            }

            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnOverScrollListener
            public void onOverScrollStart() {
                ViewPager2Delegate.this.f11384t.a("onOverScrollStart");
            }
        });
        registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.baidu.mobads.sdk.internal.concrete.ViewPager2Delegate.2
            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrollStateChanged(int i2) {
                ViewPager2Delegate.this.f11384t.a("onPageScrollStateChanged", Integer.valueOf(i2));
            }

            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrolled(int i2, float f2, int i3) {
                ViewPager2Delegate.this.f11384t.a("onPageScrolled", Integer.valueOf(i2), Float.valueOf(f2), Integer.valueOf(i3));
            }

            @Override // com.baidu.mobads.sdk.internal.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i2) {
                ViewPager2Delegate.this.f11384t.a("onPageSelected", Integer.valueOf(i2));
            }
        });
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public int getCode() {
        return this.f11384t.getCode();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public Map<String, Object> getData() {
        return this.f11384t.getData();
    }

    @Override // com.baidu.mobads.sdk.internal.a.a
    @NonNull
    public IAdInterListener getDelegator() {
        return this.f11384t.getDelegator();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public String getMessage() {
        return this.f11384t.getMessage();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public Object getTarget() {
        return this.f11384t.getTarget();
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public String getType() {
        return this.f11384t.getType();
    }

    @Override // com.baidu.mobads.sdk.internal.a.a
    public Object handleEvent(String str, String str2, Object[] objArr) {
        if (f11377m.equals(str2)) {
            return Integer.valueOf(getScrollState());
        }
        if (f11378n.equals(str2)) {
            return Integer.valueOf(getCurrentItem());
        }
        if (f11379o.equals(str2) && c.a(objArr, (Class<?>[]) new Class[]{Integer.class})) {
            setCurrentItem(((Integer) objArr[0]).intValue());
            return null;
        }
        if (f11380p.equals(str2) && c.a(objArr, (Class<?>[]) new Class[]{Integer.class})) {
            setOrientation(((Integer) objArr[0]).intValue());
            return null;
        }
        if (f11381q.equals(str2) && c.a(objArr, (Class<?>[]) new Class[]{RecyclerView.Adapter.class})) {
            setAdapter((RecyclerView.Adapter) objArr[0]);
            return null;
        }
        if (f11382r.equals(str2) && c.a(objArr, (Class<?>[]) new Class[]{Integer.class})) {
            setOffscreenPageLimit(((Integer) objArr[0]).intValue());
            return null;
        }
        if (!f11383s.equals(str2) || !c.a(objArr, (Class<?>[]) new Class[]{Boolean.class})) {
            return null;
        }
        setUserInputEnabled(((Boolean) objArr[0]).booleanValue());
        return null;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public void setTarget(Object obj) {
        this.f11384t.setTarget(obj);
    }
}
