package com.bytedance.pangle.fragment;

import android.app.Application;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.byazt.ik.a;
import com.byazt.xb.hp;
import com.byazt.xb.l;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.transform.ZeusTransformUtils;
import com.bytedance.pangle.util.MethodUtils;
import java.lang.reflect.InvocationTargetException;

@Keep
/* loaded from: classes3.dex */
public class ZeusFragmentV4 extends Fragment {
    public Application.ActivityLifecycleCallbacks callbacks = new l(this);

    public ZeusFragmentV4() {
        hp.hp(getClass());
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public Context getContext() {
        try {
            return ZeusTransformUtils.wrapperContext(super.getContext(), (String) MethodUtils.invokeStaticMethod(getClass(), "_GET_PLUGIN_PKG", new Object[0]));
        } catch (IllegalAccessException e2) {
            a.hp(e2);
            return super.getContext();
        } catch (NoSuchMethodException e3) {
            a.hp(e3);
            return super.getContext();
        } catch (InvocationTargetException e4) {
            a.hp(e4);
            return super.getContext();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Zeus.getAppApplication().registerActivityLifecycleCallbacks(this.callbacks);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        Zeus.getAppApplication().unregisterActivityLifecycleCallbacks(this.callbacks);
        super.onDetach();
    }
}
