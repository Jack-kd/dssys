package com.bytedance.pangle.fragment;

import android.annotation.SuppressLint;
import android.app.Application;
import android.app.Fragment;
import android.content.Context;
import androidx.annotation.Keep;
import com.byazt.xb.jx;
import com.bytedance.pangle.Zeus;

@Keep
@SuppressLint({"NewApi"})
/* loaded from: classes3.dex */
public class ReportBaseFragment extends Fragment {
    public Application.ActivityLifecycleCallbacks callbacks = new jx(this);

    @Override // android.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Zeus.getAppApplication().registerActivityLifecycleCallbacks(this.callbacks);
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        Zeus.getAppApplication().unregisterActivityLifecycleCallbacks(this.callbacks);
    }
}
