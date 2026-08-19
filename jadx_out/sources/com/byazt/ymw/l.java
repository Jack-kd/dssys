package com.byazt.ymw;

import android.R;
import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.view.View;
import com.byazt.rx.BaseConstants;
import com.bykv.vk.component.ttvideo.player.C;

@com.byazt.kj.hp(hp = {0, 1, 68, 34})
/* loaded from: classes3.dex */
public class l {

    public interface hp {
        void hp();

        void hp(Throwable th);
    }

    public static boolean hp(Context context, Intent intent, hp hpVar) {
        if (context != null && intent != null) {
            try {
                if (!(context instanceof Activity)) {
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                }
                context.startActivity(intent, ActivityOptions.makeCustomAnimation(context, 0, 0).toBundle());
                if (hpVar == null) {
                    return true;
                }
                hpVar.hp();
                return true;
            } catch (Throwable th) {
                if (hpVar != null) {
                    hpVar.hp(th);
                }
            }
        }
        return false;
    }

    public static void startActivity(Context context, Intent intent, boolean z2) {
        if (context == null || intent == null) {
            return;
        }
        if (z2) {
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        context.startActivity(intent);
    }

    public static boolean hp(Context context, Intent intent, hp hpVar, boolean z2) {
        if (context == null || intent == null) {
            return false;
        }
        if (z2) {
            intent.putExtra(BaseConstants.START_ONLY_FOR_ANDROID, true);
        }
        return hp(context, intent, hpVar);
    }

    public static Activity hp(View view) {
        View viewFindViewById;
        Context context;
        if (view == null) {
            return null;
        }
        Context context2 = view.getContext();
        if (context2 instanceof Activity) {
            return (Activity) context2;
        }
        View rootView = view.getRootView();
        if (rootView == null || (viewFindViewById = rootView.findViewById(R.id.content)) == null || (context = viewFindViewById.getContext()) == null) {
            return null;
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            if (baseContext instanceof Activity) {
                return (Activity) baseContext;
            }
        }
        return null;
    }
}
