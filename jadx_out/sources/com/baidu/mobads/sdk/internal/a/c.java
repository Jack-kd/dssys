package com.baidu.mobads.sdk.internal.a;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.IOAdEvent;
import com.baidu.mobads.sdk.api.IOAdEventListener;
import com.baidu.mobads.sdk.internal.bv;
import com.baidu.mobads.sdk.internal.concrete.FragmentDelegate;
import com.baidu.mobads.sdk.internal.concrete.FragmentV4Delegate;
import com.baidu.mobads.sdk.internal.concrete.RLRecyclerViewDelegate;
import com.baidu.mobads.sdk.internal.concrete.RVAdapterDelegate;
import com.baidu.mobads.sdk.internal.concrete.RVViewHolderDelegate;
import com.baidu.mobads.sdk.internal.concrete.ViewCompatDelegate;
import com.baidu.mobads.sdk.internal.concrete.ViewPager2Delegate;
import com.baidu.mobads.sdk.internal.widget.ViewPager2;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class c implements com.baidu.mobads.sdk.internal.a.a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f10929a = "ViewPager2";

    /* renamed from: b, reason: collision with root package name */
    public static final String f10930b = "RVAdapter";

    /* renamed from: c, reason: collision with root package name */
    public static final String f10931c = "RVViewHolder";

    /* renamed from: d, reason: collision with root package name */
    public static final String f10932d = "ViewCompat";

    /* renamed from: e, reason: collision with root package name */
    public static final String f10933e = "Fragment";

    /* renamed from: f, reason: collision with root package name */
    public static final String f10934f = "FragmentV4";

    /* renamed from: g, reason: collision with root package name */
    public static final String f10935g = "RLRecyclerView";

    /* renamed from: h, reason: collision with root package name */
    public static final String f10936h = "p_e";

    /* renamed from: i, reason: collision with root package name */
    private static final String f10937i = "p_init";

    /* renamed from: j, reason: collision with root package name */
    private static final String f10938j = "p_set_class";

    /* renamed from: k, reason: collision with root package name */
    private static final String f10939k = "e_t";

    /* renamed from: l, reason: collision with root package name */
    private static final String f10940l = "e_n";

    /* renamed from: m, reason: collision with root package name */
    private static final String f10941m = "e_a";

    /* renamed from: n, reason: collision with root package name */
    private static final String f10942n = "e_r";

    /* renamed from: o, reason: collision with root package name */
    private static final String f10943o = "e_d";

    /* renamed from: p, reason: collision with root package name */
    private final IAdInterListener f10944p;

    public static class a implements IOAdEventListener {
        private com.baidu.mobads.sdk.internal.a.a a(String str, @NonNull IAdInterListener iAdInterListener, Object[] objArr) {
            if (c.f10929a.equals(str) && c.a(objArr, (Class<?>[]) new Class[]{Context.class})) {
                return new ViewPager2Delegate(iAdInterListener, (Context) objArr[0]);
            }
            if (c.f10930b.equals(str)) {
                return new RVAdapterDelegate(iAdInterListener);
            }
            if (c.f10931c.equals(str) && c.a(objArr, (Class<?>[]) new Class[]{View.class})) {
                return new RVViewHolderDelegate(iAdInterListener, (View) objArr[0]);
            }
            if (c.f10932d.equals(str)) {
                return new ViewCompatDelegate(iAdInterListener);
            }
            if (c.f10933e.equals(str)) {
                return new FragmentDelegate().setDispatcher(iAdInterListener);
            }
            if (c.f10934f.equals(str)) {
                return new FragmentV4Delegate().setDispatcher(iAdInterListener);
            }
            if (c.f10935g.equals(str)) {
                return new RLRecyclerViewDelegate(iAdInterListener, objArr);
            }
            return null;
        }

        @Override // com.baidu.mobads.sdk.api.IOAdEventListener
        public void run(IOAdEvent iOAdEvent) {
            Map<String, Object> data;
            com.baidu.mobads.sdk.internal.a.a aVarA;
            if (iOAdEvent != null) {
                try {
                    if (c.f10936h.equals(iOAdEvent.getType()) && (data = iOAdEvent.getData()) != null && !data.isEmpty()) {
                        Object obj = data.get(c.f10939k);
                        Object obj2 = data.get(c.f10940l);
                        Object obj3 = data.get(c.f10941m);
                        Object[] objArr = obj3 instanceof Object[] ? (Object[]) obj3 : null;
                        if ((obj2 instanceof String) && (obj instanceof String)) {
                            if (c.f10937i.equals((String) obj2)) {
                                Object obj4 = data.get(c.f10943o);
                                if (!(obj4 instanceof IAdInterListener) || (aVarA = a((String) obj, (IAdInterListener) obj4, objArr)) == null) {
                                    return;
                                }
                                data.put(c.f10942n, aVarA);
                                return;
                            }
                            if (c.f10938j.equals((String) obj2) && (obj3 instanceof Map)) {
                                Map map = (Map) obj3;
                                map.put(c.f10929a, ViewPager2.class);
                                map.put(c.f10930b, RecyclerView.Adapter.class);
                                map.put(c.f10931c, RecyclerView.ViewHolder.class);
                            }
                        }
                    }
                } catch (Throwable th) {
                    bv.a().b(th.getMessage());
                }
            }
        }
    }

    private c(@NonNull IAdInterListener iAdInterListener, @NonNull com.baidu.mobads.sdk.internal.a.a aVar) {
        this.f10944p = iAdInterListener;
        iAdInterListener.addEventListener(f10936h, new d(this, aVar));
    }

    public static c a(@NonNull IAdInterListener iAdInterListener, @NonNull com.baidu.mobads.sdk.internal.a.a aVar) {
        return new c(iAdInterListener, aVar);
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public int getCode() {
        return 0;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public Map<String, Object> getData() {
        return null;
    }

    @Override // com.baidu.mobads.sdk.internal.a.a
    @NonNull
    public IAdInterListener getDelegator() {
        return this.f10944p;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public String getMessage() {
        return null;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public Object getTarget() {
        return this.f10944p;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public String getType() {
        return null;
    }

    @Override // com.baidu.mobads.sdk.internal.a.a
    public final Object handleEvent(String str, String str2, Object[] objArr) {
        return null;
    }

    @Override // com.baidu.mobads.sdk.api.IOAdEvent
    public void setTarget(Object obj) {
    }

    public final void a(String str) {
        this.f10944p.onAdTaskProcess(str);
    }

    public final Object a(String str, Object... objArr) {
        HashMap map = new HashMap();
        map.put(f10941m, objArr);
        this.f10944p.onAdTaskProcess(str, map);
        return map.get(f10942n);
    }

    public static boolean a(Object[] objArr, Class<?>... clsArr) {
        boolean z2 = objArr == null || objArr.length == 0;
        boolean z3 = clsArr == null || clsArr.length == 0;
        if (z2 && z3) {
            return true;
        }
        if (z2 || z3 || clsArr == null || objArr == null || clsArr.length != objArr.length) {
            return false;
        }
        for (int i2 = 0; i2 < clsArr.length; i2++) {
            if (!clsArr[i2].isInstance(objArr[i2])) {
                return false;
            }
        }
        return true;
    }
}
