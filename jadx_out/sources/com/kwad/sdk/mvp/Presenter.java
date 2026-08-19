package com.kwad.sdk.mvp;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.d;
import com.kwad.sdk.wrapper.m;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes4.dex */
public class Presenter {
    private Object bjo;
    private View mRootView;
    private final List<Presenter> bjn = new CopyOnWriteArrayList();
    private PresenterState bjp = PresenterState.INIT;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'INIT' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class PresenterState {
        private static final /* synthetic */ PresenterState[] $VALUES;
        public static final PresenterState BIND;
        public static final PresenterState CREATE;
        public static final PresenterState DESTROY;
        public static final PresenterState INIT;
        public static final PresenterState UNBIND;
        private int mIndex;

        static {
            int i2 = 0;
            PresenterState presenterState = new PresenterState("INIT", i2, i2) { // from class: com.kwad.sdk.mvp.Presenter.PresenterState.1
                @Override // com.kwad.sdk.mvp.Presenter.PresenterState
                public final void performCallState(Presenter presenter) {
                }
            };
            INIT = presenterState;
            int i3 = 1;
            PresenterState presenterState2 = new PresenterState("CREATE", i3, i3) { // from class: com.kwad.sdk.mvp.Presenter.PresenterState.2
                @Override // com.kwad.sdk.mvp.Presenter.PresenterState
                public final void performCallState(Presenter presenter) {
                    Iterator it = presenter.bjn.iterator();
                    while (it.hasNext()) {
                        try {
                            ((Presenter) it.next()).N(presenter.mRootView);
                        } catch (Exception e2) {
                            d.gatherException(e2);
                            c.printStackTrace(e2);
                        }
                    }
                }
            };
            CREATE = presenterState2;
            int i4 = 2;
            PresenterState presenterState3 = new PresenterState("BIND", i4, i4) { // from class: com.kwad.sdk.mvp.Presenter.PresenterState.3
                @Override // com.kwad.sdk.mvp.Presenter.PresenterState
                public final void performCallState(Presenter presenter) {
                    Iterator it = presenter.bjn.iterator();
                    while (it.hasNext()) {
                        try {
                            ((Presenter) it.next()).q(presenter.bjo);
                        } catch (Throwable th) {
                            d.gatherException(th);
                            c.printStackTrace(th);
                        }
                    }
                }
            };
            BIND = presenterState3;
            int i5 = 3;
            PresenterState presenterState4 = new PresenterState("UNBIND", i5, i5) { // from class: com.kwad.sdk.mvp.Presenter.PresenterState.4
                @Override // com.kwad.sdk.mvp.Presenter.PresenterState
                public final void performCallState(Presenter presenter) {
                    Iterator it = presenter.bjn.iterator();
                    while (it.hasNext()) {
                        try {
                            ((Presenter) it.next()).oe();
                        } catch (Exception e2) {
                            d.gatherException(e2);
                            c.printStackTrace(e2);
                        }
                    }
                }
            };
            UNBIND = presenterState4;
            int i6 = 4;
            PresenterState presenterState5 = new PresenterState("DESTROY", i6, i6) { // from class: com.kwad.sdk.mvp.Presenter.PresenterState.5
                @Override // com.kwad.sdk.mvp.Presenter.PresenterState
                public final void performCallState(Presenter presenter) {
                    Iterator it = presenter.bjn.iterator();
                    while (it.hasNext()) {
                        try {
                            ((Presenter) it.next()).destroy();
                        } catch (Exception e2) {
                            d.gatherException(e2);
                            c.printStackTrace(e2);
                        }
                    }
                }
            };
            DESTROY = presenterState5;
            $VALUES = new PresenterState[]{presenterState, presenterState2, presenterState3, presenterState4, presenterState5};
        }

        public static PresenterState valueOf(String str) {
            return (PresenterState) Enum.valueOf(PresenterState.class, str);
        }

        public static PresenterState[] values() {
            return (PresenterState[]) $VALUES.clone();
        }

        public int index() {
            return this.mIndex;
        }

        public abstract void performCallState(Presenter presenter);

        private PresenterState(String str, int i2, int i3) {
            this.mIndex = i3;
        }
    }

    private boolean Sz() {
        return this.bjp.index() >= PresenterState.CREATE.index();
    }

    private void b(Presenter presenter) {
        Object obj;
        View view;
        int iIndex = this.bjp.index();
        PresenterState presenterState = PresenterState.UNBIND;
        if (iIndex >= presenterState.index() || presenter.bjp.index() >= presenterState.index()) {
            return;
        }
        if (Sz() && !presenter.Sz() && (view = this.mRootView) != null) {
            presenter.N(view);
        }
        if (!isBound() || !presenter.Sz() || presenter.isBound() || (obj = this.bjo) == null) {
            return;
        }
        presenter.q(obj);
    }

    private boolean isBound() {
        return this.bjp == PresenterState.BIND;
    }

    @UiThread
    public final void N(View view) {
        try {
            this.bjp = PresenterState.CREATE;
            this.mRootView = view;
            onCreate();
            this.bjp.performCallState(this);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public final List<Presenter> SA() {
        return this.bjn;
    }

    public final Object SB() {
        return this.bjo;
    }

    public final void a(Presenter presenter) {
        this.bjn.add(presenter);
        if (!Sz() || presenter.Sz()) {
            return;
        }
        N(this.mRootView);
    }

    public void ay() {
    }

    @UiThread
    public final void destroy() {
        try {
            if (this.bjp == PresenterState.BIND) {
                oe();
            }
            this.bjp = PresenterState.DESTROY;
            onDestroy();
            this.bjp.performCallState(this);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public final <T extends View> T findViewById(int i2) {
        return (T) this.mRootView.findViewById(i2);
    }

    @Nullable
    @UiThread
    public final Activity getActivity() {
        return m.getActivityFromContext(getContext());
    }

    @NonNull
    public final Context getContext() {
        return this.mRootView.getContext();
    }

    public final View getRootView() {
        return this.mRootView;
    }

    @UiThread
    public final void oe() {
        try {
            this.bjp = PresenterState.UNBIND;
            onUnbind();
            this.bjp.performCallState(this);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public void onCreate() {
    }

    public void onDestroy() {
    }

    public void onUnbind() {
    }

    @UiThread
    public final void q(@NonNull Object obj) {
        try {
            PresenterState presenterState = this.bjp;
            PresenterState presenterState2 = PresenterState.INIT;
            PresenterState presenterState3 = PresenterState.BIND;
            if (presenterState == presenterState3) {
                oe();
            }
            this.bjp = presenterState3;
            this.bjo = obj;
            ay();
            this.bjp.performCallState(this);
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
        }
    }

    public final void a(Presenter presenter, boolean z2) {
        this.bjn.add(presenter);
        try {
            b(presenter);
        } catch (Throwable th) {
            d.gatherException(th);
            c.printStackTrace(th);
        }
    }
}
